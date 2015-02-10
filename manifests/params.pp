# Class: openscap::params
#
# This module contain the parameters for openscap
#
# Parameters:   This module has no parameters
#
# Actions:      This module has no actions
#
# Requires:     This module has no requirements
#
# Sample Usage: Should not be used standalone
#
class openscap::params {
  # Operating system specific definitions
  case $::osfamily {
    'RedHat' : {
      $linux = true
      # General definition
      $report = '/var/log/oscap-scan.html'
      $result = '/var/log/oscap-scan.xml'
      $ovalDefinition = '/srv/openscap/com.redhat.rhsa-all.xml'
      $xccdfDefinition = '/usr/share/openscap/scap-xccdf.xml'
      $profile = 'F14-Desktop'

      # Package definition
      $packageCommon = 'openscap'
      $packageUtils = 'openscap-utils'
      $packageContent = 'openscap-content'

      # Config definition
      $configSysconf = '/etc/sysconfig/oscap-scan'
      $configCron = '/etc/cron.daily/oscap-scan'
      $configDefinitionDir = '/srv/openscap'
      $configDefinition = "${configDefinitionDir}/com.redhat.rhsa-all.xml"

      # Service definition
      $serviceCommon = 'oscap-scan'

      # File definition
      $fileRhsaAll = 'puppet:///modules/openscap/com.redhat.rhsa-all.xml.bz2'
    }
    default  : {
      $linux = false
    }
  }

  # openscap definitions
  $rootEmail = 'john.doe@example.local'
}
