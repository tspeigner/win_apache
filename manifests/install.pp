# win_apache::install
#
# Install the Apache package using Chocolatey
#
# @summary A short summary of the purpose of this class
#
# @example
#   include win_apache::install
class win_apache::install {
    package { 'apache-httpd':
      ensure          => $win_apache::apache_version,
      provider        => chocolatey,
      install_options => ['--params', '"', "/installLocation:${win_apache::install_location}", '"'],
    }
}
