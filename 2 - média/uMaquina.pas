unit uMaquina;

interface

uses
  uIMaquina, Classes, uTroco;

type

  TMaquina = class(TInterfacedObject, IMaquina)
  public
    function MontarTroco(aTroco: Double): TList;
  end;

implementation

function TMaquina.MontarTroco(aTroco: Double): TList;
var
  cCedula   : TCedula;
  itemTroco : TTroco;
  nQtd      : Integer;  
begin
  Result := TList.Create;

  for cCedula := ceNota100 to ceMoeda1 do
    begin
     if (aTroco > CValorCedula[cCedula]) then
        begin
          nQtd   := Trunc(aTroco / CValorCedula[cCedula]);
          aTroco := aTroco - (CValorCedula[cCedula] * nQtd);
          Result.Add(TTroco.Create(cCedula, nQtd));
        end;
    end;
end;

end.

