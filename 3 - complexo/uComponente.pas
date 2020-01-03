unit uComponente;

interface

type

  TComponente = class;

  TComponenteArray = array of TComponente;

  TComponente = class
  private
    FX: Integer;
    FY: Integer;
    FAltura: Integer;
    FLargura: Integer;
    FComponentes: TComponenteArray;

  protected
    procedure SetAltura (aAltura : Integer); virtual;
    procedure SetLargura(aLargura : Integer); virtual;

  public
    property  Altura      : Integer          read FAltura       write SetAltura;
    property  Largura     : Integer          read FLargura      write SetLargura;
    property  PosX	      : Integer          read FX            write FX;
    property  PosY	      : Integer          read FY            write FY;
    property  Componentes : TComponenteArray read FComponentes  write FComponentes;
	
    procedure AdicionaComponente(aComponente: TComponente); virtual;
    procedure RemoveComponente(aComponente: TComponente); virtual;
  end;

implementation

procedure TComponente.AdicionaComponente(aComponente: TComponente);
begin    
end;

procedure TComponente.RemoveComponente(aComponente: TComponente);
begin    
end;

procedure TComponente.SetAltura(aAltura : Integer);
begin    
  FAltura := aAltura;
end;

procedure TComponente.SetLargura(aLargura : Integer);
begin    
  FLargura := aLargura;
end;
  
end.

