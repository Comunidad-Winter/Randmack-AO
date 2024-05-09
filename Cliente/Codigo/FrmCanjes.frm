VERSION 5.00
Begin VB.Form FrmCanjes 
   BackColor       =   &H80000007&
   BorderStyle     =   0  'None
   ClientHeight    =   4650
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   6960
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4650
   ScaleMode       =   0  'User
   ScaleWidth      =   6960
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.PictureBox Picture1 
      Height          =   545
      Left            =   3065
      ScaleHeight     =   480
      ScaleMode       =   0  'User
      ScaleWidth      =   485
      TabIndex        =   4
      Top             =   370
      Width           =   545
   End
   Begin VB.ListBox List1 
      BackColor       =   &H80000007&
      ForeColor       =   &H80000005&
      Height          =   3960
      Left            =   330
      TabIndex        =   0
      Top             =   340
      Width           =   2450
   End
   Begin VB.Image Image2 
      Height          =   495
      Left            =   3360
      MouseIcon       =   "FrmCanjes.frx":0000
      MousePointer    =   99  'Custom
      Top             =   3840
      Width           =   3375
   End
   Begin VB.Image Image1 
      Height          =   255
      Left            =   0
      MouseIcon       =   "FrmCanjes.frx":030A
      MousePointer    =   99  'Custom
      Top             =   4440
      Width           =   615
   End
   Begin VB.Label Puntosdisplbl 
      BackColor       =   &H80000012&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   255
      Left            =   5640
      TabIndex        =   5
      Top             =   1175
      Width           =   615
   End
   Begin VB.Label lblStat 
      BackColor       =   &H80000012&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   255
      Left            =   4800
      TabIndex        =   3
      Top             =   870
      Width           =   1620
   End
   Begin VB.Label lblPrecio 
      BackColor       =   &H80000012&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   255
      Left            =   4800
      TabIndex        =   2
      Top             =   610
      Width           =   1725
   End
   Begin VB.Label lblPermisos 
      BackColor       =   &H80000012&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   975
      Left            =   3780
      TabIndex        =   1
      Top             =   2640
      Width           =   2415
   End
End
Attribute VB_Name = "FrmCanjes"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False



Private Sub Form_Load()
Call SendData("JU")
List1.AddItem "Tunica de Rey (Altos)"
List1.AddItem "Tunica de Rey (Bajos)"
List1.AddItem "Daga de Hielo"
List1.AddItem "Daga Sangrienta"
List1.AddItem "Daga Envenenada"
List1.AddItem "Daga Neithan"
List1.AddItem "Espada Resplandeciente"
List1.AddItem "Maza Sagrada"
List1.AddItem "Espada Gathering"
List1.AddItem "Espada Sangrienta"
List1.AddItem "Espada de Hielo"
List1.AddItem "Escudo de Campeon"
List1.AddItem "Escudo de la Torre"
List1.AddItem "Corona de Rey"
List1.AddItem "Corona Real"
List1.AddItem "Corona del Caos"
List1.AddItem "Corona del Mal"
List1.AddItem "Gorro del Sabio"
List1.AddItem "Gorro de la Sabiduria"
List1.AddItem "Tunica Roja (Altos)"
List1.AddItem "Tunica Roja (Bajos)"
List1.AddItem "Tunica Azul (Altos)"
List1.AddItem "Tunica Azul (Bajos)"
List1.AddItem "Tunica Oscura (Altos)"
List1.AddItem "Tunica Resplandeciente (Altos)"
List1.AddItem "Pantalones Grises (Altos)"
List1.AddItem "Pantalones Amarillos (Altos)"
List1.AddItem "Pantalones Rojos (Altos)"
List1.AddItem "Pantalones Celestes (Altos)"
List1.AddItem "Pantalones Negros (Altos)"
List1.AddItem "Armadura Oscura"
List1.AddItem "Armadura de Caballero Dorado"
List1.AddItem "Armadura de Dsurion"
List1.AddItem "Armadura Eclipse"
List1.AddItem "Arco Carmesi"
List1.AddItem "Arco Zafiro"
List1.AddItem "Tunica Sacramento (Altos)"
List1.AddItem "Tunica Ornamental (Altos)"


