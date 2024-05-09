VERSION 5.00
Begin VB.Form frmConsultas 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Sistema de Consultas GAO"
   ClientHeight    =   5475
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   6915
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5475
   ScaleWidth      =   6915
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   3240
      TabIndex        =   5
      Text            =   " "
      Top             =   1320
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Cancelar"
      Height          =   495
      Left            =   3960
      TabIndex        =   4
      Top             =   4800
      Width           =   2175
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Enviar"
      Height          =   495
      Left            =   600
      TabIndex        =   3
      Top             =   4800
      Width           =   2055
   End
   Begin VB.TextBox Text1 
      Height          =   2655
      Left            =   360
      TabIndex        =   0
      Top             =   1800
      Width           =   6135
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "Selecciona el motivo de tu consulta:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   480
      TabIndex        =   6
      Top             =   1320
      Width           =   2565
   End
   Begin VB.Label Label2 
      Caption         =   "Sistema de Consultas "
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1560
      TabIndex        =   2
      Top             =   0
      Width           =   3975
   End
   Begin VB.Label Label1 
      Caption         =   "Por favor, escribe tu consulta y cuando un GM este disponible para ayudarte lo hara a la brevedad."
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
      Left            =   480
      TabIndex        =   1
      Top             =   600
      Width           =   5895
   End
End
Attribute VB_Name = "frmConsultas"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Len(Text1.Text) > 250 Then
    MsgBox "La longitud del mensaje debe tener menos de 250 carácteres."
    Exit Sub
End If

Select Case Combo1.Text
    Case " "
        MsgBox ("Debes seleccionar tu motivo")
    Case "Denuncia"
        Call SendData("COMSG" & frmMain.Label8 & Chr(176) & "(DENUNCIA)" & "Fecha: " & Date & " || Hora: " & time & " || " & Text1.Text)
        
    Case "Bug"
        Call SendData("COMSG" & frmMain.Label8 & Chr(176) & "(BUG)" & "Fecha: " & Date & " || Hora: " & time & " || " & Text1.Text)
        
    Case "Consulta General"
        Call SendData("COMSG" & frmMain.Label8 & Chr(176) & "(CONSULTA GENERAL)" & "Fecha: " & Date & " || Hora: " & time & " || " & Text1.Text)
        
    Case "Otros"
        Call SendData("COMSG" & frmMain.Label8 & Chr(176) & "(OTROS)" & "Fecha: " & Date & " || Hora: " & time & " || " & Text1.Text)
        
    Case Else
        MsgBox ("Motivo Invalido")
End Select
    
    Unload Me
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Form_Load()
Combo1.AddItem "Denuncia"
Combo1.AddItem "Bug"
Combo1.AddItem "Consulta General"
Combo1.AddItem "Otros"
End Sub
Private Sub mensaje_KeyPress(KeyAscii As Integer)

If (KeyAscii <> 209) And (KeyAscii <> 241) And (KeyAscii <> 8) And (KeyAscii <> 32) And (KeyAscii <> 164) And (KeyAscii <> 165) Then
    If (Index <> 6) And ((KeyAscii < 40 Or KeyAscii > 122) Or (KeyAscii > 90 And KeyAscii < 96)) Then
        KeyAscii = 0
    End If
End If

 KeyAscii = Asc((Chr(KeyAscii)))
End Sub

