object Conexao: TConexao
  Height = 264
  Width = 408
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=C:\Users\Hemili\Downloads\Projeto Extra\DB\DADOS.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 96
    Top = 24
  end
  object SQLEmpresa: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'SELECT *'
      'FROM CADEMPRESA'
      'WHERE STEXCLUIDO = '#39'N'#39
      'ORDER BY IDEMPRESA'
      '')
    Left = 96
    Top = 112
    object SQLEmpresaIDEMPRESA: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDEMPRESA'
      Origin = 'IDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLEmpresaNMEMPRESA: TStringField
      FieldName = 'NMEMPRESA'
      Origin = 'NMEMPRESA'
      Size = 100
    end
    object SQLEmpresaNUCNPJ: TStringField
      FieldName = 'NUCNPJ'
      Origin = 'NUCNPJ'
      Size = 18
    end
    object SQLEmpresaNUINSCRICAO: TStringField
      FieldName = 'NUINSCRICAO'
      Origin = 'NUINSCRICAO'
      Size = 15
    end
    object SQLEmpresaSTATIVO: TStringField
      FieldName = 'STATIVO'
      Origin = 'STATIVO'
      FixedChar = True
      Size = 1
    end
    object SQLEmpresaDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
      Origin = 'DTCADASTRO'
    end
    object SQLEmpresaDTABERTURA: TDateField
      FieldName = 'DTABERTURA'
      Origin = 'DTABERTURA'
    end
    object SQLEmpresaTLCOMERCIAL: TStringField
      FieldName = 'TLCOMERCIAL'
      Origin = 'TLCOMERCIAL'
      Size = 15
    end
    object SQLEmpresaTLCELULAR: TStringField
      FieldName = 'TLCELULAR'
      Origin = 'TLCELULAR'
      Size = 15
    end
    object SQLEmpresaTXOBS: TIntegerField
      FieldName = 'TXOBS'
      Origin = 'TXOBS'
    end
    object SQLEmpresaTXEMAIL: TStringField
      FieldName = 'TXEMAIL'
      Origin = 'TXEMAIL'
      Size = 100
    end
    object SQLEmpresaSTEXCLUIDO: TStringField
      FieldName = 'STEXCLUIDO'
      Origin = 'STEXCLUIDO'
      FixedChar = True
      Size = 1
    end
    object SQLEmpresaDTEXCLUIDO: TDateField
      FieldName = 'DTEXCLUIDO'
      Origin = 'DTEXCLUIDO'
    end
  end
  object SQLFuncionarios: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'SELECT * '
      'FROM CADFUNCIONARIOS'
      'WHERE IDEMPRESA = :IDEMPRESA'
      'ORDER BY IDFUNCIONARIO')
    Left = 232
    Top = 24
    ParamData = <
      item
        Name = 'IDEMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object SQLFuncionariosIDFUNCIONARIO: TIntegerField
      FieldName = 'IDFUNCIONARIO'
      Origin = 'IDFUNCIONARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLFuncionariosIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Origin = 'IDEMPRESA'
    end
    object SQLFuncionariosNMFUNCIONARIO: TStringField
      FieldName = 'NMFUNCIONARIO'
      Origin = 'NMFUNCIONARIO'
      Size = 100
    end
    object SQLFuncionariosNUCPF: TStringField
      FieldName = 'NUCPF'
      Origin = 'NUCPF'
      Size = 18
    end
    object SQLFuncionariosNURG: TStringField
      FieldName = 'NURG'
      Origin = 'NURG'
      Size = 15
    end
    object SQLFuncionariosDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
      Origin = 'DTNASCIMENTO'
    end
    object SQLFuncionariosTXEMAIL: TStringField
      FieldName = 'TXEMAIL'
      Origin = 'TXEMAIL'
      Size = 100
    end
    object SQLFuncionariosNUCARTEIRATRAB: TStringField
      FieldName = 'NUCARTEIRATRAB'
      Origin = 'NUCARTEIRATRAB'
    end
    object SQLFuncionariosNUTITULOELEITOR: TStringField
      FieldName = 'NUTITULOELEITOR'
      Origin = 'NUTITULOELEITOR'
      Size = 12
    end
    object SQLFuncionariosNUCARTEIRAMOTORISTA: TStringField
      FieldName = 'NUCARTEIRAMOTORISTA'
      Origin = 'NUCARTEIRAMOTORISTA'
      Size = 15
    end
    object SQLFuncionariosTPCATERORIA: TStringField
      FieldName = 'TPCATERORIA'
      Origin = 'TPCATERORIA'
      Size = 4
    end
    object SQLFuncionariosDTVALIDADECARTEIRAMOT: TDateField
      FieldName = 'DTVALIDADECARTEIRAMOT'
      Origin = 'DTVALIDADECARTEIRAMOT'
    end
    object SQLFuncionariosTLRESIDENCIAL: TStringField
      FieldName = 'TLRESIDENCIAL'
      Origin = 'TLRESIDENCIAL'
      Size = 15
    end
    object SQLFuncionariosTLCELULAR: TStringField
      FieldName = 'TLCELULAR'
      Origin = 'TLCELULAR'
      Size = 15
    end
    object SQLFuncionariosTLCONTATO: TStringField
      FieldName = 'TLCONTATO'
      Origin = 'TLCONTATO'
      Size = 15
    end
    object SQLFuncionariosNMCONTATO: TStringField
      FieldName = 'NMCONTATO'
      Origin = 'NMCONTATO'
      Size = 50
    end
    object SQLFuncionariosDTCONTRATACAO: TDateField
      FieldName = 'DTCONTRATACAO'
      Origin = 'DTCONTRATACAO'
    end
    object SQLFuncionariosDTDEMISSAO: TDateField
      FieldName = 'DTDEMISSAO'
      Origin = 'DTDEMISSAO'
    end
    object SQLFuncionariosDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
      Origin = 'DTCADASTRO'
    end
    object SQLFuncionariosSTATIVO: TStringField
      FieldName = 'STATIVO'
      Origin = 'STATIVO'
      FixedChar = True
      Size = 1
    end
    object SQLFuncionariosTXOBS: TStringField
      FieldName = 'TXOBS'
      Origin = 'TXOBS'
      Size = 1000
    end
    object SQLFuncionariosNMENDERECO: TStringField
      FieldName = 'NMENDERECO'
      Origin = 'NMENDERECO'
      Size = 100
    end
    object SQLFuncionariosNUENDERECO: TStringField
      FieldName = 'NUENDERECO'
      Origin = 'NUENDERECO'
      Size = 10
    end
    object SQLFuncionariosNMBAIRRO: TStringField
      FieldName = 'NMBAIRRO'
      Origin = 'NMBAIRRO'
      Size = 100
    end
    object SQLFuncionariosIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
      Origin = 'IDCIDADE'
    end
    object SQLFuncionariosIDUF: TIntegerField
      FieldName = 'IDUF'
      Origin = 'IDUF'
    end
    object SQLFuncionariosNUCEP: TStringField
      FieldName = 'NUCEP'
      Origin = 'NUCEP'
      Size = 10
    end
    object SQLFuncionariosSTEXCLUIDO: TStringField
      FieldName = 'STEXCLUIDO'
      Origin = 'STEXCLUIDO'
      FixedChar = True
      Size = 1
    end
    object SQLFuncionariosDTEXCLUIDO: TDateField
      FieldName = 'DTEXCLUIDO'
      Origin = 'DTEXCLUIDO'
    end
  end
  object SQLEnderecos: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT *'
      'FROM CADENDERECOS'
      'WHERE IDEMPRESA = :IDEMPRESA')
    Left = 232
    Top = 112
    ParamData = <
      item
        Name = 'IDEMPRESA'
        ParamType = ptInput
      end>
    object SQLEnderecosIDENDERECO: TIntegerField
      FieldName = 'IDENDERECO'
      Origin = 'IDENDERECO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLEnderecosIDTITULAR: TIntegerField
      FieldName = 'IDTITULAR'
      Origin = 'IDTITULAR'
    end
    object SQLEnderecosIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Origin = 'IDEMPRESA'
    end
    object SQLEnderecosNMENDERECO: TStringField
      FieldName = 'NMENDERECO'
      Origin = 'NMENDERECO'
      Size = 100
    end
    object SQLEnderecosNUENDERECO: TStringField
      FieldName = 'NUENDERECO'
      Origin = 'NUENDERECO'
      Size = 10
    end
    object SQLEnderecosNMBAIRRO: TStringField
      FieldName = 'NMBAIRRO'
      Origin = 'NMBAIRRO'
      Size = 50
    end
    object SQLEnderecosIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
      Origin = 'IDCIDADE'
    end
    object SQLEnderecosIDUF: TIntegerField
      FieldName = 'IDUF'
      Origin = 'IDUF'
    end
    object SQLEnderecosNUCEP: TStringField
      FieldName = 'NUCEP'
      Origin = 'NUCEP'
      Size = 10
    end
    object SQLEnderecosSTATIVO: TStringField
      FieldName = 'STATIVO'
      Origin = 'STATIVO'
      FixedChar = True
      Size = 1
    end
    object SQLEnderecosSTEXCLUIDO: TStringField
      FieldName = 'STEXCLUIDO'
      Origin = 'STEXCLUIDO'
      FixedChar = True
      Size = 1
    end
    object SQLEnderecosDTEXCLUIDO: TDateField
      FieldName = 'DTEXCLUIDO'
      Origin = 'DTEXCLUIDO'
    end
    object SQLEnderecosTPCADASTRO: TStringField
      FieldName = 'TPCADASTRO'
      Origin = 'TPCADASTRO'
      FixedChar = True
      Size = 1
    end
  end
end
