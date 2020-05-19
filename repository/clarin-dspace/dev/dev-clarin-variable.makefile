# Makefile for this project
# by LINDAT/CLARIN dev team
# customized by ILC4CLARIN dev team
#
# Note: If you want to change this file, copy it to project/config
#
# #############################
# Local config modification #
# See release #https://github.com/ufal/lindat-dspace/releases/tag/lindat-v1.2-dspace-v5.5
#############################


# lindat-common settings
LINDAT_COMMON_THEME_FETCH=git fetch && git checkout -f releases && git pull
DIR_LINDAT_COMMON_THEME :=/opt/git/ilc4clarin-common
URL_LINDAT_COMMON_GIT   :=https://github.com/cnr-ilc/ilc4clarin-common.git

# tomcat
TOMCAT_HOME=tomcat
TOMCAT_VERSION=9
TOMCAT_USER:=tomcat
TOMCAT_GROUP:=tomcat
TOMCAT_CONF:=/opt/$(TOMCAT_HOME)

# dspace
DSPACE_USER:=dspace

# tool directories
DIRECTORY_POSTGRESQL:=/var/lib/postgresql
BACKUP2l:=/usr/sbin/backup2l

# database settings - mostly for recovering
##RESTORE_FROM_DATABASE=/opt/java/ilc4clarin-dspace/ilc4clarin/installations/../database_backup/
#RESTORE_FROM_DATABASE=ilc-dspace-test
#RESTORE_FROM_DATABASE=lrt-dspace-1.8


# you can use different versions e.g., export pg_dump=pg_dump --cluster 9.4/main
export pg_dump=pg_dump

# for future use (Overlays)
ILC4CLARIN_OVERLAYS_FETCH=git fetch && git checkout -f releases && git pull
ILC4CLARIN_OVERLAYS_DIR :=/opt/git/ilc4clarin-dspace/dspace/modules/
ILC4CLARIN_OVERLAYS_GIT   :=https://github.com/cnr-ilc/ilc4clarin-overlays.git