Me.Picture = LoadPicture(DirGraficos & "Canjes.jpg")



End Sub



Private Sub Image1_Click()

Call PlayWaveDS(SND_CLICK)

Unload Me

End Sub

Private Sub Image2_Click()

Call PlayWaveDS(SND_CLICK)

If List1.Text = "Tunica de Rey (Altos)" Then Call SendData("/CANJEO T1")
If List1.Text = "Daga de Hielo" Then Call SendData("/CANJEO T2")
If List1.Text = "Daga Sangrienta" Then Call SendData("/CANJEO T3")
If List1.Text = "Daga Envenenada" Then Call SendData("/CANJEO T4")
If List1.Text = "Daga Neithan" Then Call SendData("/CANJEO T5")
If List1.Text = "Espada Resplandeciente" Then Call SendData("/CANJEO T6")
If List1.Text = "Maza Sagrada" Then Call SendData("/CANJEO T7")
If List1.Text = "Espada Gathering" Then Call SendData("/CANJEO T8")
If List1.Text = "Espada Sangrienta" Then Call SendData("/CANJEO T9")
If List1.Text = "Escudo de Campeon" Then Call SendData("/CANJEO T10")
If List1.Text = "Escudo de la Torre" Then Call SendData("/CANJEO T11")
If List1.Text = "Corona de Rey" Then Call SendData("/CANJEO T12")
If List1.Text = "Corona Real" Then Call SendData("/CANJEO T13")
If List1.Text = "Corona del Caos" Then Call SendData("/CANJEO T14")
If List1.Text = "Corona del Mal" Then Call SendData("/CANJEO T15")
If List1.Text = "Gorro del Sabio" Then Call SendData("/CANJEO T16")
If List1.Text = "Gorro de la Sabiduria" Then Call SendData("/CANJEO T17")
If List1.Text = "Corona de Mago Experto" Then Call SendData("/CANJEO T18")
If List1.Text = "Corona del Esplendor" Then Call SendData("/CANJEO T19")
If List1.Text = "Tunica Roja (Altos)" Then Call SendData("/CANJEO T20")
If List1.Text = "Tunica Roja (Bajos)" Then Call SendData("/CANJEO T21")
If List1.Text = "Tunica Azul (Altos)" Then Call SendData("/CANJEO T22")
If List1.Text = "Tunica Azul (Bajos)" Then Call SendData("/CANJEO T23")
If List1.Text = "Tunica Oscura (Altos)" Then Call SendData("/CANJEO T24")
If List1.Text = "Tunica Resplandeciente (Altos)" Then Call SendData("/CANJEO T25")
If List1.Text = "Tunica de Rey (Bajos)" Then Call SendData("/CANJEO T26")
If List1.Text = "Pantalones Grises (Altos)" Then Call SendData("/CANJEO T27")
If List1.Text = "Pantalones Amarillos (Altos)" Then Call SendData("/CANJEO T28")
If List1.Text = "Pantalones Rojos (Altos)" Then Call SendData("/CANJEO T29")
If List1.Text = "Pantalones Negros (Altos)" Then Call SendData("/CANJEO T30")
If List1.Text = "Pantalones Celestes (Altos)" Then Call SendData("/CANJEO T31")
If List1.Text = "Armadura Eclipse" Then Call SendData("/CANJEO T32")
If List1.Text = "Armadura de Caballero Dorado" Then Call SendData("/CANJEO T33")
If List1.Text = "Armadura de Dsurion" Then Call SendData("/CANJEO T34")
If List1.Text = "Armadura Oscura" Then Call SendData("/CANJEO T35")
If List1.Text = "Arco Carmesi" Then Call SendData("/CANJEO T36")
If List1.Text = "Arco Zafiro" Then Call SendData("/CANJEO T37")
If List1.Text = "Tunica Sacramento (Altos)" Then Call SendData("/CANJEO T38")
If List1.Text = "Tunica Ornamental (Altos)" Then Call SendData("/CANJEO T39")
If List1.Text = "Espada de Hielo" Then Call SendData("/CANJEO T40")
If List1.Text = "Espada Llameante" Then Call SendData("/CANJEO T41")
End Sub

