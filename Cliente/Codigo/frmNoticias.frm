VERSION 5.00
Begin VB.Form frmNoticias 
   BorderStyle     =   0  'None
   Caption         =   "Noticias de GatheringAO"
   ClientHeight    =   7500
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   6000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7500
   ScaleWidth      =   6000
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000006&
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
      ForeColor       =   &H80000005&
      Height          =   4455
      Left            =   720
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   0
      Top             =   1320
      Width           =   4575
   End
   Begin VB.Image Image3 
      Height          =   735
      Left            =   4080
      MouseIcon       =   "frmNoticias.frx":0000
      MousePointer    =   99  'Custom
      Top             =   6480
      Width           =   1575
   End
   Begin VB.Image Image2 
      Height          =   735
      Left            =   2040
      MouseIcon       =   "frmNoticias.frx":030A
      MousePointer    =   99  'Custom
      Top             =   6480
      Width           =   1935
   End
   Begin VB.Image Image1 
      Height          =   735
      Left            =   360
      MouseIcon       =   "frmNoticias.frx":0614
      MousePointer    =   99  'Custom
      Top             =   6480
      Width           =   1575
   End
End
Attribute VB_Name = "frmNoticias"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Const GWL_EXSTYLE = -20
Private Const WS_EX_LAYERED = &H80000
Private Const WS_EX_TRANSPARENT As Long = &H20&

Private Sub Image3_Click()
Unload Me
End Sub

Private Sub Image1_Click()
ShellExecute Me.hWnd, "open", "http://gathering.superforo.net/", "", "", 1
End Sub

Private Sub Image2_Click()
ShellExecute Me.hWnd, "open", "http://www.gathering-ao.com.ar", "", "", 1
End Sub

Private Sub Form_Load()
Me.Picture = LoadPicture(DirGraficos & "Noticias.jpg")
Call SendData("VENOT") ' VER NOTICIAS
End Sub

