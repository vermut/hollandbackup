#
# Cookbook Name:: hollandbackup
# Attributes:: xtrabackup
#
# Copyright 2012-2014, David Joos
#

default['hollandbackup']['xtrabackup']['stream'] = "tar"
default['hollandbackup']['xtrabackup']['global_defaults'] = "/etc/mysql/my.cnf"
default['hollandbackup']['xtrabackup']['slave_info'] = "no"

#[compression]
default['hollandbackup']['xtrabackup']['compresssion']['method'] = "gzip"
default['hollandbackup']['xtrabackup']['compresssion']['inline'] = "yes"
default['hollandbackup']['xtrabackup']['compresssion']['level'] = 1

