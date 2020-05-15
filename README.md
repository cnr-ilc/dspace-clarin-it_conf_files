# dspace-clarin-it_conf_files #
This git repository contains configuration (skeleton) files from apache, tomcat, shibboleth and whatever SW is needed to configure the dspace repository at the ilc4clarin node.

Passwords (for instance tomcat users) and certificates are not part of the 


# Organization #
Three sections
## apache ##
Contains configuration files for apache. There are subdirectories which contain essentially the same files but organized by the hostname. We describe only dev2 and dspace.
### dev2 ###
Contains configuration files for apache when the hostname is dev2-clarin:
* dev2-clarin.it.ilc.cnr.it.conf According to apache directives, the configuration file for port 80 has to be hostname.conf. This file contains the connection between the 80 and 8009 ports using a AJP proxy which maps :80/manager to :8009/manager-html and 80/host-manager to :8009/host-manager. Use this file to test how tomcat and apache are connected. If apache and tomcat are connected AND AFTER the repository has been installed, use the
* dev2-clarin.it.ilc.cnr.it.conf.orig. Rename it to dev2-clarin.it.ilc.cnr.it.conf.
* dev2-clarin.it.ilc.cnr.it-ssl.conf According to apache directives, the configuration file for port 443 has to be hostname-ssl.conf. This file contains the connection between the 443 and 8009 ports using a AJP proxy which maps :443/manager to :8009/manager-html and 443/host-manager to :8009/host-manager. Use this file to test how tomcat and apache are connected using a secure protocol. If apache and tomcat are connected AND AFTER the repository has been installed, use the
* dev2-clarin.it.ilc.cnr.it-ssl.conf.orig. Rename it to dev2-clarin.it.ilc.cnr.it-ssl.conf.
* shib-dev2-clarin.conf Configuration, locations, and directories for shibboleth controlled locations.
### dev
Contains configuration files for apache when the hostname is dev-clarin
### dspace ###
Contains configuration files for apache when the hostname moves from dev* to dspace. So, the configuration files are purged.
* 000-default.conf.dspace Port 80 Rename it to 000-default.conf
* default-ssl.conf.dspace Port 443 Rename to default-ssl.conf
### lwr ###
Last working release taken from dspace (dev-clarin, which was dspace-clarin-it, ip addr 146.48.93.26)) on 5 May 2020
### common ###
Common files

## tomcat ##
Contains configuration files for tomcat. There are subdirectories which contain essentially the same files but organized by the hostname, We describe only dev2 and dspace.
### dev2 ###
Contains configuration files for apache when the hostname is dev2-clarin.
* server.xml.dev2-clarin Rename it to server.xml
### dev ###
Contains configuration files for apache when the hostname is dev-clarin
### dspace ###
Contains configuration files for apache when the hostname moves from dev* to dspace
* server.xml.dspace Contains all the webapps for the repository. Rename it to server.xml
### lwr ###
Last working release taken from dspace (dev-clarin, which was dspace-clarin-it, ip addr 146.48.93.26)) on 5 May 2020
### common ###
Common files

## shibboleth ##
Contains configuration files for shibboleth. There are subdirectories which contain essentially the same files but organized by the hostname. We describe only dev2.
### dev2 ###
Contains configuration files for shibboleth when the hostname is dev2-clarin
* dev2-clarin-shibboleth2.xml Shibboleth main xml file. Rename to shibboleth2.xml
* dev2-clarin-attribute-map-dev2.xml attribute map for application override. Rename it to attribute-map-dev2.xml
* dev2-clarin-attribute-map.xml  attribute map for application default. Rename it to attribute-map.xml
* dev2-clarin-attribute-policy-dev2.xml   attribute policy for application override. Rename it to attribute-policy-dev2.xml
* dev2-clarin-attribute-policy.xml   attribute policy for application default. Rename it to attribute-policy.xml
* dev2-clarin-md_template.xml Template to generate metadata. Rename it to md_template.xml
### dev ###
Contains configuration files for shibboleth when the hostname is dev-clarin
### dspace ###
Contains configuration files for shibboleth when the hostname moves from dev* to dspace
### lwr ###
Last working release taken from shibboleth (dev-clarin, which was dspace-clarin-it, ip addr 146.48.93.26)) on 5 May 2020
### common ###
Common files
* shidb Shell script to make shidb a service
* shib_test.pl A script to test for CLARIN idp
* shib_test.php A script to test for ILC idp
