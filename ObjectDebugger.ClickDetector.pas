unit ObjectDebugger.ClickDetector;

interface

uses
  Vcl.Controls, Vcl.AppEvnts, Vcl.Forms, WinApi.Messages, WinApi.Windows,
  System.Classes;

type
  TClickDetector = class
  private
    FApplicationEvents: TApplicationEvents;

    procedure OnMessageApplicationEvents(var Msg: tagMSG; var Handled: Boolean);
  public
    constructor Create(parent: TComponent);
    destructor Destroy; override;
  end;

implementation

constructor TClickDetector.Create(parent: TComponent);
begin
  inherited Create;

  FApplicationEvents := TApplicationEvents.Create(parent);
  FApplicationEvents.OnMessage := OnMessageApplicationEvents;
end;

destructor TClickDetector.Destroy;
begin
  FApplicationEvents.OnMessage := nil;

  inherited;
end;

procedure TClickDetector.OnMessageApplicationEvents(var Msg: tagMSG; var Handled: Boolean);
begin
  if (Msg.message = WM_LBUTTONDOWN) and
    ((Msg.wParam and MK_CONTROL) = MK_CONTROL) then
  begin
    Msg.message := 0;
  end;
end;


end.
