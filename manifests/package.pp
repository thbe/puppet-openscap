# Class: openscap::package
#
# This module contain the service configuration for openscap
#
# Parameters:   This module has no parameters
#
# Actions:      This module has no actions
#
# Requires:     This module has no requirements
#
# Sample Usage:
#
class openscap::package {
  package { $openscap::params::packageCommon: ensure => installed; }

  package { $openscap::params::packageUtils: ensure => installed; }

  if $::lsbmajdistrelease >= '6' {
    package { $openscap::params::packageContent: ensure => installed; }
  }
}
