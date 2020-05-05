unit uAviao;

interface

uses
  // coloque essa unit p/ acessar a classe TMeioTransporte
  uMeioTransporte;

type
 // observe que TAviao agora herda de TMeioTransporte

  { TAviao }

  TAviao = class(TMeioTransporte)
  // observe que retiramos os campos Capacidade e Descricao daqui
    HorasVoo : integer;
    procedure Mover(); override;
    procedure Ligar(); override;
    constructor create();
  end;

implementation

uses Dialogs;
{ TAviao }

procedure TAviao.Ligar();
begin
  // repare que não vai inherited aqui
  // pois não existe nada na classe base
  ShowMessage('Ligando o aviao '+Descricao);
end;

constructor TAviao.create();
begin
     inherited; // chama o construtor da classe base
     HorasVoo := 0;
end;

procedure TAviao.Mover();
begin
  inherited; // isso vai chamar o Ligar
  ShowMessage(Descricao+' está voando.');
end;

end.
