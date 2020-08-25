// this script downloads a webpage and returns its contents
// the socket thread should be active to use this script
// netread(url)

/*

Put this in the game start event:

httpdll_init();
if http_initerror() {
show_message('Initializing HTTP dll failed!');
game_end();
exit;
}
if !http_startthread() {
show_message('Failed to start socket thread!');
game_end();
exit;
}

*/

var http,url,conn_status,action,data;

// URL-encode the url with keepspecialchars on,
// to avoid encoding ':', '/', '.', ...
url = http_urlencode(argument0,true);

http = http_create();
if http=-1 {
return '';
}

// Set method and filename to download the file
http_set_method(http,'GET');
http_set_filename(http,http_url_get_filename(url));

repeat 3 {

// Try to connect to the server
if !http_connect(http,http_url_get_hostname(url),http_url_get_port(url)) {
// If server is not responding it is probably offline,
// or the user is not connected to the internet.
break; // do not retry
}

// Let the DLL handle the connection, wait until it is finished.
while http_update(http) {
sleep(20); // sleep 20 milliseconds
}

// Find out what has happened
conn_status = http_get_conn_status(http);
action = http_get_action(http);

if conn_status!=2 {
// If the server could be connected to, it is not offline.
continue; // retry
}
if action!=2 {
// If server closed the connection, it is not offline.
continue; // retry
}

data = http_get_message_body(http);
http_destroy(http); 
return data;

}

http_destroy(http); 
return '';

