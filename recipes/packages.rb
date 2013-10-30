#
# Author:: Bernardo Gomez Palacio (<bernardo.gomezpalacio@guavus.com>)
# Cookbook Name:: mesos-buildbox 
# Recipe:: packages
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


# Enable YUM Repositories..
include_recipe "yum"
include_recipe "yum::epel"

log "Installng RPM 'Development Tools' packages..."
%w{
    mock
    rpmdevtools
    autoconf
    automake
    binutils
    bison
    flex
    gcc
    gcc-c++
    gettext
    libtool
    make
    patch
    pkgconfig
    redhat-rpm-config
    rpm-build
    byacc
    python-devel
    libcurl-devel 
    zlib-devel 
    openssl-devel
    cyrus-sasl-devel
    cyrus-sasl
    cyrus-sasl-md5
    cyrus-sasl-plain
}.each do |p|
    package p
end

#log "Installing used Mesos Support Libraries ..."
#%w{ snappy }.each do |p|
#  package p 
#end

log "Installing other support tools..."
%w{ strace gperftools gflags-devel vim atop man }.each do |p|
  package p 
end

log "Done adding the packages supporting a Mesos Build."
