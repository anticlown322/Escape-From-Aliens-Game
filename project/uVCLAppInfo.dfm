object frmAppInfo: TfrmAppInfo
  Left = 0
  Top = 0
  AlphaBlend = True
  BorderStyle = bsNone
  ClientHeight = 510
  ClientWidth = 910
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnMouseDown = FormMouseDown
  PixelsPerInch = 120
  TextHeight = 20
  object pBackground: TPanel
    Left = 0
    Top = 0
    Width = 910
    Height = 510
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    OnMouseDown = pBackgroundMouseDown
    object vilBackground: TVirtualImage
      Left = 0
      Top = 0
      Width = 910
      Height = 510
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      ImageCollection = dtmdImages.imcOtherImages
      ImageWidth = 0
      ImageHeight = 0
      ImageIndex = 9
      ImageName = 'General\appinfo'
      Proportional = False
      OnMouseDown = vilBackgroundMouseDown
      ExplicitWidth = 451
      ExplicitHeight = 741
    end
    object pAppInfo: TPanel
      Left = 230
      Top = 35
      Width = 461
      Height = 426
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      BevelOuter = bvNone
      Color = clGrayText
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      ParentBackground = False
      TabOrder = 0
      OnMouseDown = pAppInfoMouseDown
      object lbWelcome: TLabel
        AlignWithMargins = True
        Left = 9
        Top = 9
        Width = 443
        Height = 41
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = #1044#1086#1073#1088#1086' '#1087#1086#1078#1072#1083#1086#1074#1072#1090#1100' '#1074' '#1080#1075#1088#1091' "'#1051#1072#1073#1080#1088#1080#1085#1090'"!'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -23
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 441
      end
      object lbAppInfoText: TLabel
        AlignWithMargins = True
        Left = 9
        Top = 58
        Width = 443
        Height = 224
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        Caption = 
          #1044#1072#1085#1085#1072#1103' '#1080#1075#1088#1072' '#1087#1086#1074#1077#1089#1090#1074#1091#1077#1090' '#1086' '#1089#1083#1077#1076#1091#1102#1097#1077#1081' '#1080#1089#1090#1086#1088#1080#1080': '#1054#1076#1085#1072#1078#1076#1099' '#1087#1088#1086#1075#1091#1083#1080#1074#1072#1103#1089#1100 +
          ' '#1074' '#1088#1086#1097#1077', '#1074#1099' '#1086#1073#1085#1072#1088#1091#1078#1080#1074#1072#1077#1090#1077' '#1090#1086#1083#1100#1082#1086' '#1095#1090#1086' '#1087#1088#1080#1079#1077#1084#1083#1080#1074#1096#1080#1081#1089#1103' '#1082#1086#1088#1072#1073#1083#1100' '#1087#1088#1080#1096 +
          #1077#1083#1100#1094#1077#1074'. '#1055#1088#1080#1088#1086#1076#1085#1072#1103' '#1083#1102#1073#1086#1079#1085#1072#1090#1077#1083#1100#1085#1086#1089#1090#1100' '#1087#1086#1073#1091#1078#1076#1072#1077#1090' '#1074#1072#1089' '#1074#1086#1081#1090#1080' '#1074#1085#1091#1090#1088#1100'. '#1055 +
          #1086#1103#1074#1080#1074#1096#1080#1077#1089#1103' '#1080#1085#1086#1087#1083#1072#1085#1077#1090#1103#1085#1077', '#1085#1077' '#1087#1088#1086#1103#1074#1080#1074' '#1085#1080' '#1084#1072#1083#1077#1081#1096#1077#1075#1086' '#1076#1088#1091#1078#1077#1083#1102#1073#1080#1103', '#1084#1086#1083 +
          #1095#1072' '#1087#1088#1080#1074#1086#1076#1103#1090' '#1074#1072#1089' '#1074' '#1087#1091#1089#1090#1091#1102' '#1082#1072#1102#1090#1091' '#1080' '#1090#1072#1084' '#1086#1089#1090#1072#1074#1083#1103#1102#1090'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        WordWrap = True
        ExplicitWidth = 439
      end
      object lbTaskInfoText: TLabel
        AlignWithMargins = True
        Left = 9
        Top = 290
        Width = 443
        Height = 130
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        AutoSize = False
        Caption = 
          #1042#1072#1096#1072' '#1079#1072#1076#1072#1095#1072': '#1074#1099#1073#1088#1072#1090#1100#1089#1103' '#1083#1102#1073#1086#1081' '#1094#1077#1085#1086#1081'! '#1050#1086#1088#1072#1073#1083#1100' '#1087#1088#1077#1076#1089#1090#1072#1074#1083#1103#1077#1090' '#1089#1086#1073#1086#1081' '#1090 +
          #1088#1077#1093#1101#1090#1072#1078#1085#1086#1077' '#1087#1077#1088#1077#1087#1083#1077#1090#1077#1085#1080#1077' '#1073#1077#1089#1082#1086#1085#1077#1095#1085#1099#1093' '#1082#1086#1088#1080#1076#1086#1088#1086#1074' '#1080' '#1087#1086#1084'e'#1097#1077#1085#1080#1081', '#1085#1077#1086#1073#1093 +
          #1086#1076#1080#1084#1086' '#1073#1099#1090#1100' '#1073#1076#1080#1090#1077#1083#1100#1085#1099#1084' '#1080' '#1072#1082#1082#1091#1088#1072#1090#1085#1099#1084'!'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        WordWrap = True
        ExplicitLeft = 0
        ExplicitTop = 283
        ExplicitWidth = 451
      end
    end
    object pExit: TPanel
      Left = 720
      Top = 400
      Width = 170
      Height = 61
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      BevelOuter = bvNone
      Caption = #1042#1077#1088#1085#1091#1090#1100#1089#1103
      Color = clScrollBar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = pExitClick
      OnMouseLeave = pExitMouseLeave
      OnMouseMove = pExitMouseMove
    end
  end
end
