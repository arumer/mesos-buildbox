name              "mesos-buildbox"
maintainer        "Bernardo Gomez Palacio"
maintainer_email  "bernardo.gomezpalacio@gmail.com"
license           "Apache 2.0"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "0.0.1"

depends           "yum"
depends           "java"

recipe "mesos-buildbox", "Nothing right now. Please use mesos-buildbox::packages"
recipe "mesos-buildbox:packages", "Installs development packages."

%w{ redhat centos scientific amazon }.each do |os|
  supports os, ">= 6.0"
end

%w{ yum java }.each do |cb|
  depends cb
end
