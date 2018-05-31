
# win_apache

#### Table of Contents

1. [Description](#description)
2. [Setup - The basics of getting started with win_apache](#setup)
    * [Setup requirements](#setup-requirements)
    * [Beginning with win_apache](#beginning-with-win_apache)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)
7. [Release Notes](#release)

## Description

This module installs and configures Apache for Windows.  We use [Chocolatey](https://forge.puppet.com/puppetlabs/chocolatey) for the installation and a [Puppet Template](https://docs.puppet.com/puppet/5.1/lang_template_epp.html) file, which is pretty basic at the moment, but you can make it your own.  We will continue to add on as we can and make it smarter and more robust.

## Setup

### Setup Requirements 

This module does require Chocolatey to install the package, but you can define where it is installed to.  Check out the [Hiera](https://docs.puppet.com/puppet/5.1/hiera_intro.html) data [here](https://github.com/tspeigner/win_apache/blob/master/data/common.yaml).

### Beginning with win_apache  

```sh
include win_apache
```

## Reference

[Chocolatey](https://forge.puppet.com/puppetlabs/chocolatey)

We do create an [apache_version](https://github.com/tspeigner/win_apache/blob/master/lib/facter/apache_version.rb) fact and it is visible and usable in the environment.  It is set to find the current version based on chocolatey output and we will keep tabs on if the scope changes and will update accordingly.

## Limitations

This has only been tested on Windows 2012 R2, but will be tested on Windows 2016 soon.  If you try it and it works let us know.

## Development

Fork it, develop it, push it.  Or just give feedback, you won't hurt my feelings.

## Release Notes 

See the [Changelog](https://forge.puppet.com/tspy/win_apache/changelog)
