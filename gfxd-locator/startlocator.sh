#!/bin/bash

gfxd locator start -log-level=config -peer-discovery-address=0.0.0.0 -client-bind-address=0.0.0.0 -J-Dgemfirexd.prefer-netserver-ipaddress=true -client-port=1527 -dir=/opt/gfxd/locator -jmx-manager-start=true -jmx-manager-http-port=7075