#
# Author:: Bernardo Gomez Palacio (<bernardo.gomezpalacio@gmail.com>)
# Cookbook Name:: mesos-buildbox
# Recipe:: default
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


include_recipe 'java'

include_recipe 'maven'

case node['platform_family']
when "rhel", "fedora"
  include_recipe 'mesos-buildbox::epel-packages'
#when "freebsd"
#when "arch"
#when "debian"
#when "smartos"
  #
else
  log "Platform #{node[:platform_family]} is not yet supported!" do
    level :warn
  end
end

