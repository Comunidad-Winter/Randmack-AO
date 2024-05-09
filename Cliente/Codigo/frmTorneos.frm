VERSION 5.00
Begin VB.Form frmTorneos 
   BorderStyle     =   5  'Sizable ToolWindow
   Caption         =   "Organizador de Torneos GAO"
   ClientHeight    =   5655
   ClientLeft      =   60
   ClientTop       =   330
   ClientWidth     =   5895
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5655
   ScaleWidth      =   5895
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame5 
      Caption         =   "Anuncios"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1695
      Left            =   120
      TabIndex        =   15
      Top             =   3840
      Width           =   5655
      Begin VB.CommandButton Command9 
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
         Height          =   375
         Left            =   4680
         TabIndex        =   26
         Top             =   240
         Width           =   855
      End
      Begin VB.CommandButton Command8 
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
         Height          =   375
         Left            =   3360
         TabIndex        =   25
         Top             =   720
         Width           =   855
      End
      Begin VB.CommandButton Command7 
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
         Height          =   375
         Left            =   3360
         TabIndex        =   24
         Top             =   1200
         Width           =   855
      End
      Begin VB.TextBox Text5 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2040
         TabIndex        =   21
         Top             =   1200
         Width           =   1095
      End
      Begin VB.TextBox Text4 
         Height          =   375
         Left            =   2040
         TabIndex        =   19
         Top             =   720
         Width           =   1095
      End
      Begin VB.TextBox Text3 
         Height          =   375
         Left            =   3480
         TabIndex        =   17
         Top             =   240
         Width           =   1095
      End
      Begin VB.TextBox Text2 
         Height          =   375
         Left            =   2040
         TabIndex        =   16
         Top             =   240
         Width           =   1095
      End
      Begin VB.Label Label4 
         Caption         =   "-"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   15.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   3240
         TabIndex        =   23
         Top             =   240
         Width           =   255
      End
      Begin VB.Label Label3 
         Caption         =   "Ganador del Torneo:"
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
         TabIndex        =   22
         Top             =   1275
         Width           =   1935
      End
      Begin VB.Label Label2 
         Caption         =   "Ganador de la Ronda:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   20
         Top             =   795
         Width           =   1935
      End
      Begin VB.Label Label1 
         Caption         =   "Anuncios de Batallas:"
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
         TabIndex        =   18
         Top             =   320
         Width           =   1815
      End
   End
   Begin VB.CommandButton Command6 
      Caption         =   "Salir"
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
      Left            =   4320
      TabIndex        =   13
      Top             =   3120
      Width           =   1455
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Abrir/Cerrar Inscripciones"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1800
      TabIndex        =   12
      Top             =   3120
      Width           =   2415
   End
   Begin VB.CommandButton Command4 
      Caption         =   "/IRA"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4320
      TabIndex        =   11
      Top             =   2400
      Width           =   1455
   End
   Begin VB.CommandButton Command3 
      Caption         =   "/SUM"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4320
      TabIndex        =   10
      Top             =   1680
      Width           =   1455
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Mandar a Sala de Espera"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4320
      TabIndex        =   9
      Top             =   960
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Mandar a Ulla"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4320
      TabIndex        =   8
      Top             =   240
      Width           =   1455
   End
   Begin VB.Frame Frame4 
      Caption         =   "Participantes"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2775
      Left            =   1800
      TabIndex        =   6
      Top             =   120
      Width           =   2415
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
         Height          =   2400
         Left            =   120
         TabIndex        =   7
         Top             =   240
         Width           =   2175
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "Nro de Jugadores"
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
      Left            =   120
      TabIndex        =   4
      Top             =   3120
      Width           =   1575
      Begin VB.TextBox Text1 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   960
         TabIndex        =   5
         Text            =   "0"
         Top             =   240
         Width           =   375
      End
      Begin VB.Label Label5 
         Caption         =   "Max. 16"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   27
         Top             =   280
         Width           =   615
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Clases Permitidas"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1695
      Left            =   120
      TabIndex        =   3
      Top             =   1320
      Width           =   1575
      Begin VB.ListBox List2 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1230
         Left            =   120
         TabIndex        =   14
         Top             =   240
         Width           =   1335
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Tipo de Torneo"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   1575
      Begin VB.OptionButton Option2 
         Caption         =   "2vs2"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   2
         Top             =   600
         Width           =   1215
      End
      Begin VB.OptionButton Option1 
         Caption         =   "1vs1"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   1335
      End
   End
End
Attribute VB_Name = "frmTorneos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Call SendData("/TELEP " & List1.Text & " 1 50 50")
End Sub
Private Sub Command2_Click()
Call SendData("/TELEP " & List1.Text & " 191 50 50")
End Sub
Private Sub Command3_Click()
Call SendData("/SUM " & List1.Text)
End Sub
Private Sub Command4_Click()
Call SendData("/IRA " & List1.Text)
End Sub
Private Sub command5_Click()
If Option1.value = False And Option2.value = False Then
   MsgBox ("Elige el tipo de Torneo")
   Exit Sub
End If
If List2.Text = "" And Option1.value = True Then
MsgBox ("Elige las clases permitidas")
Exit Sub
End If
If Option1.value = True Then
   Call SendData("/TORNEO1 " & Text1.Text & Chr(176) & List2.ListIndex & Chr(176) & List2.Text)
End If
If Option2.value = True Then
   Call SendData("/TORNEO2 " & Text1.Text)
End If
End Sub
Private Sub Command6_Click()
Unload Me
frmMain.SetFocus
End Sub

Private Sub Command7_Click()
Call SendData("/RMSG Torneo > Ganador/es del Torneo: " & Text5.Text)
End Sub

Private Sub Command8_Click()
Call SendData("/RMSG Torneo > Ganador/es de la Batalla: " & Text4.Text)
End Sub

Private Sub Command9_Click()
Call SendData("/RMSG Batalla > " & Text2.Text & " vs " & Text3.Text)
End Sub

Private Sub Form_Load()

List2.AddItem "Todas"
List2.AddItem "Paladines"
List2.AddItem "SemiMagicas"
List2.AddItem "Plantes"
List2.AddItem "Magos"
Call SendData("PARTT")
End Sub
Private Sub Option1_Click()
List2.Enabled = True
End Sub
Private Sub Option2_Click()
List2.Enabled = False
End Sub
