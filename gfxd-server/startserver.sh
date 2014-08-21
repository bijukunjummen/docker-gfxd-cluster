#!/bin/bash

if [ -z "$LOCATOR_1_PORT_10334_TCP_ADDR" ]; then
# Start without locator
	if [ -z "$CLIENT_PORT" ]; then 
		gfxd server start -log-level=config -client-bind-address=0.0.0.0 -J-Dgemfirexd.prefer-netserver-ipaddress=true -dir=/opt/gfxd/server1
	else
	  gfxd server start -log-level=config -client-bind-address=0.0.0.0 -J-Dgemfirexd.prefer-netserver-ipaddress=true -client-port=$CLIENT_PORT -dir=/opt/gfxd/server1
	fi

else
# Assume a linked container called Locator is available	
  gfxd server start -log-level=config -client-bind-address=0.0.0.0 -J-Dgemfirexd.prefer-netserver-ipaddress=true -client-port=$CLIENT_PORT -dir=/opt/gfxd/server1 -locators=$LOCATOR_1_PORT_10334_TCP_ADDR:$LOCATOR_1_PORT_10334_TCP_PORT
fi  
