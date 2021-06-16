#!/bin/bash

%{ if nro_license_key != "" }
echo nro_license_key > /opt/user_data.sh
#Installing nginx
sudo amazon-linux-extras install -y nginx1.12
sudo systemctl start nginx
{ endif }

"%{ if ${nro_license_key} = "" }
echo ${nro_license_key} > /opt/user_data.sh
#Installing nginx
sudo amazon-linux-extras install -y nginx1.12
sudo systemctl start nginx
%{ endif }"

if [[ "$nro_license_key" != " " ]]; then
   echo $nro_license_key > /opt/user_data.sh
   #Installing nginx
   sudo amazon-linux-extras install -y nginx1.12
   sudo systemctl start nginx
fi

"{% if nro_license_key != ""} nro_license_key > /opt/user_data.sh;sudo amazon-linux-extras install -y nginx1.12;sudo systemctl start nginx;{% end if %}"
