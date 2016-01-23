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
include_recipe "yum-epel"

log "Installng base packages..."
node[:mesos_box][:el][:base_packages].each do |p|
  package p
end

if node[:mesos_box][:el][:additional_packages].any? then
  log "Installng additional packages..."
  node[:mesos_box][:el][:additional_packages].each do |p|
    package p
  end
end

log "Installing supporting packages..."

node[:mesos_box][:el][:support_packages].each do |p|
  package p
end

log "Installing scilinux packages..."

node[:mesos_box][:el][:scilinux_packages].each do |p|
  package p
end

log "Installing subversion packages..."

node[:mesos_box][:el][:subversion_packages].each do |p|
  package p
end

log "Done adding the packages supporting a the Mesos Build."
