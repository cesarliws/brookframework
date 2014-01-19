unit BrookFavIconBroker;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fpjson, HTTPDefs, BrookAction;

type

  TFavIcon = class(TBrookAction)
  public
    procedure Get; override;
  end;

procedure SetFavIconImageDir(const Dir: String);

implementation

uses
  BrookUtils;

var
  FavIconImageDir: String;

procedure SetFavIconImageDir(const Dir: String);
begin
  FavIconImageDir := Dir;
end;


{ TFavIcon }

procedure TFavIcon.Get;
var
  Ext,IconFilePath,Buffer: String;
begin
  if Pos('MSIE',GetRequest.UserAgent) > 0 then
    Ext := '.ico'
  else
    Ext := '.png';
  IconFilePath := IncludeTrailingPathDelimiter(FavIconImageDir) + 'favicon' + Ext;
  with TFileStream.Create(IconFilePath, fmOpenRead) do
  try
    SetLength(Buffer, Size);
    Read(Buffer[1], Size);
    Self.Write(Buffer);
  finally
    Free;
  end;
end;

initialization
  TFavIcon.Register('/favicon.ico');

end.
