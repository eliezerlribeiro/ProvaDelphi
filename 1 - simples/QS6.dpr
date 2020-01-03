program QS6;

uses
  uISubstitui in 'uISubstitui.pas',
  uSubstitui in 'uSubstitui.pas';

{$R *.RES}

var
  ObjetoSubstituir : TSubstitui;
  ResultadoEsperado : String;
begin
  ResultadoEsperado := ObjetoSubstituir.Substituir('o rato roeu a roupa do rei de roma', 'ro', 'teste');
end.

