# win_apache
#
# This class installs and configures Apache on Windows 
#
# @summary The intention is to install and configure Apache on Windows,
# but also be a part of a larger module that installs the entire WAMP stack
#
# @example
#   include win_apache
class win_apache {
  include win_apache::install
  include win_apache::config
  include win_apache::service
  include win_apache::sites
  include win_apache::params
}