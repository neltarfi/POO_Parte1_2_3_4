unit uMeioTransporte;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type

  { TMeioTransporte }

  TMeioTransporte = class
    Descricao : string;
    Capacidade : integer;
    procedure Mover; virtual;
    procedure Ligar; virtual; abstract;
    constructor create();
  end;

implementation

uses
  Dialogs;

procedure TMeioTransporte.Mover;
begin
  Ligar();
end;

constructor TMeioTransporte.create();
begin
     inherited;
     Capacidade := 0;
     Descricao := 'Sem Nome';
end;

end.

