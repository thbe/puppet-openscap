# Class: openscap::config
#
# This module contain the configuration for openscap
#
# Parameters:   This module has no parameters
#
# Actions:      This module has no actions
#
# Requires:     This module has no requirements
#
# Sample Usage: Should not be used standalone
#
class openscap::config {
  # openscap configuration
  file { $openscap::params::configDefinitionDir:
    ensure => directory,
    mode   => '0755',
    owner  => root,
    group  => root,
    path   => $openscap::params::configDefinitionDir;
  }

  file {
    $openscap::params::configSysconf:
      ensure  => present,
      mode    => '0644',
      owner   => root,
      group   => root,
      path    => $openscap::params::configSysconf,
      content => template('openscap/etc/sysconfig/oscap-scan.erb');

    $openscap::params::configCron:
      ensure  => present,
      mode    => '0755',
      owner   => root,
      group   => root,
      path    => $openscap::params::configCron,
      content => template('openscap/etc/cron.daily/oscap-scan.sh.erb');

    $openscap::params::configDefinition:
      ensure  => present,
      mode    => '0644',
      owner   => root,
      group   => root,
      source  => $openscap::params::fileRhsaAll,
      require => File[$openscap::params::configDefinitionDir];
  }
}
