unit uTroco;

interface

type

  TCedula = (ceNota100, ceNota50, ceNota20, ceNota10, ceNota5, ceNota2, ceMoeda100, ceMoeda50, ceMoeda25, ceMoeda10, ceMoeda5, ceMoeda1);
  TCedulaHelper = record helper for TCedula
  public
    function ToString : String;
  end;

  TTroco = class
  private
    FTipo: TCedula;
    FQuantidade: Integer;
  public
    constructor Create(aTipo: TCedula; aQuantidade: Integer);
	
    property Tipo: TCedula read FTipo;
    property Quantidade: Integer read FQuantidade write FQuantidade;

    function ToString : String; override;
  end;

const
  CValorCedula: array [TCedula] of Double = (100, 50, 20, 10, 5, 2, 1, 0.5, 0.25, 0.1, 0.05, 0.01);

implementation

uses
  SysUtils;

constructor TTroco.Create(aTipo: TCedula; aQuantidade: Integer);
begin
  inherited Create;

  FTipo := aTipo;
  FQuantidade := aQuantidade;
end;

function TTroco.ToString : String;
begin
  Result := 'TTroco(' + FTipo.ToString +', '+ IntToStr(FQuantidade) + ')';
end;


function TCedulaHelper.ToString : String;
begin
  case self of
    ceNota100  : Result := 'ceNota100';
    ceNota50   : Result := 'ceNota50';
    ceNota20   : Result := 'ceNota20';
    ceNota10   : Result := 'ceNota10';
    ceNota5    : Result := 'ceNota5';
    ceNota2    : Result := 'ceNota2';
    ceMoeda100 : Result := 'ceMoeda100';
    ceMoeda50  : Result := 'ceMoeda50';
    ceMoeda25  : Result := 'ceMoeda25';
    ceMoeda10  : Result := 'ceMoeda10';
    ceMoeda5   : Result := 'ceMoeda5';
    ceMoeda1   : Result := 'ceMoeda1';
    else
      Result := '';
  end;
end;
end.

