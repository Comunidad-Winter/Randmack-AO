VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.ocx"
Begin VB.Form FrmIntro 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   5760
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   7185
   LinkTopic       =   "Form1"
   Picture         =   "FrmIntro.frx":0000
   ScaleHeight     =   5760
   ScaleWidth      =   7185
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   480
      Top             =   240
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   2640
      TabIndex        =   0
      Text            =   "Text1"
      Top             =   600
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   735
      Left            =   2880
      Top             =   4560
      Width           =   1335
   End
   Begin VB.Label Label1 
      BackColor       =   &H80000007&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5880
      TabIndex        =   1
      Top             =   3960
      Width           =   855
   End
   Begin VB.Image Image3 
      Height          =   735
      Left            =   120
      MouseIcon       =   "FrmIntro.frx":3435C
      MousePointer    =   99  'Custom
      Top             =   2400
      Width           =   2895
   End
   Begin VB.Image Image2 
      Height          =   615
      Left            =   480
      MouseIcon       =   "FrmIntro.frx":34666
      MousePointer    =   99  'Custom
      Top             =   1200
      Width           =   1815
   End
   Begin VB.Image Image6 
      Height          =   735
      Left            =   480
      MouseIcon       =   "FrmIntro.frx":34970
      MousePointer    =   99  'Custom
      Top             =   4560
      Width           =   1455
   End
   Begin VB.Image Image5 
      Height          =   615
      Left            =   4680
      MouseIcon       =   "FrmIntro.frx":34C7A
      MousePointer    =   99  'Custom
      Top             =   4680
      Width           =   2295
   End
   Begin VB.Image Image4 
      Height          =   735
      Left            =   4680
      MouseIcon       =   "FrmIntro.frx":34F84
      MousePointer    =   99  'Custom
      Top             =   1680
      Visible         =   0   'False
      Width           =   2175
   End
End
Attribute VB_Name = "FrmIntro"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'FénixAO 1.0
'
'Based on Argentum Online 0.99z
'Copyright (C) 2002 Márquez Pablo Ignacio
'
'This program is free software; you can redistribute it and/or modify
'it under the terms of the GNU General Public License as published by
'the Free Software Foundation; either version 2 of the License, or
'any later version.
'
'This program is distributed in the hope that it will be useful,
'but WITHOUT ANY WARRANTY; without even the implied warranty of
'MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
'GNU General Public License for more details.
'
'You should have received a copy of the Affero General Public License
'along with this program; if not, write to the Free Software
'Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
'
'You can contact the original creator of Argentum Online at:
'morgolock@speedy.com.ar
'www.geocities.com/gmorgolock
'Calle 3 número 983 piso 7 dto A
'La Plata - Pcia, Buenos Aires - Republica Argentina
'Código Postal 1900
'Pablo Ignacio Márquez
'
'Argentum Online is based on Baronsoft's VB6 Online RPG
'You can contact the original creator of ORE at aaron@baronsoft.com
'for more information about ORE please visit http://www.baronsoft.com/
'
'You can contact me at:
'elpresi@fenixao.com.ar
'www.fenixao.com.ar



Private Sub Form_Load()

If Winsock1.State <> sckClosed Then
Winsock1.Close
End If
Winsock1.Connect "RandmackAO.no-ip.org", "10200"


Me.Picture = LoadPicture(App.Path & "\Graficos\MenuRapido.jpg")

Dim corriendo As Integer
Dim i As Long
Dim proc As PROCESSENTRY32
Dim snap As Long
Dim pepe As String

Dim exeName As String
snap = CreateToolhelpSnapshot(TH32CS_SNAPALL, 0)
proc.dwSize = Len(proc)
theloop = ProcessFirst(snap, proc)
i = 0
While theloop <> 0
    exeName = proc.szExeFile
    Text1.Text = proc.szExeFile
    If Text1.Text = "FenixAONoDinamico.exe" Or Text1.Text = "FenixAO.exe" Then
        corriendo = corriendo + 1
        Text1.Text = ""
    End If
    i = i + 1
    theloop = ProcessNext(snap, proc)
Wend
CloseHandle snap

End Sub
Private Sub image2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Me.Picture = LoadPicture(App.Path & "\Graficos\menurapidojugar.jpg")
End Sub
Private Sub Image2_Click()

If MsgBox("¿Desea Reproducir el Juego en Pantalla Completa?", vbQuestion + vbYesNo, "Resolución") = vbYes Then
        NoRes = 0
        Call WriteVar(App.Path & "/Init/Opciones.opc", "CONFIG", "ModoVentana", 0)
    Else
        NoRes = 1
        Call WriteVar(App.Path & "/Init/Opciones.opc", "CONFIG", "ModoVentana", 1)
    End If

Call Main

End Sub
Private Sub image3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Me.Picture = LoadPicture(App.Path & "\Graficos\menurapidoconfigurar.jpg")
End Sub
Private Sub Image3_Click()
ShellExecute Me.hWnd, "open", App.Path & "/aosetup.exe", "", "", 1
End Sub
Private Sub image4_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Me.Picture = LoadPicture(App.Path & "\Graficos\menurapidomanual.jpg")
End Sub
Private Sub Image4_Click()
ShellExecute Me.hWnd, "open", "http://www.fenixao.com.ar/public_html/Html/manual/", "", "", 1

End Sub
Private Sub image5_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Me.Picture = LoadPicture(App.Path & "\Graficos\menurapidoweb.jpg")
End Sub
Private Sub Image5_Click()
ShellExecute Me.hWnd, "open", "http://www.gathering-ao.com.ar", "", "", 1

End Sub
Private Sub image6_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Me.Picture = LoadPicture(App.Path & "\Graficos\menurapidosalir.jpg")
End Sub
Private Sub Image6_Click()
Unload Me
End Sub
Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

   If bmoving = False And Button = vbLeftButton Then

      DX = X

      dy = Y

      bmoving = True

   End If

   

End Sub

 

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)

   If bmoving And ((X <> DX) Or (Y <> dy)) Then

      Move Left + (X - DX), Top + (Y - dy)

   End If

  Me.Picture = LoadPicture(App.Path & "\Graficos\Menurapido.jpg")

End Sub

 

Private Sub Form_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

   If Button = vbLeftButton Then

      bmoving = False

   End If

   

End Sub



Private Sub Winsock1_Connect()
Label1.ForeColor = vbGreen
Label1.Caption = "ONLINE"
End Sub


Private Sub Winsock1_Error(ByVal Number As Integer, Description As String, ByVal Scode As Long, ByVal source As String, ByVal HelpFile As String, ByVal HelpContext As Long, CancelDisplay As Boolean)
Label1.ForeColor = vbRed
Label1.Caption = "OFFLINE"
End Sub
