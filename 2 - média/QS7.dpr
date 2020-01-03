program QS7;

uses
  uTroco in 'uTroco.pas',
  uIMaquina in 'uIMaquina.pas',
  uMaquina in 'uMaquina.pas',
  SysUtils,
  Classes;
{$R *.RES}

var
  itemMaquina : TMaquina;
  Resultado   : TList;
  nIndex      : Integer;
  itemTroco   : TTroco;
  strResult   : String;
begin
  itemMaquina := TMaquina.Create;
  Resultado   := itemMaquina.MontarTroco(125.15);
  if Resultado <> nil then
    begin
      for nIndex := 0 to Resultado.count - 1 do
        begin
          itemTroco := Resultado[nIndex];
          strResult := IntToStr(itemTroco.Quantidade) + ' nota de ' + IntToStr(CValorCedula[itemTroco.Tipo]) + ' - ' + itemTroco.ToString;
        end;
    end;
end.

