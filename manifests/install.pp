# win_apache::install
#
# Install the Apache package using Chocolatey
#
# @summary A short summary of the purpose of this class
#
# @example
#   include win_apache::install
class win_apache::install {
  ## Include the win_apache class to use the module params
  include win_apache
  # Install the apache-httpd package with chocolatey
  # Specify the version in data\common.yaml, otherwise 
  # it will install the latest version
    package { 'apache-httpd':
      ensure          => $win_apache::apache_version,
      provider        => chocolatey,
      install_options => ['--params', '"', "/installLocation:${$win_apache::install_location}", '"'],
    }
}
