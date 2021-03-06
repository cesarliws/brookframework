// Please see: http://en.wikipedia.org/wiki/HTTP_compression

unit test1;

{$mode objfpc}{$H+}

interface

uses
  BrookAction, BrookConsts, BrookHTTPUtils, ZStream, Classes, SysUtils;

const
  CONTENT =
    '<!DOCTYPE HTML>' + LF +
    '<html lang="en-US">' + LF +
    '<head>' + LF +
    '	<meta charset="UTF-8">' + LF +
    '	<title>Deflate</title>' + LF +
    '</head>' + LF +
    '<body>' + LF +
    '	Hello world! (%s)' + LF +
    '</body>' + LF +
    '</html>';

type
  TTest1Action = class(TBrookAction)
  public
    procedure Get; override;
  end;

implementation

procedure TTest1Action.Get;
var
  S: string;
  VOutput: TMemoryStream;
begin
  if aeDeflate in BrookGetAcceptEncodingSet(TheRequest.AcceptEncoding) then
  begin
    VOutput := TMemoryStream.Create;
    try
      with TCompressionStream.Create(clMax, VOutput, True) do
      try
        S := Format(CONTENT, ['Compressed']);
        Write(Pointer(S)^, Length(S));
      finally
        Free;
      end;
      VOutput.Seek(0, 0);
      TheResponse.SetCustomHeader('Content-Encoding', 'deflate');
      TheResponse.ContentStream := VOutput;
      TheResponse.SendContent;
    finally
      VOutput.Free;
    end;
  end
  else
    Write(CONTENT, ['Uncompressed']);
end;

initialization
  TTest1Action.Register('/test1');

end.
