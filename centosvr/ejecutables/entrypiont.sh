#!/bin/sh

#set -e
########################################################################################
#                                                                                          
# iniciar envio de apache
# 
########################################################################################

 #/etc/init.d/apache2 start



########################################################################################
#                                                                                          
# iniciar envio de nagios
# 
########################################################################################

# /etc/init.d/nagios start

exec "$@"
