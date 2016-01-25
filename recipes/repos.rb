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

# TODO: This can be generalized
# Enable YUM Repositories..
include_recipe "yum"

log "Installng repositories..."

yum_repository 'scilinux' do
    description node[:mesos_box][:scilinux_repo][:name]
    baseurl node[:mesos_box][:scilinux_repo][:base_url]
    gpgkey node[:mesos_box][:scilinux_repo][:gpgkey]
    gpgcheck node[:mesos_box][:scilinux_repo][:gpgcheck]
    enabled node[:mesos_box][:scilinux_repo][:enabled]
    action :create
end

yum_repository 'wandisco-svn' do
    description node[:mesos_box][:subversion_repo][:name]
    baseurl node[:mesos_box][:subversion_repo][:baseurl]
    gpgkey node[:mesos_box][:subversion_repo][:gpgkey]
    gpgcheck node[:mesos_box][:subversion_repo][:gpgcheck]
    enabled node[:mesos_box][:subversion_repo][:enabled]
    action :create
end
    
log "Done adding the repositories supporting the Mesos Build."
