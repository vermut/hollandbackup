#
# Cookbook Name:: hollandbackup
# Recipe:: xtrabackup
#
# Copyright 2012-2014, David Joos
# Copyright 2014, Pavel Veretennikov
#

package "xtrabackup"
package "holland-xtrabackup" do
    action :upgrade
    case node['platform_family']
    when 'debian'
        options "--force-yes"
    end
end

hollandbackup_xtrabackup "holland-configure-mysqldump-provider" do
    #[xtrabackup]
    stream		node['hollandbackup']['xtrabackup']['stream']
    slave_info		node['hollandbackup']['xtrabackup']['slave_info']
    #[compression]
    method                node['hollandbackup']['xtrabackup']['compresssion']['method']
    inline                node['hollandbackup']['xtrabackup']['compresssion']['inline']
    level                 node['hollandbackup']['xtrabackup']['compresssion']['level']
end

