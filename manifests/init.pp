# win_apache
#
# This class installs and configures Apache on Windows 
#
# @summary The intention is to install and configure Apache on Windows,
# but also be a part of a larger module that installs the entire WAMP stack
#
# @example
#   include win_apache
class win_apache (
  $win_apache::config::conffile
) {
  include win_apache::install
  include win_apache::config
  include win_apache::service

  Class['win_apache::install']
  -> Class['win_apache::config']
  ~> Class['win_apache::service'] # the ~> "notifies" the service when a change happens.
}