VERSION 5.00
Begin VB.Form frmCrearAccount 
   BorderStyle     =   0  'None
   Caption         =   "Crear Cuenta"
   ClientHeight    =   4815
   ClientLeft      =   0
   ClientTop       =   60
   ClientWidth     =   6750
   ControlBox      =   0   'False
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4815
   ScaleWidth      =   6750
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox Mail 
      Appearance      =   0  'Flat
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   3720
      TabIndex        =   3
      Top             =   2850
      Width           =   2480
   End
   Begin VB.TextBox RePass 
      Appearance      =   0  'Flat
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   3720
      PasswordChar    =   "*"
      TabIndex        =   2
      Top             =   2190
      Width           =   2480
   End
   Begin VB.TextBox Pass 
      Appearance      =   0  'Flat
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   3720
      PasswordChar    =   "*"
      TabIndex        =   1
      Top             =   1470
      Width           =   2480
   End
   Begin VB.TextBox Nombre 
      Appearance      =   0  'Flat
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   3720
      MaxLength       =   25
      TabIndex        =   0
      Top             =   750
      Width           =   2480
   End
   Begin VB.Image Image2 
      Height          =   735
      Left            =   4080
      MouseIcon       =   "frmCrearCuenta.frx":0000
      MousePointer    =   99  'Custom
      Top             =   3840
      Width           =   2415
   End
   Begin VB.Image Image1 
      Height          =   735
      Left            =   240
      MouseIcon       =   "frmCrearCuenta.frx":030A
      MousePointer    =   99  'Custom
      Top             =   3840
      Width           =   2295
   End
End
Attribute VB_Name = "frmCrearAccount"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Command1_Click()

End Sub

Private Sub Form_Load()

Me.Picture = LoadPicture(DirGraficos & "CrearAccount.jpg")
End Sub

Private Sub Image1_Click()
Unload Me
End Sub

Private Sub Image2_Click()
If Pass <> RePass Then
    MsgBox "Lass passwords que tipeo no coinciden", , "MD5 Changed Info Tip"
    Exit Sub
End If

If Not CheckMailString(Mail) Then
    MsgBox "Direccion de mail invalida."
    Exit Sub
End If

If Nombre = "" Or Pass = "" Or RePass = "" Or Mail = "" Then
    MsgBox "Completa todo!"
    Exit Sub
End If

Pass = MD5String(Pass.Text)

Call SendData("NACCNT" & Nombre & "," & Pass & "," & Mail)

Unload Me
End Sub

Private Sub Mail_GotFocus()
MsgBox "Deberas ingresar tu MAIL correcto, de lo contrario, no tendras respuesta de los Game Master en tus Soportes"
End Sub

