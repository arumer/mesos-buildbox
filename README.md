mesos-buildbox
==============

Helps create a box to build Mesos.

# Description

Installs the required packages to build Mesos. If running on a EL it will enable the EPEL YUM Repository.

# Requirements

Red Hat Enterprise Linux 5, and 6 distributions within this platform
family.

Depends on the following recipes:

* yum
* java


# Attributes

# Recipes

* mesos-buildbox::packages - Installs required packages to build Mesos.

## Default

Just add the following to your run list `recipe[mesos-buildbox::packages]`.

### Example

# Usage

# Development

TODO **Test With Strainer** do `bundle exec strainer test`

# License and Author

* Author:: Bernardo Gomez Palacio (<bernardo.gomezpalacio {at} gmail {dot} com>)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
