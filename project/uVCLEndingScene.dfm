object frmEndingScene: TfrmEndingScene
  Left = 0
  Top = 0
  AlphaBlend = True
  BorderStyle = bsNone
  ClientHeight = 566
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 120
  TextHeight = 20
  object pBackground: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 566
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      800
      566)
    object viScenePicture: TVirtualImage
      Left = 0
      Top = 0
      Width = 800
      Height = 566
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      ImageCollection = dtmdImages.imcOtherImages
      ImageWidth = 0
      ImageHeight = 0
      ImageIndex = 13
      ImageName = 'General\Endgame'
      Proportional = False
      ExplicitLeft = -60
      ExplicitTop = 80
    end
    object lbText: TLabel
      Left = 200
      Top = 220
      Width = 457
      Height = 37
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = #1055#1086#1093#1086#1078#1077', '#1101#1090#1086' '#1073#1099#1083' '#1074#1089#1077#1075#1086' '#1083#1080#1096#1100' '#1089#1086#1085'...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object sdbtExit: TSpeedButton
      Left = 270
      Top = 265
      Width = 321
      Height = 131
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = #1055#1086#1088#1072' '#1086#1087#1103#1090#1100' '#1087#1086#1089#1087#1072#1090#1100'?'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -30
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = sdbtExitClick
    end
  end
end
