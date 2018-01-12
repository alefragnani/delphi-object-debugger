object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 439
  ClientWidth = 572
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 24
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 166
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 72
    Width = 265
    Height = 113
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        Visible = True
      end
      item
        Expanded = False
        Visible = True
      end
      item
        Expanded = False
        Visible = True
      end>
  end
  object Button2: TButton
    Left = 320
    Top = 96
    Width = 115
    Height = 25
    Caption = 'Button with Close'
    TabOrder = 3
    OnClick = Button2Click
  end
  object PageControl1: TPageControl
    Left = 32
    Top = 208
    Width = 513
    Height = 209
    ActivePage = TabSheet2
    TabOrder = 4
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel2: TPanel
        Left = 320
        Top = 40
        Width = 185
        Height = 129
        Caption = 'Panel1'
        TabOrder = 0
        object Button5: TButton
          Left = 54
          Top = 24
          Width = 75
          Height = 25
          Caption = 'Button1'
          TabOrder = 0
          OnClick = Button1Click
        end
        object Edit4: TEdit
          Left = 32
          Top = 72
          Width = 121
          Height = 21
          TabOrder = 1
          Text = 'Edit1'
        end
      end
      object Button6: TButton
        Left = 182
        Top = 48
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 1
        OnClick = Button1Click
      end
      object Edit5: TEdit
        Left = 40
        Top = 48
        Width = 121
        Height = 21
        TabOrder = 2
        Text = 'Edit1'
      end
      object DBGrid3: TDBGrid
        Left = 40
        Top = 79
        Width = 257
        Height = 93
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            Visible = True
          end
          item
            Expanded = False
            Visible = True
          end
          item
            Expanded = False
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      object Edit2: TEdit
        Left = 32
        Top = 40
        Width = 121
        Height = 21
        TabOrder = 0
        Text = 'Edit1'
      end
      object Button3: TButton
        Left = 174
        Top = 40
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 1
        OnClick = Button1Click
      end
      object DBGrid2: TDBGrid
        Left = 32
        Top = 71
        Width = 257
        Height = 93
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            Visible = True
          end
          item
            Expanded = False
            Visible = True
          end
          item
            Expanded = False
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 317
        Top = 32
        Width = 185
        Height = 129
        Caption = 'Panel1'
        TabOrder = 3
        object Button4: TButton
          Left = 54
          Top = 24
          Width = 75
          Height = 25
          Caption = 'Button1'
          TabOrder = 0
          OnClick = Button1Click
        end
        object Edit3: TEdit
          Left = 32
          Top = 72
          Width = 121
          Height = 21
          TabOrder = 1
          Text = 'Edit1'
        end
      end
    end
  end
  object CantObjectDebugger1: TCantObjectDebugger
    OnTop = False
    Copyright = 'Marco Cant'#249' 1996-2016'
    Left = 344
    Top = 16
  end
end
