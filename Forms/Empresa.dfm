inherited EmpresaCons: TEmpresaCons
  Caption = 'Consulta de Empresa'
  ClientHeight = 638
  ClientWidth = 649
  OnCreate = FormCreate
  ExplicitWidth = 661
  ExplicitHeight = 676
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 597
    Width = 649
    ExplicitLeft = 0
    ExplicitTop = 596
    ExplicitWidth = 1137
    inherited btnExcluir: TSpeedButton
      Left = 569
      OnClick = btnExcluirClick
      ExplicitLeft = 595
    end
    inherited btnSalvar: TSpeedButton
      Left = 489
      OnClick = btnSalvarClick
      ExplicitLeft = 515
    end
    inherited btnCancelar: TSpeedButton
      Left = 409
      ExplicitLeft = 435
    end
    inherited btnEditar: TSpeedButton
      Left = 329
      OnClick = btnEditarClick
      ExplicitLeft = 355
    end
    inherited btNovo: TSpeedButton
      Left = 249
      OnClick = btNovoClick
      ExplicitLeft = 275
    end
  end
  inherited CardPanelLista: TCardPanel
    Width = 649
    Height = 597
    ExplicitTop = 0
    ExplicitWidth = 1137
    ExplicitHeight = 596
    inherited CardLista: TCard
      Width = 647
      Height = 595
      ExplicitWidth = 1139
      ExplicitHeight = 595
      inherited pnlGrid: TPanel
        Width = 647
        Height = 522
        ExplicitTop = 73
        ExplicitWidth = 1139
        ExplicitHeight = 522
        inherited gridConsulta: TDBGrid
          Width = 645
          Height = 520
          DataSource = DataSource
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          PopupMenu = Menu
          Columns = <
            item
              Expanded = False
              FieldName = 'IDEMPRESA'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NMEMPRESA'
              Title.Caption = 'Nome'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUCNPJ'
              Title.Caption = 'CNPJ'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUINSCRICAO'
              Title.Caption = 'Inscri'#231#227'o'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TXOBS'
              Title.Caption = 'OBS'
              Width = 230
              Visible = True
            end>
        end
      end
      inherited pnlFiltro: TPanel
        Width = 647
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 1139
        inherited lblFiltro: TLabel
          Width = 33
          Caption = 'Nome'
          Font.Color = clWhite
          ParentFont = False
          ExplicitWidth = 33
        end
        inherited editFiltro: TEdit
          Left = 65
          OnChange = editFiltroChange
          ExplicitLeft = 65
        end
      end
    end
    inherited CardCadastro: TCard
      Width = 647
      Height = 595
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 1135
      ExplicitHeight = 594
      object Label2: TLabel
        Left = 8
        Top = 8
        Width = 33
        Height = 15
        Caption = 'Nome'
        FocusControl = editNome
      end
      object Label3: TLabel
        Left = 348
        Top = 8
        Width = 27
        Height = 15
        Caption = 'CNPJ'
        FocusControl = editCNPJ
      end
      object Label4: TLabel
        Left = 8
        Top = 62
        Width = 47
        Height = 15
        Caption = 'Inscri'#231#227'o'
        FocusControl = editInscricao
      end
      object Label5: TLabel
        Left = 348
        Top = 62
        Width = 101
        Height = 15
        Caption = 'Telefone Comercial'
        FocusControl = editTelefone
      end
      object Label6: TLabel
        Left = 8
        Top = 115
        Width = 37
        Height = 15
        Caption = 'Celular'
        FocusControl = editCelular
      end
      object Label7: TLabel
        Left = 348
        Top = 115
        Width = 34
        Height = 15
        Caption = 'E-mail'
        FocusControl = editEmail
      end
      object Label8: TLabel
        Left = 8
        Top = 177
        Width = 22
        Height = 15
        Caption = 'OBS'
      end
      object editNome: TDBEdit
        Left = 8
        Top = 29
        Width = 274
        Height = 23
        DataField = 'NMEMPRESA'
        DataSource = DataSource
        TabOrder = 0
      end
      object editCNPJ: TDBEdit
        Left = 348
        Top = 29
        Width = 274
        Height = 23
        DataField = 'NUCNPJ'
        DataSource = DataSource
        TabOrder = 1
      end
      object editInscricao: TDBEdit
        Left = 8
        Top = 83
        Width = 229
        Height = 23
        DataField = 'NUINSCRICAO'
        DataSource = DataSource
        TabOrder = 2
      end
      object editTelefone: TDBEdit
        Left = 348
        Top = 83
        Width = 229
        Height = 23
        DataField = 'TLCOMERCIAL'
        DataSource = DataSource
        TabOrder = 3
      end
      object editCelular: TDBEdit
        Left = 8
        Top = 138
        Width = 229
        Height = 23
        DataField = 'TLCELULAR'
        DataSource = DataSource
        TabOrder = 4
      end
      object editEmail: TDBEdit
        Left = 348
        Top = 138
        Width = 274
        Height = 23
        DataField = 'TXEMAIL'
        DataSource = DataSource
        TabOrder = 5
      end
      object editObs: TDBEdit
        Left = 8
        Top = 201
        Width = 614
        Height = 23
        DataField = 'TXOBS'
        DataSource = DataSource
        TabOrder = 6
      end
      object pnlEndereco: TPanel
        Left = -1
        Top = 240
        Width = 623
        Height = 350
        Align = alCustom
        TabOrder = 7
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 54
          Height = 15
          Caption = 'Endere'#231'os'
        end
        object gridEndereco: TDBGrid
          Left = 8
          Top = 40
          Width = 614
          Height = 289
          DataSource = dsEnderecos
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'STATIVO'
              Title.Caption = 'Ativo'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NMENDERECO'
              ReadOnly = True
              Title.Caption = 'Nome'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUENDERECO'
              ReadOnly = True
              Title.Caption = 'Numero'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NMBAIRRO'
              ReadOnly = True
              Title.Caption = 'Bairro'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IDCIDADE'
              ReadOnly = True
              Title.Caption = 'Cidade'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IDUF'
              ReadOnly = True
              Title.Caption = 'UF'
              Width = 20
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUCEP'
              ReadOnly = True
              Title.Caption = 'CEP'
              Visible = True
            end>
        end
      end
    end
  end
  inherited DataSource: TDataSource
    DataSet = Conexao.SQLEmpresa
    Left = 584
    Top = 88
  end
  object dsEnderecos: TDataSource
    Left = 584
    Top = 160
  end
  object Menu: TPopupMenu
    Left = 584
    Top = 224
    object Rastrearfornecedores1: TMenuItem
      Action = FuncionarioAction
    end
  end
  object ActionList: TActionList
    Left = 584
    Top = 288
    object FuncionarioAction: TAction
      Caption = 'Rastrear Funcion'#225'rios'
      OnExecute = FuncionarioActionExecute
    end
  end
end
