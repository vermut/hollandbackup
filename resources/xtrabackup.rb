#
# Cookbook Name:: hollandbackup
# Resource:: xtrabackup
#
# Copyright 2012-2014, David Joos
#

actions :configure
default_action :configure

#[xtrabackup]
attribute :stream, :kind_of => String, :default => "tar"
attribute :slave_info, :kind_of => String, :default => "no"
attribute :global_defaults, :kind_of => String, :default => "/etc/mysql/my.cnf"

#[compression]
attribute :method, :kind_of => String, :default => "gzip"
attribute :inline, :kind_of => String, :default => "yes"
attribute :level, :kind_of => Integer, :default => 1

def initialize(*args)
    super
    @action = :configure
end
