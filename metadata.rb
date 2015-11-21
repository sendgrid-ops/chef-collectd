if File.file?("version_wf")
  version_var = IO.read(File.join(File.dirname(__FILE__), 'version_wf'))
else
  version_var = "0.0.0"
end

name              "collectd"
maintainer        "Hector Castro"
maintainer_email  "hectcastro@gmail.com"
license           "Apache 2.0"
description       "Installs and configures collectd."
version           version_var

recipe            "collectd", "Installs and configures collectd"
recipe            "collectd::attribute_driven", "Installs collectd plugins via node attributes"
recipe            "collectd::packages", "Installs collectd via packages"
recipe            "collectd::recompile", "Attempts to recompile collectd"
recipe            "collectd::logrotate", "sets up logrotation for collectd logfiles"

depends           'build-essential'
depends           'logrotate'
depends           'apt', '~> 2.2'
depends           'yum', '~> 3.1'
depends           'yum-epel', '~> 0.3'

%w{ amazon centos fedora redhat scientific ubuntu }.each do |os|
  supports os
end

