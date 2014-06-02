#
# Cookbook Name:: hollandbackup
# Provider:: xtrabackup
#
# Copyright 2012-2014, David Joos
#

def whyrun_supported?
    true
end

action :configure do
    Chef::Log.debug "PROVIDER: xtrabackup.conf"

    template "/etc/holland/providers/xtrabackup.conf" do
        source "xtrabackup.conf.erb"
        owner "root"
        group "root"
        mode 0644
        variables(
            :resource => new_resource
        )
    end
end
