// HTTP dll initialization script

global.define_http_initerror               = external_define('http_dll.dll','http_initerror',dll_stdcall,ty_real,0);

global.define_http_startthread             = external_define('http_dll.dll','http_startthread',dll_stdcall,ty_real,0);
global.define_http_stopthread              = external_define('http_dll.dll','http_stopthread',dll_stdcall,ty_real,0);
global.define_http_handlesockets           = external_define('http_dll.dll','http_handlesockets',dll_stdcall,ty_real,0);

global.define_http_create                  = external_define('http_dll.dll','http_create',dll_stdcall,ty_real,0);
global.define_http_destroy                 = external_define('http_dll.dll','http_destroy',dll_stdcall,ty_real,1,ty_real);

global.define_http_set_method              = external_define('http_dll.dll','http_set_method',dll_stdcall,ty_real,2,ty_real,ty_string);
global.define_http_set_filename            = external_define('http_dll.dll','http_set_filename',dll_stdcall,ty_real,2,ty_real,ty_string);
global.define_http_set_headers_in          = external_define('http_dll.dll','http_set_headers_in',dll_stdcall,ty_real,2,ty_real,ty_string);
global.define_http_set_message_body_in     = external_define('http_dll.dll','http_set_message_body_in',dll_stdcall,ty_real,2,ty_real,ty_string);
global.define_http_load_message_body_in    = external_define('http_dll.dll','http_load_message_body_in',dll_stdcall,ty_real,2,ty_real,ty_string);

global.define_http_connect                 = external_define('http_dll.dll','http_connect',dll_stdcall,ty_real,3,ty_real,ty_string,ty_string);
global.define_http_disconnect              = external_define('http_dll.dll','http_disconnect',dll_stdcall,ty_real,1,ty_real);
global.define_http_update                  = external_define('http_dll.dll','http_update',dll_stdcall,ty_real,1,ty_real);

global.define_http_get_conn_status         = external_define('http_dll.dll','http_get_conn_status',dll_stdcall,ty_real,1,ty_real);
global.define_http_get_action              = external_define('http_dll.dll','http_get_action',dll_stdcall,ty_real,1,ty_real);

global.define_http_get_statuscode          = external_define('http_dll.dll','http_get_statuscode',dll_stdcall,ty_string,1,ty_real);
global.define_http_get_statuscode_text     = external_define('http_dll.dll','http_get_statuscode_text',dll_stdcall,ty_string,1,ty_real);
global.define_http_get_headers             = external_define('http_dll.dll','http_get_headers',dll_stdcall,ty_string,1,ty_real);
global.define_http_get_header_value        = external_define('http_dll.dll','http_get_header_value',dll_stdcall,ty_string,2,ty_real,ty_string);

global.define_http_get_message_body_length = external_define('http_dll.dll','http_get_message_body_length',dll_stdcall,ty_real,1,ty_real);
global.define_http_get_message_body        = external_define('http_dll.dll','http_get_message_body',dll_stdcall,ty_string,1,ty_real);
global.define_http_save_message_body       = external_define('http_dll.dll','http_save_message_body',dll_stdcall,ty_real,2,ty_real,ty_string);

global.define_http_url_get_hostname        = external_define('http_dll.dll','http_url_get_hostname',dll_stdcall,ty_string,1,ty_string);
global.define_http_url_get_port            = external_define('http_dll.dll','http_url_get_port',dll_stdcall,ty_string,1,ty_string);
global.define_http_url_get_filename        = external_define('http_dll.dll','http_url_get_filename',dll_stdcall,ty_string,1,ty_string);

global.define_http_urlencode               = external_define('http_dll.dll','http_urlencode',dll_stdcall,ty_string,2,ty_string,ty_real);
global.define_http_urldecode               = external_define('http_dll.dll','http_urldecode',dll_stdcall,ty_string,1,ty_string);

