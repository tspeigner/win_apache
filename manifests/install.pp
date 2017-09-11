# win_apache::install
#
# Install the Apache package using Chocolatey
#
# @summary A short summary of the purpose of this class
#
# @example
#   include win_apache::install
class win_apache::install (
  $apache_version   = installed, #use installed, absent for uninstalled, or version number
) {
    package { 'apache-httpd':
      ensure   => $apache_version,
      provider => chocolatey,
    }
}
