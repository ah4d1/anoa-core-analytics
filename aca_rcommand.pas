unit aca_rcommand;

{**************************************************************
*  A Part of Anoa-Core-Analytics                              *
*  See https://github.com/ah4d1/anoa-core-analytics           *
**************************************************************}

interface

uses
  Classes, SysUtils;

type
  TAcaCommandType = (acaCmdDfStr);
  TCommonAcaRCommand = class(TComponent)
  private
    FDataframeIdentifier : string;
    FCommandType : TAcaCommandType;
    FMainCommand : string;
    procedure SetCommandType (AValue : TAcaCommandType);
    procedure SetMainCommand (AValue : string);
  public
    property vDataframeIdentifier : string read FDataframeIdentifier write FDataframeIdentifier;
    property vCommandType : TAcaCommandType read FCommandType write SetCommandType;
    property vMainCommand : string read FMainCommand write SetMainCommand;
    constructor Create (AOwner : TComponent);
  end;
  TAcaRCommand = class(TCommonAcaRCommand)

  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('AnoaCoreAnalytics',[TAcaRCommand]);
end;

constructor TCommonAcaRCommand.Create (AOwner : TComponent);
begin
  inherited Create(AOwner);
  Self.vDataframeIdentifier := 'df';
end;

procedure TCommonAcaRCommand.SetCommandType (AValue : TAcaCommandType);
begin
  Self.FCommandType := AValue;
  case Self.FCommandType of
    acaCmdDfStr : Self.vMainCommand := 'str(' + Self.vDataframeIdentifier + ')';
  end;
end;

procedure TCommonAcaRCommand.SetMainCommand (AValue : string);
begin
  Self.FMainCommand := AValue;
end;

end.

