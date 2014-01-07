#openscap

####Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with openscap](#setup)
    * [What openscap affects](#what-openscap-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with openscap](#beginning-with-openscap)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)


##Overview

The openscap module provides the installation procedure for openscap.

##Module Description

The openscap module scan the local installation for known vulnerabilities and
report them in a HTML page.


##Setup

###What openscap affects

* openscap package.
* openscap configuration file.
* openscap service configuration.

###Beginning with openscap

include '::openscap' is enough to get you up and running if the parameters point to
proper values.  If you wish to pass in parameters like which servers to use then you
can use:

```puppet
class { '::openscap':
  rootEmail => 'john.doe@example.local',
}
```

##Usage

All interaction with the openscap module can do be done through the main openscap class.
This means you can simply toggle the options in the openscap class to get at the full
functionality.

###I just want openscap, what's the minimum I need?

```puppet
include '::openscap'
```

##Reference

###Classes

* openscap: Main class, includes all the rest.
* openscap::install: Handles the packages.
* openscap::config: Handles the configuration file.
* openscap::service: Handles the alternative service link.

###Parameters

The following parameters are available in the openscap module

####`report`

Placeholder ...

####`result`

Placeholder ...

####`ovalDefinition`

Placeholder ...

####`xccdfDefinition`

Placeholder ...

####`profile`

Placeholder ...

####`rootEmail`

Placeholder ...


##Limitations

This module has been built on and tested against Puppet 3.2 and higher.

The module has been tested on:

* RedHat Enterprise Linux 5/6
* Scientific Linux 5/6

Testing on other platforms has been light and cannot be guaranteed. 


##Development

If you like to add or improve this module, feel free to fork the module and send
me a merge request with the modification.