Private Sub list1_Click()
If List1.Text = "Tunica de Rey (Altos)" Then
    Picture1.Picture = LoadPicture(DirGraficos & "685.bmp")
 
    lblPrecio.Caption = "8 Puntos de Canje"
    lblStat.Caption = "Min: 30 / Max: 35"
    lblPermisos.Caption = "Todas las Clases"
End If

If List1.Text = "Tunica de Rey (Bajos)" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16326.bmp")
  
    lblPrecio.Caption = "8 Puntos de Canje"
    lblStat.Caption = "Min: 30 / Max: 35"
    lblPermisos.Caption = "Todas las Clases"
End If

If List1.Text = "Daga de Hielo" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16295.bmp")
   
    lblPrecio.Caption = "16 Puntos de Canje"
    lblStat.Caption = "Min: 8 / Max: 10"
    lblPermisos.Caption = "Bardo"
End If

If List1.Text = "Daga Sangrienta" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16285.bmp")
   
    lblPrecio.Caption = "16 Puntos de Canje"
    lblStat.Caption = "Min: 8 / Max: 10"
    lblPermisos.Caption = "Bardo"
End If

If List1.Text = "Daga Envenenada" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16289.bmp")
    
    lblPrecio.Caption = "16 Puntos de Canje"
    lblStat.Caption = "Min: 9 / Max: 11"
    lblPermisos.Caption = "Asesino"
End If

If List1.Text = "Daga Neithan" Then
    Picture1.Picture = LoadPicture(DirGraficos & "9617.bmp")
   
    lblPrecio.Caption = "16 Puntos de Canje"
    lblStat.Caption = "Min: 9 / Max: 11"
    lblPermisos.Caption = "Asesino"
End If

If List1.Text = "Espada Resplandeciente" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16281.bmp")
  
    lblPrecio.Caption = "16 Puntos de Canje"
    lblStat.Caption = "Min: 20 / Max: 23"
    lblPermisos.Caption = "Paladin - Clerigo - Guerrero"
End If

If List1.Text = "Maza Sagrada" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16283.bmp")

    lblPrecio.Caption = "16 Puntos de Canje"
    lblStat.Caption = "Min: 20 / Max: 23"
    lblPermisos.Caption = "Clerigo"
End If

If List1.Text = "Espada Gathering" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16287.bmp")

    lblPrecio.Caption = "20 Puntos de Canje"
    lblStat.Caption = "Min: 20 / Max: 25"
    lblPermisos.Caption = "Paladin - Guerrero"
End If

If List1.Text = "Espada Sangrienta" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16293.bmp")
   
    lblPrecio.Caption = "14 Puntos de Canje"
    lblStat.Caption = "Min: 19 / Max: 22"
    lblPermisos.Caption = "Paladin - Clerigo - Guerrero"
End If

If List1.Text = "Escudo de Campeon" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16297.bmp")
    
    lblPrecio.Caption = "12 Puntos de Canje"
    lblStat.Caption = "Min: 20 / Max: 25"
    lblPermisos.Caption = "Paladin - Clerigo - Guerrero"
End If

If List1.Text = "Escudo de la Torre" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16299.bmp")
   
    lblPrecio.Caption = "14 Puntos de Canje"
    lblStat.Caption = "Min: 23 / Max: 25"
    lblPermisos.Caption = "Paladin - Clerigo - Guerrero"
End If

If List1.Text = "Corona de Rey" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16277.bmp")
    
    lblPrecio.Caption = "10 Puntos de Canje"
    lblStat.Caption = "Min: 30 / Max: 35"
    lblPermisos.Caption = "Todas las Clases"
