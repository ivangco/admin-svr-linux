#!/bin/sh

#set -e
########################################################################################
#                                                                                          
# iniciar apache
# 
########################################################################################

 /etc/init.d/apache2 start



########################################################################################
#                                                                                          
# iniciar nagios
# 
########################################################################################

 /etc/init.d/nagios start


########################################################################################
#
# iniciar nginx
# 
########################################################################################
 /etc/init.d/nginx start 


########################################################################################
#
# iniciar amplify
# 
########################################################################################
 
service amplify-agent start 



########################################################################################
#
# iniciar mysql
# 
########################################################################################
 
usermod -d /var/lib/mysql/ mysql
/etc/init.d/mysql start


########################################################################################
#
# iniciar cron -> crontab -> cron job
# 
########################################################################################
 
/etc/init.d/cron start 


exec "$@"
