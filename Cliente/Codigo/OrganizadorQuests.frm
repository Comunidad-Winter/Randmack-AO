VERSION 5.00
Begin VB.Form frmOrganizadorQuests 
   BorderStyle     =   5  'Sizable ToolWindow
   Caption         =   "Organizador de Quests GAO"
   ClientHeight    =   4680
   ClientLeft      =   60
   ClientTop       =   330
   ClientWidth     =   5910
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4680
   ScaleWidth      =   5910
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command11 
      Caption         =   "Muerte a Lord Thek"
      Height          =   495
      Left            =   120
      TabIndex        =   15
      Top             =   3120
      Width           =   1455
   End
   Begin VB.CommandButton Command13 
      Caption         =   "Cerrar Quest"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2160
      TabIndex        =   14
      Top             =   3120
      Width           =   1575
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Enviar"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3120
      TabIndex        =   13
      Top             =   3960
      Width           =   735
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   1800
      TabIndex        =   11
      Top             =   3960
      Width           =   1215
   End
   Begin VB.CommandButton Command12 
      Caption         =   "Salir"
      Height          =   615
      Left            =   4080
      TabIndex        =   10
      Top             =   3840
      Width           =   1695
   End
   Begin VB.CommandButton Command10 
      Caption         =   "Cazeria"
      Height          =   495
      Left            =   120
      TabIndex        =   9
      Top             =   2400
      Width           =   1455
   End
   Begin VB.CommandButton Command9 
      Caption         =   "Sumonear a todos"
      Height          =   495
      Left            =   4320
      TabIndex        =   8
      Top             =   3120
      Width           =   1455
   End
   Begin VB.CommandButton Command8 
      Caption         =   "Mandar a todos a Ulla"
      Height          =   495
      Left            =   4320
      TabIndex        =   7
      Top             =   2400
      Width           =   1455
   End
   Begin VB.CommandButton Command7 
      Caption         =   "Mandar a Ulla"
      Height          =   495
      Left            =   4320
      TabIndex        =   6
      Top             =   1680
      Width           =   1455
   End
   Begin VB.CommandButton Command6 
      Caption         =   "/IRA"
      Height          =   495
      Left            =   4320
      TabIndex        =   5
      Top             =   960
      Width           =   1455
   End
   Begin VB.CommandButton Command5 
      Caption         =   "/SUM"
      Height          =   495
      Left            =   4320
      TabIndex        =   4
      Top             =   240
      Width           =   1455
   End
   Begin VB.ListBox List1 
      Height          =   2790
      Left            =   1800
      TabIndex        =   3
      Top             =   240
      Width           =   2295
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Laberinto"
      Height          =   495
      Left            =   120
      TabIndex        =   2
      Top             =   1680
      Width           =   1455
   End
   Begin VB.CommandButton Command2 
      Caption         =   "DeathMatch"
      Height          =   495
      Left            =   120
      TabIndex        =   1
      Top             =   960
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Corre que te Cojo"
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   1455
   End
   Begin VB.Label Label1 
      Caption         =   "Anunciar Ganador"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   12
      Top             =   3960
      Width           =   1575
   End
End
Attribute VB_Name = "frmOrganizadorQuests"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Call SendData("/ACQUEST CORREQUETECOJO")
End Sub

Private Sub Command10_Click()
Call SendData("/ACQUEST CAZERIA")
End Sub

Private Sub Command11_Click()
Call SendData("/ACQUEST MUERTE")
End Sub

Private Sub Command12_Click()
Unload Me
End Sub

Private Sub Command13_Click()
Call SendData("/CQUEST")
End Sub

Private Sub Command2_Click()
Call SendData("/ACQUEST DEATHMATCH")
End Sub

Private Sub Command3_Click()
Call SendData("/ACQUEST LABERINTO")
End Sub

Private Sub Command4_Click()
Call SendData("/RMSG Ganador de la Quest: " & Text1.Text)
End Sub

Private Sub command5_Click()
Call SendData("/SUM " & List1.Text)
End Sub

Private Sub Command6_Click()
Call SendData("/IRA " & List1.Text)
End Sub

Private Sub Command7_Click()
Call SendData("/VAULLA " & List1.Text)
End Sub

Private Sub Command8_Click()
Call SendData("/ULLAALL")
End Sub

Private Sub Command9_Click()
Call SendData("/SUMALL")
End Sub

Private Sub Form_Load()
Call SendData("QUEST")
End Sub
