#ssmtp

####Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with ssmtp](#setup)
    * [What ssmtp affects](#what-ssmtp-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with ssmtp](#beginning-with-ssmtp)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)


##Overview

The ssmtp module provides the installation procedure for SSMTP including the setup of
the alternate system if not overwritten by class parameter.

##Module Description

The SSMTP module prelace the standard mail server configuration with a light
wight sending only server. The behavior is the same as sendmail but without
the possibility to recieve mails from external systems.


##Setup

###What ssmtp affects

* ssmtp package.
* ssmtp configuration file.
* ssmtp alternative service configuration.

###Beginning with ssmtp

include '::ssmtp' is enough to get you up and running if the parameters point to
proper values.  If you wish to pass in parameters like which servers to use then you
can use:

```puppet
class { '::ssmtp':
  mailHub => 'mail.example.local',
}
```

##Usage

All interaction with the ssmtp module can do be done through the main ssmtp class.
This means you can simply toggle the options in the ssmtp class to get at the full
functionality.

###I just want SSMTP, what's the minimum I need?

```puppet
include '::ssmtp'
```

###I just want to route all mails to central mail gateway, nothing else.

```puppet
class { '::ssmtp':
  mailHub => 'mail.example.local',
  rootEmail => 'john.doe@example.local',
}
```


##Reference

###Classes

* ssmtp: Main class, includes all the rest.
* ssmtp::install: Handles the packages.
* ssmtp::config: Handles the configuration file.
* ssmtp::service: Handles the alternative service link.

###Parameters

The following parameters are available in the ssmtp module

####`defaultMta`

Replace the default MTA with ssmtp if set to ssmtp.

####`rootEmail`

Specify which Email address should recieve all mails from root.

####`mailHub`

Define the mail server which should deliver all mails.

####`revaliases`

Array to define the reverse aliases.


##Limitations

This module has been built on and tested against Puppet 3.2 and higher.

The module has been tested on:

* RedHat Enterprise Linux 5/6
* Scientific Linux 5/6

Testing on other platforms has been light and cannot be guaranteed. 


##Development

If you like to add or improve this module, feel free to fork the module and send
me a merge request with the modification.
