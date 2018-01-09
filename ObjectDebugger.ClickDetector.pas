unit ObjectDebugger.ClickDetector;

interface

uses
  Vcl.Controls, Vcl.AppEvnts, Vcl.Forms, WinApi.Messages, WinApi.Windows,
  System.Classes, ObjectDebugger.Inspector;

type
  TClickDetector = class
  private
    FApplicationEvents: TApplicationEvents;
    FObjectInspector: IObjectInspector;

    procedure OnMessageApplicationEvents(var Msg: tagMSG; var Handled: Boolean);
  public
    constructor Create(parent: TComponent; objectInspector: IObjectInspector);
    destructor Destroy; override;
  end;

implementation

constructor TClickDetector.Create(parent: TComponent; objectInspector: IObjectInspector);
begin
  inherited Create;

  FApplicationEvents := TApplicationEvents.Create(parent);
  FApplicationEvents.OnMessage := OnMessageApplicationEvents;
  FObjectInspector := objectInspector;
end;

destructor TClickDetector.Destroy;
begin
  FObjectInspector := nil;
  FApplicationEvents.OnMessage := nil;

  inherited;
end;

procedure TClickDetector.OnMessageApplicationEvents(var Msg: tagMSG; var Handled: Boolean);
begin
  if (Msg.message = WM_LBUTTONDOWN) and
    ((Msg.wParam and MK_CONTROL) = MK_CONTROL) then
  begin
//    FObjectInspector.Inspect(controlClicked);
    Msg.message := 0;
  end;
end;


end.
