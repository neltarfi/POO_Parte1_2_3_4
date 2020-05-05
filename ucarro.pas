unit uCarro;

interface

uses
  // coloque essa unit p/ acessar a classe TMeioTransporte
  uMeioTransporte;

type
 // observe que TCarro agora herda de TMeioTransporte

  { TCarro }

  TCarro = class(TMeioTransporte)
  // observe que retiramos os campos Capacidade e Descricao daqui
    Quilometragem : integer;
    procedure Mover(); override;
    procedure Ligar(); override;
    constructor creat();
  end;

implementation

uses Dialogs;
{ TCarro }

procedure TCarro.Ligar();
begin
  // repare que não vai inherited aqui
  // pois não existe nada na classe base
  ShowMessage('Ligando o carro ' + Descricao);
end;

constructor TCarro.creat();
begin
     inherited; // chama o construtor da classe base
     Quilometragem := 0;
end;

procedure TCarro.Mover();
begin
  inherited; // isso vai chamar o Ligar
  ShowMessage(Descricao + ' entrou em movimento.');
end;

end.
