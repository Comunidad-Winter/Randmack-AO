Attribute VB_Name = "mdlDibujarPersonaje"
Sub DibujaPJ(surface As DirectDrawSurface7, Grh As Grh, ByVal X As Integer, ByVal Y As Integer, Index As Integer)
On Error Resume Next
Dim r1           As RECT, r2 As RECT, auxr As RECT
Dim iGrhIndex As Integer
If Grh.GrhIndex <= 0 Then Exit Sub
iGrhIndex = GrhData(Grh.GrhIndex).Frames(Grh.FrameCounter)
 
With r1
    .Right = GrhData(iGrhIndex).pixelWidth
    .Bottom = GrhData(iGrhIndex).pixelHeight
End With
 
With r2
   .Left = GrhData(iGrhIndex).sX
   .Top = GrhData(iGrhIndex).sY
   .Right = .Left + GrhData(iGrhIndex).pixelWidth
   .Bottom = .Top + GrhData(iGrhIndex).pixelHeight
End With
With auxr
    .Left = 0
  .Top = 0
   .Right = 150
  .Bottom = 150
End With
 
surface.BltFast X, Y, SurfaceDB.GetBMP(GrhData(iGrhIndex).FileNum), r2, DDBLTFAST_SRCCOLORKEY Or DDBLTFAST_WAIT
surface.BltToDC frmCuent.PJ(Index).hDC, auxr, auxr
 
frmCuent.PJ(Index).Refresh
 
End Sub
Sub dibujaban(surface As DirectDrawSurface7, Index As Integer)
 
Dim r2 As RECT, auxr As RECT
 
With r2
   .Left = 0
   .Top = 0
   .Right = 20
   .Bottom = 20
End With
 
With auxr
    .Left = 0
  .Top = 0
   .Right = 150
  .Bottom = 150
End With
 
surface.SetFontTransparency True
surface.SetForeColor vbRed
frmCuent.Font.Size = 15
surface.SetFont frmMain.Font
surface.BltFast X, Y, surface, r2, DDBLTFAST_SRCCOLORKEY Or DDBLTFAST_WAIT
surface.DrawText 6, 60, "Banned", False
surface.BltToDC frmCuent.PJ(Index).hDC, auxr, auxr
 
End Sub
 
Sub dibujamuerto(surface As DirectDrawSurface7, Index As Integer)
 
Dim r2 As RECT, auxr As RECT
 
With r2
   .Left = 0
   .Top = 0
   .Right = 20
   .Bottom = 20
End With
 
With auxr
    .Left = 0
  .Top = 0
   .Right = 150
  .Bottom = 150
End With
 
surface.SetFontTransparency True
surface.SetForeColor vbWhite
frmCuent.Font.Size = 6
surface.SetFont frmCuent.Font
surface.BltFast X, Y, surface, r2, DDBLTFAST_SRCCOLORKEY Or DDBLTFAST_WAIT
surface.DrawText 5, 10, "MUERTO", False
surface.BltToDC frmCuent.PJ(Index).hDC, auxr, auxr
 
End Sub
Sub DibujarTodo(ByVal Index As Integer, Body As Integer, Head As Integer, casco As Integer, Shield As Integer, Weapon As Integer, Baned As Integer, Nombre As String, LVL As Integer, Clase As String, muerto As Integer)
 
Dim Grh As Grh
Dim Pos As Integer
Dim loopc As Integer
Dim R As RECT
Dim r2 As RECT
 
Dim YBody As Integer
Dim YYY As Integer
Dim XBody As Integer
Dim BBody As Integer
 
 
With r2
    .Left = 0
  .Top = 0
   .Right = 150
  .Bottom = 150
End With
 
BackBufferSurface.BltColorFill R, 0
 
If Baned = 1 Then
    Call dibujaban(BackBufferSurface, Index)
End If
 
frmCuent.Nombre(Index).Caption = Nombre
 
frmCuent.Label1(Index).Font = frmMain.Font
frmCuent.Label1(Index).Font = frmMain.Font
 
frmCuent.Label1(Index).Caption = LVL
If Clase = 4 Then
frmCuent.Label2(Index).Caption = "Minero"
ElseIf Clase = 44 Then
frmCuent.Label2(Index).Caption = "Bardo"
ElseIf Clase = 8 Then
frmCuent.Label2(Index).Caption = "Herrero"
ElseIf Clase = 14 Then
frmCuent.Label2(Index).Caption = "Talador"
ElseIf Clase = 18 Then
frmCuent.Label2(Index).Caption = "Carpintero"
ElseIf Clase = 23 Then
frmCuent.Label2(Index).Caption = "Pescador"
ElseIf Clase = 27 Then
frmCuent.Label2(Index).Caption = "Sastre"
ElseIf Clase = 31 Then
frmCuent.Label2(Index).Caption = "Alquimista"
ElseIf Clase = 38 Then
frmCuent.Label2(Index).Caption = "Mago"
ElseIf Clase = 39 Then
frmCuent.Label2(Index).Caption = "Nigromante"
ElseIf Clase = 41 Then
frmCuent.Label2(Index).Caption = "Paladin"
ElseIf Clase = 42 Then
frmCuent.Label2(Index).Caption = "Clerigo"
ElseIf Clase = 45 Then
frmCuent.Label2(Index).Caption = "Druida"
ElseIf Clase = 47 Then
frmCuent.Label2(Index).Caption = "Asesino"
ElseIf Clase = 48 Then
frmCuent.Label2(Index).Caption = "Cazador"
ElseIf Clase = 50 Then
frmCuent.Label2(Index).Caption = "Arquero"
ElseIf Clase = 51 Then
frmCuent.Label2(Index).Caption = "Guerrero"
ElseIf Clase = 56 Then
frmCuent.Label2(Index).Caption = "Pirata"
ElseIf Clase = 55 Then
frmCuent.Label2(Index).Caption = "Ladron"
End If
 
XBody = 12
YBody = 15
BBody = 17
 
If muerto = 1 Then
    Body = 8
    Head = 500
    arma = 2
    Shield = 2
    Weapon = 2
    XBody = 10
    YBody = 35
    BBody = 16
    Call dibujamuerto(BackBufferSurface, Index)
End If
 
Grh = BodyData(Body).Walk(3)
   
Call DibujaPJ(BackBufferSurface, Grh, XBody, YBody, Index)
 
If muerto = 0 Then YYY = BodyData(Body).HeadOffset.Y
If muerto = 1 Then YYY = -9
 
Pos = YYY + GrhData(GrhData(Grh.GrhIndex).Frames(Grh.FrameCounter)).pixelHeight
Grh = HeadData(Head).Head(3)
   
Call DibujaPJ(BackBufferSurface, Grh, BBody, Pos, Index)
   
If casco <> 2 And casco > 0 Then
    Grh = CascoAnimData(casco).Head(3)
    Call DibujaPJ(BackBufferSurface, Grh, BBody, Pos, Index)
End If
 
If Weapon <> 2 And Weapon > 0 Then
    Grh = WeaponAnimData(Weapon).WeaponWalk(3)
    Call DibujaPJ(BackBufferSurface, Grh, XBody, YBody, Index)
End If
 
If Shield <> 2 And Shield > 0 Then
    Grh = ShieldAnimData(Shield).ShieldWalk(3)
    Call DibujaPJ(BackBufferSurface, Grh, XBody, BBody, Index)
End If
   
End Sub
