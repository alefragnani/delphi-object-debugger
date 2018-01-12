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
    function DetectControlAtPosition(control: TControl; screenPosition, controlPosition: TPoint): TControl;
    function DetectControlAtMouseClick(form: TForm): TControl;
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

function TClickDetector.DetectControlAtPosition(control: TControl; screenPosition, controlPosition: TPoint): TControl;
var
  i: integer;
  oControl: TControl;
begin
  result := nil;

  if control = nil then
    Exit;

  if not control.BoundsRect.Contains(controlPosition) then
    Exit;

  result := control;
  if control is TWinControl then
  begin
    for i := 0 to TWinControl(control).ControlCount - 1 do
    begin
      oControl := DetectControlAtPosition(TWinControl(control).Controls[i],
        screenPosition, control.ScreenToClient(screenPosition));

      if oControl <> nil then
        result := oControl;
    end;
  end;
end;

function TClickDetector.DetectControlAtMouseClick(form: TForm): TControl;
begin
  result := DetectControlAtPosition(form, Mouse.CursorPos, Mouse.CursorPos);
end;

procedure TClickDetector.OnMessageApplicationEvents(var Msg: tagMSG; var Handled: Boolean);
var
  control: TControl;
begin
  if (Msg.message = WM_LBUTTONDOWN) and
    ((Msg.wParam and MK_CONTROL) = MK_CONTROL) then
  begin
    control := Self.DetectControlAtMouseClick(Screen.ActiveForm);
    if Assigned(control) then
    begin
      FObjectInspector.Inspect(control);
      Msg.message := 0;
    end;
  end;
end;


end.