End If

If List1.Text = "Corona Real" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16263.bmp")
   
    lblPrecio.Caption = "10 Puntos de Canje"
    lblStat.Caption = "Min: 30 / Max: 35"
    lblPermisos.Caption = "Todas las Clases"
End If

If List1.Text = "Corona del Caos" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16259.bmp")
   
    lblPrecio.Caption = "10 Puntos de Canje"
    lblStat.Caption = "Min: 30 / Max: 35"
    lblPermisos.Caption = "Todas las Clases"
End If

If List1.Text = "Corona del Mal" Then
    Picture1.Picture = LoadPicture(DirGraficos & "2023.bmp")
   
    lblPrecio.Caption = "10 Puntos de Canje"
    lblStat.Caption = "Min: 30 / Max: 35"
    lblPermisos.Caption = "Todas las Clases"
End If

If List1.Text = "Gorro del Sabio" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16261.bmp")

    lblPrecio.Caption = "6 Puntos de Canje"
    lblStat.Caption = "Min: 12 / Max: 12"
    lblPermisos.Caption = "Nigromante - Druida - Mago"
End If

If List1.Text = "Gorro de la Sabiduria" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16267.bmp")
    
    lblPrecio.Caption = "8 Puntos de Canje"
    lblStat.Caption = "Min: 15 / Max: 15"
    lblPermisos.Caption = "Nigromante - Druida - Mago"
End If

If List1.Text = "Gorro de Mago Experto" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16265.bmp")
    
    lblPrecio.Caption = "10 Puntos de Canje"
    lblStat.Caption = "Min: 20 / Max: 20"
    lblPermisos.Caption = "Nigromante - Druida - Mago"
End If

If List1.Text = "Gorro del Esplendor" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16271.bmp")
  
    lblPrecio.Caption = "12 Puntos de Canje"
    lblStat.Caption = "Min: 25 / Max: 25"
    lblPermisos.Caption = "Nigromante - Druida - Mago"
End If

If List1.Text = "Tunica Roja (Altos)" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16246.bmp")
  
    lblPrecio.Caption = "12 Puntos de Canje"
    lblStat.Caption = "Min: 40 / Max: 45"
    lblPermisos.Caption = "Clerigo - Bardo - Mago - Nigromante - Druida"
End If

If List1.Text = "Tunica Roja (Bajos)" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16246.bmp")
  
    lblPrecio.Caption = "12 Puntos de Canje"
    lblStat.Caption = "Min: 40 / Max: 45"
    lblPermisos.Caption = "Clerigo - Bardo - Mago - Nigromante - Druida"
End If

If List1.Text = "Tunica Azul (Altos)" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16253.bmp")
   
    lblPrecio.Caption = "12 Puntos de Canje"
    lblStat.Caption = "Min: 40 / Max: 45"
    lblPermisos.Caption = "Clerigo - Bardo - Mago - Nigromante - Druida"
End If

If List1.Text = "Tunica Azul (Bajos)" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16253.bmp")
 
    lblPrecio.Caption = "12 Puntos de Canje"
    lblStat.Caption = "Min: 40 / Max: 45"
    lblPermisos.Caption = "Clerigo - Bardo - Mago - Nigromante - Druida"
End If

If List1.Text = "Tunica Oscura (Altos)" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16332.bmp")
   
    lblPrecio.Caption = "12 Puntos de Canje"
    lblStat.Caption = "Min: 40 / Max: 45"
    lblPermisos.Caption = "Clerigo - Bardo - Mago - Nigromante - Druida"
End If

If List1.Text = "Tunica Resplandeciente (Altos)" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16334.bmp")
   
    lblPrecio.Caption = "12 Puntos de Canje"
    lblStat.Caption = "Min: 40 / Max: 45"
    lblPermisos.Caption = "Clerigo - Bardo - Mago - Nigromante - Druida"
