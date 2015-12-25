{
  This software is Copyright (c) 2015 by Doddy Hackman.

  This is free software, licensed under:

  The Artistic License 2.0

  The Artistic License

  Preamble

  This license establishes the terms under which a given free software Package may be copied, modified, distributed, and/or redistributed. The intent is that the Copyright Holder maintains some artistic control over the development of that Package while still keeping the Package available as open source and free software.
  You are always permitted to make arrangements wholly outside of this license directly with the Copyright Holder of a given Package. If the terms of this license do not permit the full use that you propose to make of the Package, you should contact the Copyright Holder and seek a different licensing arrangement.

  Definitions

  "Copyright Holder" means the individual(s) or organization(s) named in the copyright notice for the entire Package.
  "Contributor" means any party that has contributed code or other material to the Package, in accordance with the Copyright Holder's procedures.
  "You" and "your" means any person who would like to copy, distribute, or modify the Package.
  "Package" means the collection of files distributed by the Copyright Holder, and derivatives of that collection and/or of those files. A given Package may consist of either the Standard Version, or a Modified Version.
  "Distribute" means providing a copy of the Package or making it accessible to anyone else, or in the case of a company or organization, to others outside of your company or organization.
  "Distributor Fee" means any fee that you charge for Distributing this Package or providing support for this Package to another party. It does not mean licensing fees.
  "Standard Version" refers to the Package if it has not been modified, or has been modified only in ways explicitly requested by the Copyright Holder.
  "Modified Version" means the Package, if it has been changed, and such changes were not explicitly requested by the Copyright Holder.
  "Original License" means this Artistic License as Distributed with the Standard Version of the Package, in its current version or as it may be modified by The Perl Foundation in the future.
  "Source" form means the source code, documentation source, and configuration files for the Package.
  "Compiled" form means the compiled bytecode, object code, binary, or any other form resulting from mechanical transformation or translation of the Source form.

  Permission for Use and Modification Without Distribution

  (1) You are permitted to use the Standard Version and create and use Modified Versions for any purpose without restriction, provided that you do not Distribute the Modified Version.

  Permissions for Redistribution of the Standard Version

  (2) You may Distribute verbatim copies of the Source form of the Standard Version of this Package in any medium without restriction, either gratis or for a Distributor Fee, provided that you duplicate all of the original copyright notices and associated disclaimers. At your discretion, such verbatim copies may or may not include a Compiled form of the Package.
  (3) You may apply any bug fixes, portability changes, and other modifications made available from the Copyright Holder. The resulting Package will still be considered the Standard Version, and as such will be subject to the Original License.

  Distribution of Modified Versions of the Package as Source

  (4) You may Distribute your Modified Version as Source (either gratis or for a Distributor Fee, and with or without a Compiled form of the Modified Version) provided that you clearly document how it differs from the Standard Version, including, but not limited to, documenting any non-standard features, executables, or modules, and provided that you do at least ONE of the following:
  (a) make the Modified Version available to the Copyright Holder of the Standard Version, under the Original License, so that the Copyright Holder may include your modifications in the Standard Version.
  (b) ensure that installation of your Modified Version does not prevent the user installing or running the Standard Version. In addition, the Modified Version must bear a name that is different from the name of the Standard Version.
  (c) allow anyone who receives a copy of the Modified Version to make the Source form of the Modified Version available to others under
  (i) the Original License or
  (ii) a license that permits the licensee to freely copy, modify and redistribute the Modified Version using the same licensing terms that apply to the copy that the licensee received, and requires that the Source form of the Modified Version, and of any works derived from it, be made freely available in that license fees are prohibited but Distributor Fees are allowed.
  Distribution of Compiled Forms of the Standard Version or Modified Versions without the Source

  (5) You may Distribute Compiled forms of the Standard Version without the Source, provided that you include complete instructions on how to get the Source of the Standard Version. Such instructions must be valid at the time of your distribution. If these instructions, at any time while you are carrying out such distribution, become invalid, you must provide new instructions on demand or cease further distribution. If you provide valid instructions or cease distribution within thirty days after you become aware that the instructions are invalid, then you do not forfeit any of your rights under this license.
  (6) You may Distribute a Modified Version in Compiled form without the Source, provided that you comply with Section 4 with respect to the Source of the Modified Version.

  Aggregating or Linking the Package

  (7) You may aggregate the Package (either the Standard Version or Modified Version) with other packages and Distribute the resulting aggregation provided that you do not charge a licensing fee for the Package. Distributor Fees are permitted, and licensing fees for other components in the aggregation are permitted. The terms of this license apply to the use and Distribution of the Standard or Modified Versions as included in the aggregation.
  (8) You are permitted to link Modified and Standard Versions with other works, to embed the Package in a larger work of your own, or to build stand-alone binary or bytecode versions of applications that include the Package, and Distribute the result without restriction, provided the result does not expose a direct interface to the Package.

  Items That are Not Considered Part of a Modified Version

  (9) Works (including, but not limited to, modules and scripts) that merely extend or make use of the Package, do not, by themselves, cause the Package to be a Modified Version. In addition, such works are not considered parts of the Package itself, and are not subject to the terms of this license.

  General Provisions

  (10) Any use, modification, and distribution of the Standard or Modified Versions is governed by this Artistic License. By using, modifying or distributing the Package, you accept this license. Do not use, modify, or distribute the Package, if you do not accept this license.
  (11) If your Modified Version has been derived from a Modified Version made by someone other than you, you are nevertheless required to ensure that your Modified Version complies with the requirements of this license.
  (12) This license does not grant you the right to use any trademark, service mark, tradename, or logo of the Copyright Holder.
  (13) This license includes the non-exclusive, worldwide, free-of-charge patent license to make, have made, use, offer to sell, sell, import and otherwise transfer the Package with respect to any patent claims licensable by the Copyright Holder that are necessarily infringed by the Package. If you institute patent litigation (including a cross-claim or counterclaim) against any party alleging that the Package constitutes direct or contributory patent infringement, then this Artistic License to you shall terminate on the date that such litigation is filed.
  (14) Disclaimer of Warranty: THE PACKAGE IS PROVIDED BY THE COPYRIGHT HOLDER AND CONTRIBUTORS "AS IS' AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES. THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, OR NON-INFRINGEMENT ARE DISCLAIMED TO THE EXTENT PERMITTED BY YOUR LOCAL LAW. UNLESS REQUIRED BY LAW, NO COPYRIGHT HOLDER OR CONTRIBUTOR WILL BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, OR CONSEQUENTIAL DAMAGES ARISING IN ANY WAY OUT OF THE USE OF THE PACKAGE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

}

