inherited FuncionarioCons: TFuncionarioCons
  Caption = 'Funcion'#225'rios'
  ExplicitWidth = 992
  ExplicitHeight = 548
  TextHeight = 15
  inherited Panel1: TPanel
    inherited btnExcluir: TSpeedButton
      Left = 900
      Visible = False
    end
    inherited btnSalvar: TSpeedButton
      Left = 820
      Visible = False
      ExplicitTop = 0
    end
    inherited btnCancelar: TSpeedButton
      Left = 740
    end
    inherited btnEditar: TSpeedButton
      Left = 660
      Visible = False
    end
    inherited btNovo: TSpeedButton
      Left = 580
      Visible = False
      ExplicitLeft = 584
      ExplicitTop = 0
    end
  end
  inherited CardPanelLista: TCardPanel
    inherited CardLista: TCard
      Width = 978
      Height = 467
      inherited pnlGrid: TPanel
        Width = 978
        Height = 394
        inherited gridConsulta: TDBGrid
          Width = 976
          Height = 392
          DataSource = DataSource
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          Columns = <
            item
              Expanded = False
              FieldName = 'IDFUNCIONARIO'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IDEMPRESA'
              Title.Caption = 'C'#243'd. Empresa'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NMFUNCIONARIO'
              Title.Caption = 'Nome'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUCPF'
              Title.Caption = 'CPF'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NURG'
              Title.Caption = 'RG'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTNASCIMENTO'
              Title.Caption = 'Data Nascimento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TXEMAIL'
              Title.Caption = 'Email'
              Visible = True
            end>
        end
      end
      inherited pnlFiltro: TPanel
        Width = 978
        inherited lblFiltro: TLabel
          Width = 33
          Caption = 'Nome'
          Font.Color = clWhite
          ParentFont = False
          ExplicitWidth = 33
        end
        inherited editFiltro: TEdit
          OnChange = editFiltroChange
        end
      end
    end
    inherited CardCadastro: TCard
      Width = 978
      Height = 467
    end
  end
  inherited DataSource: TDataSource
    DataSet = Conexao.SQLFuncionarios
  end
end