End If

If List1.Text = "Pantalones Grises (Altos)" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16240.bmp")
    
    lblPrecio.Caption = "12 Puntos de Canje"
    lblStat.Caption = "Min: 40 / Max: 45"
    lblPermisos.Caption = "Todas las Clases"
End If

If List1.Text = "Pantalones Amarillos (Altos)" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16312.bmp")
    lblPrecio.Caption = "12 Puntos de Canje"
    lblStat.Caption = "Min: 40 / Max: 45"
    lblPermisos.Caption = "Todas las Clases"
End If

If List1.Text = "Pantalones Rojos (Altos)" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16340.bmp")
    lblPrecio.Caption = "12 Puntos de Canje"
    lblStat.Caption = "Min: 40 / Max: 45"
    lblPermisos.Caption = "Todas las Clases"
End If

If List1.Text = "Pantalones Celestes (Altos)" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16342.bmp")
    lblPrecio.Caption = "12 Puntos de Canje"
    lblStat.Caption = "Min: 40 / Max: 45"
    lblPermisos.Caption = "Todas las Clases"
End If

If List1.Text = "Pantalones Negros (Altos)" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16318.bmp")
    lblPrecio.Caption = "12 Puntos de Canje"
    lblStat.Caption = "Min: 40 / Max: 45"
    lblPermisos.Caption = "Todas las Clases"
End If

If List1.Text = "Armadura Eclipse" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16356.bmp")
    lblPrecio.Caption = "14 Puntos de Canje"
    lblStat.Caption = "Min: 45 / Max: 50"
    lblPermisos.Caption = "Clerigo"
End If

If List1.Text = "Armadura de Caballero Dorado" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16354.bmp")
    lblPrecio.Caption = "14 Puntos de Canje"
    lblStat.Caption = "Min: 60 / Max: 70"
    lblPermisos.Caption = "Paladin - Arquero"
End If

If List1.Text = "Armadura de Dsurion" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16352.bmp")
    lblPrecio.Caption = "14 Puntos de Canje"
    lblStat.Caption = "Min: 60 / Max: 70"
    lblPermisos.Caption = "Paladin - Arquero"
End If

If List1.Text = "Armadura Oscura" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16314.bmp")
    lblPrecio.Caption = "14 Puntos de Canje"
    lblStat.Caption = "Min: 60 / Max: 70"
    lblPermisos.Caption = "Paladin - Arquero"
End If

If List1.Text = "Arco Carmesí" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16374.bmp")
    lblPrecio.Caption = "16 Puntos de Canje"
    lblStat.Caption = "Min: 10 / Max: 15"
    lblPermisos.Caption = "Arquero"
End If

If List1.Text = "Arco Zafiro" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16376.bmp")
    lblPrecio.Caption = "18 Puntos de Canje"
    lblStat.Caption = "Min: 11 / Max: 16"
    lblPermisos.Caption = "Arquero"
End If

If List1.Text = "Tunica Sacramento (Altos)" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16328.bmp")
    lblPrecio.Caption = "14 Puntos de Canje"
    lblStat.Caption = "Min: 45 / Max: 50"
    lblPermisos.Caption = "Bardo - Clerigo - Mago - Druida - Nigromante"
End If

If List1.Text = "Tunica Ornamental (Altos)" Then
    Picture1.Picture = LoadPicture(DirGraficos & "16322.bmp")
    lblPrecio.Caption = "14 Puntos de Canje"
    lblStat.Caption = "Min: 45 / Max: 50"
    lblPermisos.Caption = "Bardo - Clerigo - Mago - Druida - Nigromante"
End If

If List1.Text = "Espada de Hielo" Then
    Picture1.Picture = LoadPicture(DirGraficos & "9632.bmp")
    lblPrecio.Caption = "14 Puntos de Canje"
    lblStat.Caption = "Min: 19 / Max: 22"
    lblPermisos.Caption = "Paladin - Clerigo - Guerrero"
End If


End Sub



