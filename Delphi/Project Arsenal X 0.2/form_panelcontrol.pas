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

unit form_panelcontrol;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, sSkinManager, Vcl.StdCtrls, sGroupBox,
  sButton, sEdit, Vcl.ComCtrls, sStatusBar, sListBox, idHTTP, Vcl.Menus,
  Clipbrd;

type
  Tpanelcontrol = class(TForm)
    sGroupBox1: TsGroupBox;
    txtTarget: TsEdit;
    btnScan: TsButton;
    sGroupBox2: TsGroupBox;
    lstLinks: TsListBox;
    status: TsStatusBar;
    menu: TPopupMenu;
    C1: TMenuItem;
    procedure btnScanClick(Sender: TObject);
    procedure C1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  panelcontrol: Tpanelcontrol;

implementation

{$R *.dfm}

procedure Tpanelcontrol.C1Click(Sender: TObject);
var
  password: string;
begin
  if lstLinks.ItemIndex >= 0 then
  begin
    password := lstLinks.Items.Strings[lstLinks.ItemIndex];
    Clipboard.AsText := password;
  end
  else
  begin
    MessageBox(0, Pchar('Select Link'), Pchar('Panel Control 0.2'),
      MB_ICONINFORMATION);
  end;
end;

procedure Tpanelcontrol.btnScanClick(Sender: TObject);
const
  paths: array [1 .. 250] of string = ('admin/admin.asp', 'admin/login.asp',
    'admin/index.asp', 'admin/admin.aspx', 'admin/login.aspx',
    'admin/index.aspx', 'admin/webmaster.asp', 'admin/webmaster.aspx',
    'asp/admin/index.asp', 'asp/admin/index.aspx', 'asp/admin/admin.asp',
    'asp/admin/admin.aspx', 'asp/admin/webmaster.asp',
    'asp/admin/webmaster.aspx', 'admin/', 'login.asp', 'login.aspx',
    'admin.asp', 'admin.aspx', 'webmaster.aspx', 'webmaster.asp',
    'login/index.asp', 'login/index.aspx', 'login/login.asp',
    'login/login.aspx', 'login/admin.asp', 'login/admin.aspx',
    'administracion/index.asp', 'administracion/index.aspx',
    'administracion/login.asp', 'administracion/login.aspx',
    'administracion/webmaster.asp', 'administracion/webmaster.aspx',
    'administracion/admin.asp', 'administracion/admin.aspx', 'php/admin/',
    'admin/admin.php', 'admin/index.php', 'admin/login.php', 'admin/system.php',
    'admin/ingresar.php', 'admin/administrador.php', 'admin/default.php',
    'administracion/', 'administracion/index.php', 'administracion/login.php',
    'administracion/ingresar.php', 'administracion/admin.php',
    'administration/', 'administration/index.php', 'administration/login.php',
    'administrator/index.php', 'administrator/login.php',
    'administrator/system.php', 'system/', 'system/login.php', 'admin.php',
    'login.php', 'administrador.php', 'administration.php', 'administrator.php',
    'admin1.html', 'admin1.php', 'admin2.php', 'admin2.html', 'yonetim.php',
    'yonetim.html', 'yonetici.php', 'yonetici.html', 'adm/',
    'admin/account.php', 'admin/account.html', 'admin/index.html',
    'admin/login.html', 'admin/home.php', 'admin/controlpanel.html',
    'admin/controlpanel.php', 'admin.html', 'admin/cp.php', 'admin/cp.html',
    'cp.php', 'cp.html', 'administrator/', 'administrator/index.html',
    'administrator/login.html', 'administrator/account.html',
    'administrator/account.php', 'administrator.html', 'login.html',
    'modelsearch/login.php', 'moderator.php', 'moderator.html',
    'moderator/login.php', 'moderator/login.html', 'moderator/admin.php',
    'moderator/admin.html', 'moderator/', 'account.php', 'account.html',
    'controlpanel/', 'controlpanel.php', 'controlpanel.html',
    'admincontrol.php', 'admincontrol.html', 'adminpanel.php',
    'adminpanel.html', 'admin1.asp', 'admin2.asp', 'yonetim.asp',
    'yonetici.asp', 'admin/account.asp', 'admin/home.asp',
    'admin/controlpanel.asp', 'admin/cp.asp', 'cp.asp',
    'administrator/index.asp', 'administrator/login.asp',
    'administrator/account.asp', 'administrator.asp', 'modelsearch/login.asp',
    'moderator.asp', 'moderator/login.asp', 'moderator/admin.asp',
    'account.asp', 'controlpanel.asp', 'admincontrol.asp', 'adminpanel.asp',
    'fileadmin/', 'fileadmin.php', 'fileadmin.asp', 'fileadmin.html',
    'administration.html', 'sysadmin.php', 'sysadmin.html', 'phpmyadmin/',
    'myadmin/', 'sysadmin.asp', 'sysadmin/', 'ur-admin.asp', 'ur-admin.php',
    'ur-admin.html', 'ur-admin/', 'Server.php', 'Server.html', 'Server.asp',
    'Server/', 'wpadmin/', 'administr8.php', 'administr8.html', 'administr8/',
    'administr8.asp', 'webadmin/', 'webadmin.php', 'webadmin.asp',
    'webadmin.html', 'administratie/', 'admins/', 'admins.php', 'admins.asp',
    'admins.html', 'administrivia/', 'Database_Administration/', 'WebAdmin/',
    'useradmin/', 'sysadmins/', 'admin1/', 'systemadministration/',
    'administrators/', 'pgadmin/', 'directadmin/', 'staradmin/',
    'ServerAdministrator/', 'SysAdmin/', 'administer/', 'LiveUser_Admin/',
    'sysadmin/', 'typo3/', 'panel/', 'cpanel/', 'cPanel/', 'cpanel_file/',
    'platz_login/', 'rcLogin/', 'blogindex/', 'formslogin/', 'autologin/',
    'support_login/', 'meta_login/', 'manuallogin/', 'simpleLogin/',
    'loginflat/', 'utility_login/', 'showlogin/', 'memlogin/', 'members/',
    'login-redirect/', 'sublogin/', 'wplogin/', 'login1/', 'dirlogin/',
    'login_db/', 'xlogin/', 'smblogin/', 'customer_login/', 'UserLogin/',
    'loginus/', 'acct_login/', 'admin_area/', 'bigadmin/', 'project-admins/',
    'phppgadmin/', 'pureadmin/', 'sqladmin/', 'radmind/', 'openvpnadmin/',
    'wizmysqladmin/', 'vadmind/', 'ezsqliteadmin/', 'hpwebjetadmin/',
    'newsadmin/', 'adminpro/', 'Lotus_Domino_Admin/', 'bbadmin/', 'vmailadmin/',
    'Indy_admin/', 'ccp14admin/', 'irc-macadmin/', 'banneradmin/', 'sshadmin/',
    'phpldapadmin/', 'macadmin/', 'administratoraccounts/', 'admin4_account/',
    'admin4_colon/', 'radmind1/', 'SuperAdmin/', 'AdminTools/', 'cmsadmin/',
    'SysAdmin2/', 'globes_admin/', 'cadmins/', 'phpSQLiteAdmin/',
    'navSiteAdmin/', 'server_admin_small/', 'logo_sysadmin/', 'server/',
    'database_administration/', 'power_user/', 'system_administration/',
    'ss_vms_admin_sm/');

var
  target: string;
  nave: TIdHTTP;
  i: integer;

begin

  if not(txtTarget.Text = '') then
  begin
    target := txtTarget.Text;

    lstLinks.Items.Clear;

    status.Panels[0].Text := '[+] Starting the scan';
    form_panelcontrol.panelcontrol.Update;

    nave := TIdHTTP.Create(nil);
    nave.Request.UserAgent :=
      'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:25.0) Gecko/20100101 Firefox/25.0';

    for i := Low(paths) to High(paths) do
      try
        status.Panels[0].Text := '[+] Testing : ' + paths[i];
        form_panelcontrol.panelcontrol.Update;
        nave.Get(target + '/' + paths[i]);
        if nave.ResponseCode = 200 then
          lstLinks.Items.Add(target + '/' + paths[i]);
      except
        on E: EIdHttpProtocolException do;
        on E: Exception do;
      end;

    nave.Free;

    status.Panels[0].Text := '[+] Finished';
    form_panelcontrol.panelcontrol.Update;
  end
  else
  begin
    MessageBox(0, 'Write Target', 'Panel Control 0.2', MB_ICONINFORMATION);
  end;
end;

end.

// The End ?
