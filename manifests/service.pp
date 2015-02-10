# Class: openscap::service
#
# This module contain the service configuration for openscap
#
# Parameters:   This module has no parameters
#
# Actions:      This module has no actions
#
# Requires:     This module has no requirements
#
# Sample Usage: Should not be used standalone
#
class openscap::service {
  # openscap service configuration
  if $openscap::params::linux {
    service { $openscap::params::serviceCommon:
      ensure  => 'running',
      enable  => true,
      require => Package[$openscap::params::packageUtils];
    }
  }
}
