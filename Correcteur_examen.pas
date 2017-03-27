unit Correcteur_examen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Mliste: TMemo;
    Msaisie: TMemo;
    Minconnue: TMemo;
    Bverification: TButton;
    procedure FormCreate(Sender: TObject);
    procedure MsaisieClick(Sender: TObject);
    procedure BverificationClick(Sender: TObject);
    function  verification ( mot: string):boolean;

  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}

{procedure TForm1.BverificationClick(Sender: TObject);
var
  i: Integer;
  Texte: String;
  Mot: String;
  NbCar: Integer;
begin
   Mot:='';
   NbCar:=0;
  for i := 0 to length(Msaisie.lines.Text)-1 do
  begin
    if (Msaisie.Lines.Text[i]) = (' ') then
      begin
       Msaisie.Lines.Add(Mot+inttostr(nbcar));
       NbCar:=0;  //Reset de la variable contenant le nombre de caractères lorsqu'on rencontre un espace
      end;
      if (Msaisie.Lines.Text <> Mliste.Lines.text) then
        begin
        Minconnue.Lines.text:=Msaisie.Lines.Text;


        end;






  end;


end; }
function TForm1.verification( mot: string) : boolean;
var
  Motdelaligne:string;
  i:integer;
begin
  verification := true;
  Motdelaligne:=Mliste.Lines[0];
  for i := 0 to Mliste.Lines.Count - 1  do
    begin
        if (Motdelaligne=mot)  then
          verification:=true
        else
          verification:=false;

    end;


end;
procedure TForm1.BverificationClick(Sender: TObject);

var
  txt:string ;
  mot:string;
  i:integer;
begin

  txt:=Msaisie.Lines.Text;
  mot:= (' ');
    for i := 0 to length(txt)  do
    begin
     if (txt[i]=(' ')) then
      begin
       if verification(mot) = false  then
        begin
        Minconnue.Lines.Text:=Minconnue.Lines.Text+mot;
        mot:=(' ');
        end
        else  if txt[i] = ('.') then
        begin
        if verification(mot) = false then
         Minconnue.Lines.text:=Minconnue.Lines.Text+mot;
         mot:=(' ');
        end;
     end
     else
     mot := mot + txt[i];








    end;

end;




procedure TForm1.FormCreate(Sender: TObject);
begin
Msaisie.Lines.Text:=('veuiller saisir une phrase :');
Minconnue.lines.text:=('Les mots faux sont : '+chr(10)+chr(13));
Mliste.lines.LoadFromFile('C:\Users\Arthur BARTHLEN\Desktop\Projet_RAD\Exam\Liste_correction.txt');
end;

procedure TForm1.MsaisieClick(Sender: TObject);
begin
  Msaisie.Lines.Text:=('');
  //Stock:=Msaisie.lines.text;

end;

end.
