unit uFrame;

interface

uses
  uComponente;

type

  TFrame = class(TComponente)
  protected
    procedure SetAltura (aAltura : Integer); override;
    procedure SetLargura(aLargura : Integer); override;

  public
    procedure AdicionaComponente(aComponente: TComponente); override;
    procedure RemoveComponente(aComponente: TComponente); override;

  end;

implementation
uses
 uMemo, uBotao;

procedure TFrame.AdicionaComponente(aComponente: TComponente);
var
  nIndex           : Integer;
  LocalComponentes : TComponenteArray;
begin
  LocalComponentes := Componentes;
  nIndex := Length(LocalComponentes);
  SetLength(LocalComponentes, nIndex + 1);
  LocalComponentes[nIndex] := aComponente;

  Componentes := LocalComponentes;
end;

procedure TFrame.RemoveComponente(aComponente: TComponente);
var
  nIndex : Integer;
  bFound : Boolean;
  LocalComponentes : TComponenteArray;
begin
  LocalComponentes := Componentes;
  bFound := False;
  for nIndex := 0 to Length(LocalComponentes) - 1 do
    begin
	  if bFound then
	    LocalComponentes[nIndex - 1] := LocalComponentes[nIndex]
	  else if LocalComponentes[nIndex] = aComponente then
	    bFound := True;
    end;
	
  if bFound then
    SetLength(LocalComponentes, Length(LocalComponentes) - 1);

  Componentes := LocalComponentes;
end;

procedure TFrame.SetAltura(aAltura : Integer);
var
  nIndex     : Integer;
  dProporcao : Double;  
begin
  if (Altura <> 0)
    then dProporcao := aAltura / Altura
    else dProporcao := 1;

  for nIndex := 0 to Length(Componentes) - 1 do
    begin  
      if (Componentes[nIndex] is TMemo) or (Componentes[nIndex] is TFrame) then
        begin

          Componentes[nIndex].Altura := Trunc(Componentes[nIndex].Altura * dProporcao);
        end;
      Componentes[nIndex].PosY := Trunc(Componentes[nIndex].PosY * dProporcao);
	  end;

  inherited;
end;

procedure TFrame.SetLargura(aLargura : Integer);
var
  nIndex     : Integer;
  dProporcao : Double;
begin
  if (Largura <> 0)
    then dProporcao := aLargura / Largura
    else dProporcao := 1;

  for nIndex := 0 to Length(Componentes) - 1 do
    begin  
      if (Componentes[nIndex] is TBotao) or (Componentes[nIndex] is TMemo) or (Componentes[nIndex] is TFrame) then
        begin
          Componentes[nIndex].Largura := Trunc(Componentes[nIndex].Largura * dProporcao);
        end;
      Componentes[nIndex].PosX := Trunc(Componentes[nIndex].PosX * dProporcao);
	  end;

  inherited;
end;

end.

