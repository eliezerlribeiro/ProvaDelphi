unit uSubstitui;

interface

uses
  uISubstitui;

type

  TSubstitui = class(TInterfacedObject, ISubstitui)
  public
    function Substituir(aStr, aVelho, aNovo: String): String;
  end;

implementation

//Ex.: string “O rato roeu a roupa do rei de roma”
//       velha: “ro”
//       nova: “teste”
//       retorno: “O rato testeeu a testeupa do rei de testema”
function TSubstitui.Substituir(aStr, aVelho, aNovo: String): String;
var
  strFindBuffer : String;
  nIndex        : Integer;
  nCount        : Integer;
begin
  strFindBuffer := '';
  Result        := '';
  nCount        := 1;
  nIndex        := 1;
  while nIndex <= Length(aStr) do
    begin
      if (nCount <= Length(aVelho)) and (aStr[nIndex] = aVelho[nCount]) then
        begin
          // avaliar uma substring
          strFindBuffer := strFindBuffer + aStr[nIndex];
          Inc(nCount);
          if (strFindBuffer = aVelho) then
            begin
              Result        := Result + aNovo;
              strFindBuffer := '';
              nCount        := 1;
            end;
        end
      else
        begin
          // Volto para o ponto antes antes de começar avaliar uma substring
          nIndex        := (nIndex - nCount) + 1;
          Result        := Result + aStr[nIndex];
          strFindBuffer := '';
          nCount        := 1;
        end;
      Inc(nIndex);
    end;
end;

end.

