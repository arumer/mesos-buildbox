name              "mesos-buildbox"
maintainer        "Bernardo Gomez Palacio"
maintainer_email  "bernardo.palacio@guavus.com"
license           "Apache 2.0"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "0.0.1"

depends           "yum"
depends           "java"

recipe "mesos-buildbox", "Installs software stack to build the Mesos RPM."
recipe "mesos-buildbox:packages", "Installs development packages."

%w{ redhat centos scientific amazon }.each do |os|
  supports os, ">= 6.0"
end

%w{ yum java }.each do |cb|
  depends cb
end
