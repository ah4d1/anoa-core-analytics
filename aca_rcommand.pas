unit aca_rcommand;

{**************************************************************
*  A Part of Anoa-Core-Analytics                              *
*  See https://github.com/ah4d1/anoa-core-analytics           *
**************************************************************}

interface

uses
  Classes, SysUtils;

type
  TAcaRCommand = class(TComponent)
  public
  end;

var
  vacaRCommand : TAcaRCommand;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('AnoaCoreAnalytics',[TAcaRCommand]);
end;

end.

