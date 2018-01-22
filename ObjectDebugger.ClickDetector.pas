(***************************************************************************************************
The MIT License (MIT)

Copyright (c) 2018 Alessandro Fragnani

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and 
associated documentation files (the "Software"), to deal in the Software without restriction, 
including without limitation the rights to use, copy, modify, merge, publish, distribute, 
sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is 
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or 
substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT 
NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND 
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, 
DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
***************************************************************************************************)

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
