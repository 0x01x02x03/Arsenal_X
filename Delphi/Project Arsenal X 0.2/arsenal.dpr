program arsenal;

uses
  Vcl.Forms,
  dh in 'dh.pas' {Form1},
  form_inbox in 'form_inbox.pas' {inbox},
  form_ping in 'form_ping.pas' {ping},
  form_kobra in 'form_kobra.pas' {kobra},
  form_getip in 'form_getip.pas' {getip},
  mysqluser in 'mysqluser.pas' {form_mysqluser},
  dumper in 'dumper.pas' {form_dumper},
  loadfile in 'loadfile.pas' {form_loadfile},
  shell in 'shell.pas' {form_shell},
  form_panelcontrol in 'form_panelcontrol.pas' {panelcontrol},
  form_ftpcracker in 'form_ftpcracker.pas' {ftpcracker},
  form_whois in 'form_whois.pas' {whois},
  form_downloader in 'form_downloader.pas' {downloader},
  form_locateip in 'form_locateip.pas' {locateip},
  form_crackmd5 in 'form_crackmd5.pas' {crackmd5},
  form_portscanner in 'form_portscanner.pas' {portscanner},
  form_bingscanner in 'form_bingscanner.pas' {bingscanner},
  form_about in 'form_about.pas' {about},
  functions in 'functions.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tprincipal, principal);
  Application.CreateForm(Tinbox, inbox);
  Application.CreateForm(Tping, ping);
  Application.CreateForm(Tkobra, kobra);
  Application.CreateForm(Tgetip, getip);
  Application.CreateForm(Tform_mysqluser, form_mysqluser);
  Application.CreateForm(Tform_dumper, form_dumper);
  Application.CreateForm(Tform_loadfile, form_loadfile);
  Application.CreateForm(Tform_shell, form_shell);
  Application.CreateForm(Tpanelcontrol, panelcontrol);
  Application.CreateForm(Tftpcracker, ftpcracker);
  Application.CreateForm(Twhois, whois);
  Application.CreateForm(Tdownloader, downloader);
  Application.CreateForm(Tlocateip, locateip);
  Application.CreateForm(Tcrackmd5, crackmd5);
  Application.CreateForm(Tportscanner, portscanner);
  Application.CreateForm(Tbingscanner, bingscanner);
  Application.CreateForm(Tabout, about);
  Application.Run;
end.
