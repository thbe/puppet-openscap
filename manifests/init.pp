# Class: openscap
#
# This module manages openscap
#
# Parameters:
#  report
#  result
#  definition
#  rootEmail  = Mail address that get root mails
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#  include openscap{ definition=rhel6 }
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
