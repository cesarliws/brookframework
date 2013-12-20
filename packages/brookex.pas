{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit BrookEX;

interface

uses
  BrookProjectIntf, frmBrookActEdit, frmBrookNewBroker, frmBrookNewProject, 
  frmBrookTable2HTMLForm, LazarusPackageIntf;

implementation

procedure Register;
begin
  RegisterUnit('BrookProjectIntf',@BrookProjectIntf.Register);
end;

initialization
  RegisterPackage('BrookEX',@Register);
end.
