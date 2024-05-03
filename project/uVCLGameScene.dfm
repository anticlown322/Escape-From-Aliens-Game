object frmGameScene: TfrmGameScene
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 700
  ClientWidth = 1100
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 20
  object grdpSceneBackground: TGridPanel
    Left = 211
    Top = 0
    Width = 889
    Height = 700
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = 3223083
    ColumnCollection = <
      item
        Value = 35.000000000000000000
      end
      item
        Value = 12.000000000000000000
      end
      item
        Value = 6.000000000000000000
      end
      item
        Value = 12.000000000000000000
      end
      item
        Value = 25.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        ColumnSpan = 6
        Control = viGameScenePicture
        Row = 0
      end
      item
        Column = 0
        ColumnSpan = 5
        Control = lbSituationInfo
        Row = 1
      end
      item
        Column = 2
        Control = lbDirectionForward
        Row = 2
      end
      item
        Column = 1
        Control = lbDirectionLeft
        Row = 3
      end
      item
        Column = 2
        Control = lbDirectionBack
        Row = 4
      end
      item
        Column = 3
        Control = lbDirectionRight
        Row = 3
      end
      item
        Column = 5
        Control = sdbtDirectionDown
        Row = 3
        RowSpan = 2
      end
      item
        Column = 5
        Control = sdbtDirectionUp
        Row = 1
        RowSpan = 2
      end
      item
        Column = 2
        Control = vilDirectionArrow
        Row = 3
      end
      item
        Column = 0
        Control = sdbtExitTheShip
        Row = 2
        RowSpan = 2
      end>
    ParentBackground = False
    RowCollection = <
      item
        Value = 80.000000000000000000
      end
      item
        Value = 5.000000000000000000
      end
      item
        Value = 5.000000000000000000
      end
      item
        Value = 5.000000000000000000
      end
      item
        Value = 5.000000000000000000
      end>
    TabOrder = 0
    DesignSize = (
      885
      696)
    object viGameScenePicture: TVirtualImage
      Left = 0
      Top = 0
      Width = 885
      Height = 557
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      ImageCollection = dtmdImages.imcGameScenePictures
      ImageWidth = 0
      ImageHeight = 0
      ImageIndex = 5
      ImageName = 'Third Floor\StartRoom'
      Proportional = False
      ExplicitLeft = 6
      ExplicitTop = 10
    end
    object lbSituationInfo: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 561
      Width = 789
      Height = 27
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      AutoSize = False
      Caption = 
        #1042#1099' '#1086#1082#1072#1079#1072#1083#1080#1089#1100' '#1074' '#1082#1072#1102#1090#1077' '#1087#1088#1080#1096#1077#1083#1100#1094#1077#1074'. '#1048#1083#1080' '#1074' '#1082#1072#1084#1077#1088#1077'? '#1053#1077' '#1080#1084#1077#1077#1090' '#1079#1085#1072#1095#1077#1085#1080#1103 +
        ', '#1085#1091#1078#1085#1086' '#1074#1099#1073#1080#1088#1072#1090#1100#1089#1103'!'
      Color = 11337727
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11337727
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
      ExplicitLeft = 6
      ExplicitWidth = 567
    end
    object lbDirectionForward: TLabel
      Tag = 12
      AlignWithMargins = True
      Left = 420
      Top = 596
      Width = 45
      Height = 30
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 0
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = #1042#1087#1077#1088#1077#1076
      Color = 11337727
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11337727
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      WordWrap = True
      OnClick = actDirChoiceExecute
      OnMouseMove = lbDirectionForwardMouseMove
      OnMouseLeave = lbDirectionForwardMouseLeave
      ExplicitLeft = 6
      ExplicitTop = 613
      ExplicitWidth = 872
      ExplicitHeight = 20
    end
    object lbDirectionLeft: TLabel
      Tag = 9
      AlignWithMargins = True
      Left = 314
      Top = 630
      Width = 98
      Height = 27
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      Alignment = taRightJustify
      AutoSize = False
      Caption = #1042#1083#1077#1074#1086
      Color = 11337727
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11337727
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
      OnClick = actDirChoiceExecute
      OnMouseMove = lbDirectionLeftMouseMove
      OnMouseLeave = lbDirectionLeftMouseLeave
      ExplicitLeft = 6
      ExplicitTop = 644
      ExplicitWidth = 877
      ExplicitHeight = 20
    end
    object lbDirectionBack: TLabel
      Tag = 6
      AlignWithMargins = True
      Left = 420
      Top = 665
      Width = 45
      Height = 27
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = #1053#1072#1079#1072#1076
      Color = 11337727
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11337727
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
      OnClick = actDirChoiceExecute
      OnMouseMove = lbDirectionBackMouseMove
      OnMouseLeave = lbDirectionBackMouseLeave
      ExplicitLeft = 8
      ExplicitTop = 673
      ExplicitWidth = 884
      ExplicitHeight = 28
    end
    object lbDirectionRight: TLabel
      Tag = 3
      AlignWithMargins = True
      Left = 473
      Top = 630
      Width = 98
      Height = 27
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      AutoSize = False
      Caption = #1042#1087#1088#1072#1074#1086
      Color = 11337727
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11337727
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
      OnClick = actDirChoiceExecute
      OnMouseMove = lbDirectionRightMouseMove
      OnMouseLeave = lbDirectionRightMouseLeave
      ExplicitLeft = 6
      ExplicitTop = 613
      ExplicitWidth = 872
      ExplicitHeight = 17
    end
    object sdbtDirectionDown: TSpeedButton
      Left = 797
      Top = 626
      Width = 88
      Height = 70
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      Caption = #1042#1085#1080#1079
      ImageIndex = 0
      ImageName = 'Stairs Icons\StairsDownIcon'
      Images = vilStairsIcons_48
      Enabled = False
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11337727
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = actMoveDownExecute
      ExplicitTop = 641
      ExplicitHeight = 63
    end
    object sdbtDirectionUp: TSpeedButton
      Left = 797
      Top = 557
      Width = 88
      Height = 69
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      Caption = #1042#1074#1077#1088#1093
      ImageIndex = 1
      ImageName = 'Stairs Icons\StairsUpIcon'
      Images = vilStairsIcons_48
      Enabled = False
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11337727
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = actMoveUpExecute
      ExplicitLeft = 801
      ExplicitTop = 549
    end
    object vilDirectionArrow: TVirtualImage
      Left = 416
      Top = 626
      Width = 53
      Height = 35
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      ImageCollection = dtmdImages.imcGameScenePictures
      ImageWidth = 0
      ImageHeight = 0
      ImageIndex = 6
      ImageName = 'Arrows\BackArrow'
      ExplicitLeft = 791
      ExplicitTop = 696
      ExplicitWidth = 132
      ExplicitHeight = 132
    end
    object sdbtExitTheShip: TSpeedButton
      Left = 90
      Top = 604
      Width = 130
      Height = 45
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = actExitShip
      Anchors = []
      Enabled = False
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11337727
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
      ExplicitTop = 596
    end
  end
  object pLeft: TPanel
    Left = 0
    Top = 0
    Width = 211
    Height = 700
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alLeft
    BevelOuter = bvNone
    Color = 2828066
    ParentBackground = False
    TabOrder = 1
    DesignSize = (
      211
      700)
    object lbTask: TLabel
      Left = 8
      Top = 82
      Width = 183
      Height = 49
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      AutoSize = False
      Caption = #1047#1072#1076#1072#1095#1072': '
      Color = clCream
      Font.Charset = ANSI_CHARSET
      Font.Color = 11337727
      Font.Height = -30
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object sdbtSideMenu: TSpeedButton
      Left = 0
      Top = 0
      Width = 211
      Height = 42
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = actSideMenu
      Align = alTop
      ImageIndex = 0
      ImageName = 'General\Menu'
      Images = vilImages_48
      Flat = True
      ExplicitLeft = 4
      ExplicitTop = -4
    end
    object lbNumberOfMoves: TLabel
      Left = 4
      Top = 639
      Width = 143
      Height = 55
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Anchors = [akLeft, akBottom]
      AutoSize = False
      Caption = 'C'#1076#1077#1083#1072#1085#1086' '#1093#1086#1076#1086#1074': 0'
      Color = clCream
      Font.Charset = ANSI_CHARSET
      Font.Color = 11337727
      Font.Height = -20
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold, fsItalic]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object lbTaskInfo: TLabel
      Left = 6
      Top = 121
      Width = 192
      Height = 30
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #1057#1073#1077#1078#1072#1090#1100' '#1089' '#1082#1086#1088#1072#1073#1083#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11337727
      Font.Height = -22
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object splvSideMenu: TSplitView
      Left = 0
      Top = 42
      Width = 0
      Height = 658
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Color = 6381921
      CompactWidth = 0
      Opened = False
      OpenedWidth = 280
      Placement = svpLeft
      TabOrder = 0
      object sdbtHelp: TSpeedButton
        Left = 0
        Top = 100
        Width = 0
        Height = 50
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = actHelp
        Align = alTop
        BiDiMode = bdLeftToRight
        ImageIndex = 3
        ImageName = 'Side Menu Buttons\Help'
        Images = vilImages_48
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11337727
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ParentBiDiMode = False
        Visible = False
        ExplicitTop = 10
        ExplicitWidth = 250
      end
      object sdbtBackToMenu: TSpeedButton
        Left = 0
        Top = 0
        Width = 0
        Height = 50
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = actGoMainMenu
        Align = alTop
        BiDiMode = bdLeftToRight
        ImageIndex = 2
        ImageName = 'Side Menu Buttons\MainMenu'
        Images = vilImages_48
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11337727
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ParentBiDiMode = False
        ExplicitTop = -8
        ExplicitWidth = 280
      end
      object sdbtRestart: TSpeedButton
        Left = 0
        Top = 50
        Width = 0
        Height = 50
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = actRestart
        Align = alTop
        ImageIndex = 1
        ImageName = 'Side Menu Buttons\Restart'
        Images = vilImages_48
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11337727
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitTop = 10
        ExplicitWidth = 250
      end
    end
  end
  object vilImages_48: TVirtualImageList
    Images = <
      item
        CollectionIndex = 7
        CollectionName = 'General\SideMenu'
        Name = 'General\Menu'
      end
      item
        CollectionIndex = 10
        CollectionName = 'Side Menu Buttons\Restart'
        Name = 'Side Menu Buttons\Restart'
      end
      item
        CollectionIndex = 11
        CollectionName = 'Side Menu Buttons\MainMenu'
        Name = 'Side Menu Buttons\MainMenu'
      end
      item
        CollectionIndex = 12
        CollectionName = 'Side Menu Buttons\Help'
        Name = 'Side Menu Buttons\Help'
      end>
    ImageCollection = dtmdImages.imcOtherImages
    Width = 48
    Height = 48
    Left = 805
    Top = 18
  end
  object actmngActions: TActionManager
    Left = 984
    Top = 14
    StyleName = 'Platform Default'
    object actHelp: TAction
      Category = 'Side Menu'
      Caption = #1055#1086#1084#1086#1097#1100'          '
      ShortCut = 112
      OnExecute = actHelpExecute
    end
    object actRestart: TAction
      Category = 'Side Menu'
      Caption = #1053#1072#1095#1072#1090#1100' '#1079#1072#1085#1086#1074#1086
      ShortCut = 82
      OnExecute = actRestartExecute
    end
    object actSideMenu: TAction
      Category = 'Side Menu'
      ShortCut = 32
      OnExecute = actSideMenuExecute
    end
    object actDirChoice: TAction
      Category = 'Movements'
      Caption = #1042#1099#1073#1086#1088' '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1103
      OnExecute = actDirChoiceExecute
    end
    object actMoveUp: TAction
      Category = 'Movements'
      Caption = #1042#1074#1077#1088#1093
      OnExecute = actMoveUpExecute
    end
    object actMoveDown: TAction
      Category = 'Movements'
      Caption = #1042#1085#1080#1079
      OnExecute = actMoveDownExecute
    end
    object actGoMainMenu: TAction
      Category = 'Side Menu'
      Caption = #1043#1083#1072#1074#1085#1086#1077' '#1084#1077#1085#1102
      ShortCut = 113
      OnExecute = actGoMainMenuExecute
    end
    object actExitShip: TAction
      Category = 'Game'
      Caption = #1059#1081#1090#1080
      OnExecute = actExitShipExecute
    end
  end
  object bllnhHintShape: TBalloonHint
    Left = 730
    Top = 28
  end
  object vilStairsIcons_48: TVirtualImageList
    Images = <
      item
        CollectionIndex = 19
        CollectionName = 'Stairs Icons\StairsDownIcon'
        Name = 'Stairs Icons\StairsDownIcon'
      end
      item
        CollectionIndex = 20
        CollectionName = 'Stairs Icons\StairsUpIcon'
        Name = 'Stairs Icons\StairsUpIcon'
      end>
    ImageCollection = dtmdImages.imcGameScenePictures
    Width = 48
    Height = 48
    Left = 934
    Top = 21
  end
end
