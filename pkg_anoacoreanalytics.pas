{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit pkg_anoacoreanalytics;

{$warn 5023 off : no warning about unused units}
interface

uses
  aca_rcommand, LazarusPackageIntf;

implementation

procedure Register;
begin
  RegisterUnit('aca_rcommand', @aca_rcommand.Register);
end;

initialization
  RegisterPackage('pkg_anoacoreanalytics', @Register);
end.
