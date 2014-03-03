Description
===========

A cookbook to help monitor resque-pool using monit.

The attributes can be set at any of the following levels:

* global attributes
* environment attributes
* role attributes
* node attributes

Requirements
============

## Cookbooks:

This cookbook depends on the following cookbooks:

* monit

## Platforms:

* Debian
* Ubuntu
* Red Hat/CentOS/Scientific Linux/Fedora (RHEL Family)
* SUSE/OpenSUSE
* ArchLinux
* Amazon Linux AMI

Attributes
==========

This cookbook uses the following attributes: 

* `node['applications']` - An array of applications to monitor.

Recipes
=======

default
-------

The default recipe adds monit configuration for each configured application.

License and Authors
===================

Author:: Umang Chouhan <uchouhan@optimisdev.com>

Copyright:: 2012-2013, OptimisCorp., Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
