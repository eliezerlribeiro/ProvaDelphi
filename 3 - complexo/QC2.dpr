program QC2;

uses
  uComponente in 'uComponente.pas',
  uFrame in 'uFrame.pas',
  uBotao in 'uBotao.pas',
  uMemo in 'uMemo.pas',
  uLabel in 'uLabel.pas';

{$R *.RES}

var
  FrameEx : TFrame;
  BotaoEx : TBotao;
  MemoEx  : TMemo;
  LabelEx : TLabel;
begin
  FrameEx         := TFrame.Create;
  FrameEx.Altura  := 50;
  FrameEx.Largura := 100;
  FrameEx.PosX    := 0;
  FrameEx.PosY    := 0;

  BotaoEx         := TBotao.Create;
  BotaoEx.Altura  := 10;
  BotaoEx.Largura := 30;
  BotaoEx.PosX    := 3;
  BotaoEx.PosY    := 3;
  FrameEx.AdicionaComponente(BotaoEx);

  MemoEx         := TMemo.Create;
  MemoEx.Altura  := 10;
  MemoEx.Largura := 30;
  MemoEx.PosX    := 3;
  MemoEx.PosY    := 3;
  FrameEx.AdicionaComponente(MemoEx);

  LabelEx         := TLabel.Create;
  LabelEx.Altura  := 10;
  LabelEx.Largura := 30;
  LabelEx.PosX    := 3;
  LabelEx.PosY    := 3;
  FrameEx.AdicionaComponente(LabelEx);

  FrameEx.Altura  := 100;
  FrameEx.Largura := 150;

  FrameEx.RemoveComponente(LabelEx);
end.

