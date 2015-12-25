unit functions;

interface

uses Winsock, IdIcmpClient;

function ping_it(host: string): string;
function get_ip(const target: string): string;

implementation

function ping_it(host: string): string;
var
  ping: TIdIcmpClient;
begin

  ping := TIdIcmpClient.Create(nil);
  ping.ReceiveTimeout := 200;
  ping.host := host;
  ping.PacketSize := 24;
  ping.Protocol := 1;
  try
    ping.ping;
    Result := host + ' is Alive';
  except
    Result := host + ' is Offline';
  end;

  ping.Free;
end;

function get_ip(const target: string): string;
var
  socket_data: TWSAData;
  socket_one: PHostEnt;
  socket_two: TInAddr;
  ip: string;
begin
  Result := '';
  try
    begin
      WSAStartup($101, socket_data);
      socket_one := Winsock.GetHostByName(PAnsiChar(AnsiString(target)));
      socket_two := PInAddr(socket_one^.h_Addr_List^)^;
      ip := Winsock.inet_ntoa(socket_two);
    end;
  except
    begin
      ip := '';
    end;
  end;
  Result := ip;
end;

end.

// The End ?
