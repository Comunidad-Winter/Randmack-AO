VERSION 5.00
Begin VB.Form frmVerConsultas 
   BorderStyle     =   5  'Sizable ToolWindow
   Caption         =   "Gestor de Consultas by GALLE"
   ClientHeight    =   8520
   ClientLeft      =   60
   ClientTop       =   330
   ClientWidth     =   7710
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8520
   ScaleWidth      =   7710
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text2 
      Height          =   615
      Left            =   4920
      TabIndex        =   11
      Top             =   5760
      Width           =   1695
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Enviar MP"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   6720
      TabIndex        =   10
      Top             =   5760
      Width           =   615
   End
   Begin VB.TextBox Text1 
      Height          =   1815
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   9
      Top             =   6600
      Width           =   7455
   End
   Begin VB.ListBox List1 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2985
      Left            =   720
      TabIndex        =   0
      Top             =   3240
      Width           =   3615
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Borrar todas las Consultas"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   4920
      TabIndex        =   4
      Top             =   4920
      Width           =   2415
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Sum Usuario"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   4920
      TabIndex        =   3
      Top             =   4080
      Width           =   2415
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Ir al Usuario"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   4920
      TabIndex        =   2
      Top             =   3240
      Width           =   2415
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      Caption         =   "Recuerda que el maltrato a los Usuarios esta PENADO."
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   0
      TabIndex        =   8
      Top             =   1800
      Width           =   7815
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Caption         =   "Lee las consultas y si es necesario atiende al usuario que la envio."
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   0
      TabIndex        =   7
      Top             =   1440
      Width           =   7815
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Caption         =   "Bienvenido al Gestor de Consultas de GatheringAO."
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   6
      Top             =   1080
      Width           =   7575
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Consultas de los Usuarios"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   1200
      TabIndex        =   5
      Top             =   2880
      Width           =   2460
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Gestor de Consultas de GatheringAO"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   600
      TabIndex        =   1
      Top             =   360
      Width           =   6495
   End
End
Attribute VB_Name = "frmVerConsultas"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Call SendData("/IRA " & List1.Text)
End Sub
Private Sub Command2_Click()
Call SendData("/SUM " & List1.Text)
End Sub

Private Sub Command3_Click()
Call SendData("/MP@" & List1.Text & "@" & Text2.Text)
End Sub

Private Sub Command4_Click()
If List1.ListIndex < 0 Then Exit Sub
Call SendData("DECON" & List1.ListIndex & Chr(44) & List1.Text)
List1.RemoveItem All
End Sub

Private Sub list1_Click()
If List1.ListIndex < 0 Then Exit Sub
Call SendData("VERCO" & List1.ListIndex)
End Sub
