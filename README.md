# dspace-clarin-it_conf_files
This git repo contains configuration (skeleton) files from apache, tomcat and whatever SW is needed to configure the dspace repository at the ilc4clarin node.

Passwords and certificates are not part on the stuff

#Organization
Three sections
## apache
Contains configuration files for apache. There are subdirectories which contain essentially the same files but clustered by hostname:
###dev2
Contains configuration files for apache when the hostname is dev2-clarin
###dev
Contains configuration files for apache when the hostname is dev-clarin
###dspace
Contains configuration files for apache when the hostname moves from dev* to dspace
###lwr
Last working release taken from dspace (dev) on 5 May 2020
###common
Common files

## tomcat
Contains configuration files for tomcat. There are subdirectories which contain essentially the same files but clustered by hostname:
###dev2
Contains configuration files for apache when the hostname is dev2-clarin
###dev
Contains configuration files for apache when the hostname is dev-clarin
###dspace
Contains configuration files for apache when the hostname moves from dev* to dspace
###lwr
Last working release taken from dspace (dev) on 5 May 2020
###common
Common files

##shibboleth
Contains configuration files for tomcat. There are subdirectories which contain essentially the same files but clustered by hostname:
###dev2
Contains configuration files for apache when the hostname is dev2-clarin
###dev
Contains configuration files for apache when the hostname is dev-clarin
###dspace
Contains configuration files for apache when the hostname moves from dev* to dspace
###lwr
Last working release taken from dspace (dev) on 5 May 2020
###common
Common files
