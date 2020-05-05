unit uPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, uCarro, uAviao;

type

  { TfrmPrincipal }

  TfrmPrincipal = class(TForm)
    btCaCriar: TButton;
    btCriarAviao: TButton;
    btCaLiberar: TButton;
    btLiberarAviao: TButton;
    btMoverCarro: TButton;
    btMoverAviao: TButton;
    edtCapAviao: TEdit;
    edtDescCarro: TEdit;
    edtCapCarro: TEdit;
    edtDescAviao: TEdit;
    edtQuilometragem: TEdit;
    edtHorasVoo: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure btCaLiberarClick(Sender: TObject);
    procedure btCriarAviaoClick(Sender: TObject);
    procedure btCaCriarClick(Sender: TObject);
    procedure btLiberarAviaoClick(Sender: TObject);
    procedure btMoverAviaoClick(Sender: TObject);
    procedure btMoverCarroClick(Sender: TObject);
  private

  public
        Carro:TCarro;
        Aviao:TAviao;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.lfm}

{ TfrmPrincipal }


procedure TfrmPrincipal.btCaCriarClick(Sender: TObject);
begin
    // cria o objeto e inicializa campos conforme valores dos edits
    Carro:=TCarro.Create;
    if EdtDescCarro.Text<>'' then
       Carro.Descricao:=EdtDescCarro.Text;
    if EdtCapCarro.Text<>'' then
       Carro.Capacidade:=StrToIntDef(EdtCapCarro.Text,0);
    if EdtQuilometragem.Text<>'' then
       Carro.Quilometragem:=StrToIntDef(EdtQuilometragem.Text,0);
end;

procedure TfrmPrincipal.btLiberarAviaoClick(Sender: TObject);
begin
     Aviao.Free; // ou FreeAndNil(Aviao)
end;

procedure TfrmPrincipal.btMoverAviaoClick(Sender: TObject);
begin
     Aviao.Mover();
end;

procedure TfrmPrincipal.btMoverCarroClick(Sender: TObject);
begin
     Carro.Mover();
end;

procedure TfrmPrincipal.btCriarAviaoClick(Sender: TObject);
begin
     // cria o objeto e inicia campos conforme valores dos edits
    Aviao:=TAviao.Create;
    if EdtDescAviao.Text<>'' then
       Aviao.Descricao:=EdtDescAviao.Text;
    if EdtCapAviao.Text<>'' then
       Aviao.Capacidade:=StrToIntDef(EdtCapAviao.Text,0);
    if EdtHorasVoo.Text<>'' then
       Aviao.HorasVoo:=StrToIntDef(EdtHorasVoo.Text,0);
end;

procedure TfrmPrincipal.btCaLiberarClick(Sender: TObject);
begin
     Carro.Free; // ou FreeAndNil(Carro)
end;

end.