// Project Arsenal X 0.2
// (C) Doddy Hackman 2015

unit dh;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, sSkinManager, Vcl.StdCtrls, sButton,
  sMemo, sLabel, form_inbox, form_ping, form_getip, form_kobra, form_ftpcracker,
  form_panelcontrol, form_whois, form_downloader, form_locateip, form_crackmd5,
  form_portscanner, form_bingscanner, form_about, PerlRegex, WinInet;

type
  Tprincipal = class(TForm)
    skin: TsSkinManager;
    inbox: TsButton;
    ping: TsButton;
    get_ip: TsButton;
    k0bra: TsButton;
    panelcontrol: TsButton;
    cracker: TsButton;
    about: TsButton;
    whois: TsButton;
    downloader: TsButton;
    locate_ip: TsButton;
    get_pass: TsButton;
    port_scanner: TsButton;
    exit: TsButton;
    console: TsMemo;
    your_ip: TsLabel;
    sLabel2: TsLabel;
    bingscanner: TsButton;
    procedure inboxClick(Sender: TObject);
    procedure pingClick(Sender: TObject);
    procedure get_ipClick(Sender: TObject);
    procedure k0braClick(Sender: TObject);
    procedure panelcontrolClick(Sender: TObject);
    procedure crackerClick(Sender: TObject);
    procedure whoisClick(Sender: TObject);
    procedure downloaderClick(Sender: TObject);
    procedure locate_ipClick(Sender: TObject);
    procedure get_passClick(Sender: TObject);
    procedure port_scannerClick(Sender: TObject);
    procedure bingscannerClick(Sender: TObject);
    procedure consoleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure aboutClick(Sender: TObject);
    procedure exitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  principal: Tprincipal;

implementation

{$R *.dfm}
// Functions

function execute(cmd: string): string;
// Credits : Function ejecutar() based in : http://www.delphidabbler.com/tips/61
// Thanks to www.delphidabbler.com

var
  parte1: TSecurityAttributes;
  parte2: TStartupInfo;
  parte3: TProcessInformation;
  parte4: THandle;
  parte5: THandle;
  control2: Boolean;
  contez: array [0 .. 255] of AnsiChar;
  notengoidea: Cardinal;
  fix: Boolean;
  code: string;

begin

  code := '';

  with parte1 do
  begin
    nLength := SizeOf(parte1);
    bInheritHandle := True;
    lpSecurityDescriptor := nil;
  end;

  CreatePipe(parte4, parte5, @parte1, 0);

  with parte2 do
  begin
    FillChar(parte2, SizeOf(parte2), 0);
    cb := SizeOf(parte2);
    dwFlags := STARTF_USESHOWWINDOW or STARTF_USESTDHANDLES;
    wShowWindow := SW_HIDE;
    hStdInput := GetStdHandle(STD_INPUT_HANDLE);
    hStdOutput := parte5;
    hStdError := parte5;
  end;

  fix := CreateProcess(nil, PChar('cmd.exe /C ' + cmd), nil, nil, True, 0, nil,
    PChar('c:/'), parte2, parte3);

  CloseHandle(parte5);

  if fix then

    repeat

    begin
      control2 := ReadFile(parte4, contez, 255, notengoidea, nil);
    end;

    if notengoidea > 0 then
    begin
      contez[notengoidea] := #0;
      code := code + contez;
    end;

    until not(control2) or (notengoidea = 0);

  Result := code;

