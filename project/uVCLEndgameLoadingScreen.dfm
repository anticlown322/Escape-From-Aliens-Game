object frmEndgameLoadingScreen: TfrmEndgameLoadingScreen
  Left = 0
  Top = 0
  AlphaBlend = True
  AlphaBlendValue = 0
  BorderStyle = bsNone
  ClientHeight = 600
  ClientWidth = 800
  Color = clHighlightText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  PixelsPerInch = 120
  TextHeight = 20
  object TmrAlphaBlendUp: TTimer
    Interval = 1
    OnTimer = TmrAlphaBlendUpTimer
    Left = 148
    Top = 198
  end
  object tmrStartLoadingScreen: TTimer
    Interval = 3000
    OnTimer = tmrStartLoadingScreenTimer
    Left = 150
    Top = 108
  end
end
