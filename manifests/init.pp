# == Class: openscap
#
# This is the openscap module. This module install all things
# required to setup openscap.
#
# === Parameters
#
# Here is the list of parameters used by this module.
#
# [*report*]
#   Specify the file and path for the report
#   Default value is /var/log/oscap-scan.html
#
# [*result*]
#   Specify the file and path for the result
#   Default value is /var/log/oscap-scan.xml
#
# [*ovalDefinition*]
#   Specify the file and path for the oval definition
#   Default value is /srv/openscap/com.redhat.rhsa-all.xml
#
# [*xccdfDefinition*]
#   Specify the file and path for the xccd definition
#   Default value is /usr/share/openscap/scap-xccdf.xml
#
# [*profile*]
#   Specify the profile against which the system is checked
#   Default value is F14-Desktop
#
# [*rootEmail*]
#   Specify the email that recieve the reports (not implemented yet)
#   Default value is john.doe@example.local
#
# === Variables
#
# No additonal variables are required for this module
#
# === Examples
#
#  class { '::openscap':
#    profile => 'F14-Desktop',
#  }
#
# === Authors
#
# Thomas Bendler <project@bendler-net.de>
#
# === Copyright
#
# Copyright 2015 Thomas Bendler, unless otherwise noted.
#
class openscap (
  $report          = $openscap::params::report,
  $result          = $openscap::params::result,
  $ovalDefinition  = $openscap::params::ovalDefinition,
  $xccdfDefinition = $openscap::params::xccdfDefinition,
  $profile         = $openscap::params::profile,
  $rootEmail       = $openscap::params::rootEmail) inherits openscap::params {
  # Require class yum to have the relevant repositories in place
  require yum

  # Start workflow
  if $openscap::params::linux {
    contain openscap::package
    contain openscap::config
    contain openscap::service

    Class['openscap::package'] ->
    Class['openscap::config'] ->
    Class['openscap::service']
  }
}
