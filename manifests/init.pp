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
  $rootEmail       = $openscap::params::rootEmail
) {
  # Include Puppetlabs standard library
  include stdlib
  include openscap::params

  # Start workflow
  if $openscap::params::linux {
    anchor { 'openscap::start': }
    -> class { 'openscap::package': }
    ~> class { 'openscap::config': }
    ~> class { 'openscap::service': }
    ~> anchor { 'openscap::end': }
  }
}
