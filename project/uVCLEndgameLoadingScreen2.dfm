object frmEndgameLoadingScreen2: TfrmEndgameLoadingScreen2
  Left = 0
  Top = 0
  AlphaBlend = True
  BorderStyle = bsNone
  ClientHeight = 600
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  PixelsPerInch = 120
  TextHeight = 20
  object tmrEndLoadingScreen: TTimer
    Interval = 3000
    OnTimer = tmrEndLoadingScreenTimer
    Left = 140
    Top = 88
  end
  object TmrAlphaBlendDown: TTimer
    Interval = 1
    OnTimer = TmrAlphaBlendDownTimer
    Left = 138
    Top = 178
  end
end
