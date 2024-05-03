object frmLoadingBeforeGameScene: TfrmLoadingBeforeGameScene
  Left = 0
  Top = 0
  AlphaBlend = True
  BorderStyle = bsNone
  ClientHeight = 600
  ClientWidth = 1011
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  PixelsPerInch = 120
  TextHeight = 20
  object TmrAlphaBlendChanging: TTimer
    Interval = 1
    OnTimer = TmrAlphaBlendChangingTimer
    Left = 684
    Top = 14
  end
  object tmrEndLoadingScreen: TTimer
    Interval = 3000
    OnTimer = tmrEndLoadingScreenTimer
    Left = 734
    Top = 14
  end
end
