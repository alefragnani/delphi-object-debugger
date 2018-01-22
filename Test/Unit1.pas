unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, ObjectDebuggerForm, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    DBGrid1: TDBGrid;
    Button2: TButton;
    CantObjectDebugger1: TCantObjectDebugger;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Edit2: TEdit;
    Button3: TButton;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    Button4: TButton;
    Edit3: TEdit;
    Panel2: TPanel;
    Button5: TButton;
    Edit4: TEdit;
    Button6: TButton;
    Edit5: TEdit;
    DBGrid3: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    FCantObjectDebugger: TCantObjectDebugger;
    procedure CantObjectDebuggerClose(Sender: TObject);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  showmessage(edit1.text);
  CantObjectDebugger1.Show;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if FCantObjectDebugger = nil then
    FCantObjectDebugger := TCantObjectDebugger.Create(nil);

  FCantObjectDebugger.AllowFormClose := true;
  FCantObjectDebugger.OnClose := CantObjectDebuggerClose;
end;

procedure TForm1.CantObjectDebuggerClose(Sender: TObject);
begin
 FCantObjectDebugger := nil;
end;

end.
