# Motivation for dspace-clarin-it_conf_files #
The dspace-clarin-it_conf_files GitHub repository contains configuration (skeleton) files from Apache, Tomcat, Shibboleth, and whatever software is needed to configure the DSPACE repository at the ilc4clarin node.

Passwords (for instance Tomcat users) and certificates are not part of the GitHub repository.

The GitHub repository comprises the following sections
## Apache ##
Apache section contains configuration files for the Apache server. 
The subdirectories contain essentially the same files and are organized by the hostname of the machine we want to install/customize. 

### dev2 ###
Use this directory when the hostname is dev2-clarin. The configuration files are briefly described below:
* dev2-clarin.it.ilc.cnr.it.conf According to the Apache directives, the configuration file for port 80 has to be hostname.conf. 
This file contains the connection between port 80 port 8080 using an AJP proxy which maps :80/manager to :8080/manager-html and 80/host-manager to :8080/host-manager. 
Use this file to test if Tomcat and Apache are connected. If Apache and Tomcat are connected AND AFTER the repository has been installed, use the
* dev2-clarin.it.ilc.cnr.it.conf.orig. Rename it to dev2-clarin.it.ilc.cnr.it.conf.
* dev2-clarin.it.ilc.cnr.it-ssl.conf According to the Apache directives, the configuration file for port 443 has to be hostname-ssl.conf. 
This file contains the connection between port 443 and port 8009  using an AJP proxy which maps :443/manager to :8009/manager-html and 443/host-manager to :8009/host-manager. 
Use this file to test it Tomcat and Apache are connected using a secure protocol. If Apache and Tomcat are connected AND AFTER the repository has been installed, use the
* dev2-clarin.it.ilc.cnr.it-ssl.conf.orig. Rename it to dev2-clarin.it.ilc.cnr.it-ssl.conf.
* shib-dev2-clarin.conf Configuration, locations, and directories for Shibboleth controlled locations.

### dev
Use this directory when the hostname is dev-clarin.

### dspace ###
Use this directory when the hostname changes from dev*-clarin to dspace-clarin-it (in other words, when from test we are moving to production). The configuration files DO NOT contain testing proxies for Tomcat/Apache connection.
* 000-default.conf.dspace Port 80 Rename it to 000-default.conf
* default-ssl.conf.dspace Port 443 Rename to default-ssl.conf

### lwr ###
Last working release taken from dspace-clarin-it (i.e. dev-clarin, which was dspace-clarin-it, IP address -.-.-.26) on 5 May 2020
### common ###
Common files

## Tomcat ##
The Tomcat section contains configuration files for the Tomcat server. 
The subdirectories contain essentially the same files and are organized by the hostname of the machine we want to install/customize.

### dev2 ###
Use this directory when the hostname is dev2-clarin. The configuration files are briefly described below:
* server.xml.dev2-clarin Rename it to server.xml

### dev ###
Use this directory when the hostname is dev-clarin.
### dspace ###
Use this directory when the hostname changes from dev*-clarin to dspace-clarin-it (in other words, when from test we are moving to production).
* server.xml.dspace Contains all the webapps for the repository. Rename it to server.xml

### lwr ###
Last working release taken from dspace-clarin-it (i.e. dev-clarin, which was dspace-clarin-it, IP address -.-.-.26) on 5 May 2020

### common ###
Common files

## Shibboleth ##
The Shibboleth section contains configuration files for the Shibboleth Service provider. 
The subdirectories contain essentially the same files and are organized by the hostname of the machine we want to install/customize.

### dev2 ###
Use this directory when the hostname is dev2-clarin. The configuration files are briefly described below:
* dev2-clarin-Shibboleth2.xml Shibboleth main XML file. Rename to shibboleth2.xml
* dev2-clarin-attribute-map.xml  Attribute map used in "application default" XML element in shibboleth2.xml.  Rename it to attribute-map.xml
* dev2-clarin-attribute-policy.xml   Attribute policy used in "application default" XML element in shibboleth2.xml . Rename it to attribute-policy.xml
* dev2-clarin-attribute-map-dev2.xml Attribute map used in "application override" XML element in shibboleth2.xml . Rename it to attribute-map-dev2.xml
* dev2-clarin-attribute-policy-dev2.xml   Attribute policy used in "application override" XML element in shibboleth2.xml . Rename it to attribute-policy-dev2.xml
* dev2-clarin-md_template.xml Template to generate metadata. Rename it to md_template.xml

### dev ###
Use this directory when the hostname is dev-clarin

### dspace ###
Use this directory when the hostname changes from dev*-clarin to dspace-clarin-it (in other words, when from test we are moving to production).

### lwr ###
Last working release taken from dspace-clarin-it (i.e. dev-clarin, which was dspace-clarin-it, IP address -.-.-.26) on 5 May 2020

### common ###
It contains the following common files
* shidb Shell script to make shidb a service
* shib_test.pl A script to test for CLARIN IDP (using the CLARIN federation)
* shib_test.php A script to test for ILC IDP (using IDEM federation. Different attributes, in principle)

## repository/CLARIN-DSPACE ##
The CLARIN-DSPACE section contains configuration files for CLARIN-DSPACE repository.
The subdirectories contain essentially the same files and are organized by the hostname of the machine we want to install/customize.

### dev2 ###
Use this directory when the hostname is dev2-clarin. The configuration files are briefly described below:
* dev2-clarin-local.properties local.properties for a fresh instance/new release of CLARIN-DSPACE repository.
* dev2-clarin-variable.makefile variables for make file for a fresh instance/new release of CLARIN-DSPACE repository.

### dev ###
Use this directory when the hostname is dev2-clarin.

### dspace ###
Use this directory when the hostname changes from dev*-clarin to dspace-clarin-it (in other words, when from test we are moving to production).

### lwr ###
Last working release taken from dspace-clarin-it (i.e. dev-clarin, which was dspace-clarin-it, IP address -.-.-.26) on 5 May 2020
* local.properties.dev-clarin-05052020 Contains personalization for the last release of CLARIN-DSPACE repository
* variable.makefile.dev-clarin-05052020  Contains personalization for for the last release of CLARIN-DSPACE repository, including overlays and the common theme to use.

### common ###
* variables_for_bashrc.txt It contains bash variables to insert into the .bashrc file of the user (ilc-clarin)
* create_and_restore_db.txt Use it to create (and restore) the databases
* local.properties.dist Distributed local properties. Double-check this file with yours in search of new possible variables.
* ILC-CNR_for_CLARIN-IT_Logo.png logo
* ILC.png logo for ILC Community
* OPEN.png logo for OPEN Community
* crontab list of crontab jobs
## Handle Server (hs) ##
The Handle Server section contains configuration files for the Handle Server. Due to the specific nature of the Handle Server, which depends on the IP address rather than on the hostname, the last working files (lwr) must be copied after we moved from test  to production.

### dev2 ###

### dev ###

### dspace ###

### lwr ###
Files to copy

### common ###
