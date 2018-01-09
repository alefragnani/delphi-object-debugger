unit ObjectDebugger.Inspector;

interface

uses
  Vcl.Controls;

type
  IObjectInspector = interface
    ['{4447D78F-F8DE-49C0-81B5-29EF4ACAD476}']

    procedure Inspect(control: TControl);
  end;

implementation

end.
