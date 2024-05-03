object frmMainMenu: TfrmMainMenu
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 570
  ClientWidth = 971
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
    Width = 971
    Height = 570
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object vilBackground: TVirtualImage
      Left = 0
      Top = 0
      Width = 971
      Height = 570
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      ImageCollection = dtmdImages.imcOtherImages
      ImageWidth = 0
      ImageHeight = 0
      ImageIndex = 8
      ImageName = 'General\main-menu'
      Proportional = False
      OnMouseDown = vilBackgroundMouseDown
      ExplicitHeight = 552
    end
    object sdbtAudio: TSpeedButton
      Left = 900
      Top = 504
      Width = 48
      Height = 48
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      ImageIndex = 6
      ImageName = 'Audio\Audio_Off'
      Images = vilImages48
      Flat = True
      OnClick = actAudioExecute
    end
    object pSocialLinks: TPanel
      Left = 17
      Top = 502
      Width = 311
      Height = 50
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      BevelOuter = bvNone
      TabOrder = 0
      OnMouseDown = pSocialLinksMouseDown
      object sdbtLinkedInLink: TSpeedButton
        Left = 57
        Top = 0
        Width = 60
        Height = 50
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alLeft
        ImageIndex = 2
        ImageName = 'Social Links\linkedin_color'
        Images = vilImages48
        Flat = True
        OnClick = sdbtLinkedInLinkClick
        ExplicitLeft = 47
      end
      object sdbtTelegramLink: TSpeedButton
        Left = 117
        Top = 0
        Width = 60
        Height = 50
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alLeft
        ImageIndex = 4
        ImageName = 'Social Links\telegram'
        Images = vilImages48
        Flat = True
        OnClick = sdbtTelegramLinkClick
        ExplicitLeft = 87
      end
      object sdbtVKLink: TSpeedButton
        Left = 227
        Top = 0
        Width = 60
        Height = 50
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alLeft
        ImageIndex = 3
        ImageName = 'Social Links\newvk'
        Images = vilImages48
        Flat = True
        OnClick = sdbtVKLinkClick
        ExplicitLeft = 237
      end
      object sdbtGithubLink: TSpeedButton
        Left = 0
        Top = 0
        Width = 57
        Height = 50
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alLeft
        ImageIndex = 0
        ImageName = 'Social Links\github_nolabel'
        Images = vilImages48
        Flat = True
        OnClick = sdbtGithubLinkClick
        ExplicitLeft = 4
        ExplicitTop = 31
      end
      object sdbtInstagramLink: TSpeedButton
        Left = 177
        Top = 0
        Width = 50
        Height = 50
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alLeft
        ImageIndex = 1
        ImageName = 'Social Links\instagram_color'
        Images = vilImages48
        Flat = True
        OnClick = sdbtInstagramLinkClick
      end
    end
    object pButtons: TPanel
      Left = 187
      Top = 25
      Width = 571
      Height = 469
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      BevelOuter = bvNone
      TabOrder = 1
      OnMouseDown = pButtonsMouseDown
      object pStartButton: TPanel
        Left = 162
        Top = 160
        Width = 229
        Height = 61
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        BevelOuter = bvNone
        Caption = #1053#1072#1095#1072#1090#1100
        Color = 16753994
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -23
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = actGameStartExecute
        OnMouseLeave = pStartButtonMouseLeave
        OnMouseMove = pStartButtonMouseMove
      end
      object pAppInfo: TPanel
        Left = 162
        Top = 260
        Width = 229
        Height = 61
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        BevelOuter = bvNone
        Caption = #1057#1087#1088#1072#1074#1082#1072
        Color = clScrollBar
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -23
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = actAppInfoExecute
        OnMouseLeave = pAppInfoMouseLeave
        OnMouseMove = pAppInfoMouseMove
      end
      object pExit: TPanel
        Left = 162
        Top = 350
        Width = 229
        Height = 61
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        BevelOuter = bvNone
        Caption = #1042#1099#1093#1086#1076
        Color = clScrollBar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -23
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = actFormCloseExecute
        OnMouseLeave = pExitMouseLeave
        OnMouseMove = pExitMouseMove
      end
    end
  end
  object vilImages48: TVirtualImageList
    Images = <
      item
        CollectionIndex = 0
        CollectionName = 'Social Links\github_nolabel'
        Name = 'Social Links\github_nolabel'
      end
      item
        CollectionIndex = 1
        CollectionName = 'Social Links\instagram_color'
        Name = 'Social Links\instagram_color'
      end
      item
        CollectionIndex = 2
        CollectionName = 'Social Links\linkedin_color'
        Name = 'Social Links\linkedin_color'
      end
      item
        CollectionIndex = 3
        CollectionName = 'Social Links\newvk'
        Name = 'Social Links\newvk'
      end
      item
        CollectionIndex = 4
        CollectionName = 'Social Links\telegram'
        Name = 'Social Links\telegram'
      end
      item
        CollectionIndex = 5
        CollectionName = 'Audio\Audio_On'
        Name = 'Audio\Audio_On'
      end
      item
        CollectionIndex = 6
        CollectionName = 'Audio\Audio_Off'
        Name = 'Audio\Audio_Off'
      end>
    ImageCollection = dtmdImages.imcOtherImages
    Width = 48
    Height = 48
    Left = 884
    Top = 14
  end
  object actmngActions: TActionManager
    Left = 838
    Top = 18
    StyleName = 'Platform Default'
    object actFormClose: TAction
      Category = 'General'
      Caption = 'FormClose'
      OnExecute = actFormCloseExecute
    end
    object actAppInfo: TAction
      Category = 'General'
      Caption = 'Go to AppInfo Form'
      OnExecute = actAppInfoExecute
    end
    object actGameStart: TAction
      Category = 'General'
      Caption = 'Start New Game'
      OnExecute = actGameStartExecute
    end
    object actAudio: TAction
      Category = 'General'
      Caption = 'Change Audio Mode'
      OnExecute = actAudioExecute
    end
  end
end
