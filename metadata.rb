name             "hollandbackup"
maintainer       "David Joos"
maintainer_email "development@davidjoos.com"
license          "MIT"
description      "Installs/Configures hollandbackup"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"

%w{ debian ubuntu }.each do |os|
supports os
end

recommends "mysql"

recipe "hollandbackup", "Adds the Holland Backup repository."
recipe "hollandbackup::repository", "Adds the Holland Backup repository."
recipe "hollandbackup::mysqldump", "Installs & configures the Holland Backup mysqldump provider."
recipe "hollandbackup::main", "Configures the main Holland Backup settings."
recipe "hollandbackup::backupsets", "Configures the Holland Backup backupset(s) settings."