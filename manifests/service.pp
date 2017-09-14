# win_apache::service
#
# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include win_apache::service
class win_apache::service {
  service { 'Apache':
    ensure => running,
  }
}
