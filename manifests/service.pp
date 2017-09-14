# win_apache::service
#
# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include win_apache::service
class win_apache::service {
  include win_apache
  $win_apache::conffile
  service { 'Apache':
    ensure => running,
    enable => true,
  }
}
