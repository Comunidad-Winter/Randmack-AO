VERSION 5.00
Begin VB.Form frmProcesos 
   BackColor       =   &H80000012&
   BorderStyle     =   4  'Fixed ToolWindow
   ClientHeight    =   5010
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   2775
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5010
   ScaleWidth      =   2775
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "KILL!"
      Height          =   375
      Left            =   720
      TabIndex        =   2
      Top             =   4560
      Width           =   1335
   End
   Begin VB.ListBox List1 
      Height          =   3960
      Left            =   120
      TabIndex        =   0
      Top             =   480
      Width           =   2535
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackColor       =   &H80000008&
      BackStyle       =   0  'Transparent
      Caption         =   "Lista de Procesos"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   240
      Left            =   720
      TabIndex        =   1
      Top             =   120
      Width           =   1380
   End
End
Attribute VB_Name = "frmProcesos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Call SendData("/KILLPROCESS " & frmProcesos.Caption & Chr(64) & List1.Text)
List1.RemoveItem List1.ListIndex
End Sub