end;

function toma(const pagina: string): UTF8String;

// Credits : Based on http://www.scalabium.com/faq/dct0080.htm
// Thanks to www.scalabium.com

var
  nave1: HINTERNET;
  nave2: HINTERNET;
  tou: DWORD;
  codez: UTF8String;
  codee: array [0 .. 1023] of byte;
  finalfinal: string;

begin

  try

    begin

      finalfinal := '';
      Result := '';

      nave1 := InternetOpen
        ('Mozilla/5.0 (Windows; U; Windows NT 5.1; nl; rv:1.8.1.12) Gecko/20080201Firefox/2.0.0.12',
        INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);

      nave2 := InternetOpenUrl(nave1, PChar(pagina), nil, 0,
        INTERNET_FLAG_RELOAD, 0);

      repeat

      begin
        InternetReadFile(nave2, @codee, SizeOf(codee), tou);
        SetString(codez, PAnsiChar(@codee[0]), tou);
        finalfinal := finalfinal + codez;
      end;

      until tou = 0;

      InternetCloseHandle(nave2);
      InternetCloseHandle(nave1);

      Result := finalfinal;
    end;

  except
    //
  end;

end;

function regex(text: String; deaca: String; hastaaca: String): String;
begin
  Delete(text, 1, AnsiPos(deaca, text) + Length(deaca) - 1);
  SetLength(text, AnsiPos(hastaaca, text) - 1);
  Result := text;
end;

function get_my_ip(): string;
var
  codigo_de_pagina, consegui_ip: string;
  regex: TPerlRegex;
begin
  codigo_de_pagina := toma('http://whatismyipaddress.com/');

  regex := TPerlRegex.Create();
  regex.regex := 'ip/(.*?)"';
  regex.Subject := codigo_de_pagina;
  if regex.Match then
  begin
    consegui_ip := regex.Groups[1];
  end;
  regex.Free;

  regex := TPerlRegex.Create();
  regex.regex := '^(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})$';
  regex.Subject := consegui_ip;
  if regex.Match then
  begin
    Result := consegui_ip;
  end;
  regex.Free;

end;

//

procedure Tprincipal.aboutClick(Sender: TObject);
begin
  form_about.about.Show;
end;

procedure Tprincipal.bingscannerClick(Sender: TObject);
begin
  form_bingscanner.bingscanner.Show;
end;

procedure Tprincipal.consoleKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  command: string;
begin
  if Key = VK_RETURN then
  begin
    command := console.Lines[console.Lines.Count - 1];
    command := StringReplace(command, '<root[.]>', '',
      [rfReplaceAll, rfIgnoreCase]);
    console.Lines.Add(execute(command));
    console.Lines.Add(sLineBreak + '<root[.]>');
  end;
end;

procedure Tprincipal.crackerClick(Sender: TObject);
begin
  form_ftpcracker.ftpcracker.Show;
end;

procedure Tprincipal.downloaderClick(Sender: TObject);
begin
  form_downloader.downloader.Show;
end;

procedure Tprincipal.exitClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure Tprincipal.FormCreate(Sender: TObject);
var
  ip: string;
begin
  skin.SkinDirectory := ExtractFilePath(Application.ExeName) + 'Data';
  skin.SkinName := 'matrix';
  skin.Active := True;
  ip := get_my_ip();
  if not(ip = '') then
  begin
    your_ip.Caption := 'Your IP is ' + ip;
  end
  else
  begin
    your_ip.Caption := 'Your IP is Unknown';
  end;
end;

procedure Tprincipal.get_ipClick(Sender: TObject);
begin
  form_getip.getip.Show;
end;

procedure Tprincipal.get_passClick(Sender: TObject);
begin
  form_crackmd5.crackmd5.Show;
end;

procedure Tprincipal.inboxClick(Sender: TObject);
begin
  form_inbox.inbox.Show;
end;

procedure Tprincipal.k0braClick(Sender: TObject);
begin
  form_kobra.kobra.Show;
end;

procedure Tprincipal.locate_ipClick(Sender: TObject);
begin
  form_locateip.locateip.Show;
end;

procedure Tprincipal.panelcontrolClick(Sender: TObject);
begin
  form_panelcontrol.panelcontrol.Show;
end;

procedure Tprincipal.pingClick(Sender: TObject);
begin
  form_ping.ping.Show;
end;

procedure Tprincipal.port_scannerClick(Sender: TObject);
begin
  form_portscanner.portscanner.Show;
end;

procedure Tprincipal.whoisClick(Sender: TObject);
begin
  form_whois.whois.Show;
end;

end.

// The End ?
