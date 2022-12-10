unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
i,r:integer;
begin
memo1.Clear;
for I := 1 to 100 do
  begin
    if 0 = (i mod 15)  then memo1.Lines.Add('FizzBuzz')
      else
        if 0 = (i mod 5)  then memo1.Lines.Add('Buzz')
          else
            if 0 = (i mod 3)  then memo1.Lines.Add('Fizz')
              else memo1.Lines.Add(inttostr(i));
  end;
end;

end.
