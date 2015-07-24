NR==FNR && /SRV_NAME/ { match($0, /'([^']*)'/, arr);  serverName = arr[1]; next } 
NR==FNR { next } 
/server_name/ { printf("    server_name %s;\n", serverName); next }
{ print }
