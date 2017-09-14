# win_apache::config
#
# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include win_apache::config
# paramter is actually win_apache::config::conffile > looks up value in hiera, set param and value in hiera
class win_apache::config {
  include win_apache
  file { $conffile:
    ensure  => file,
    content => epp('win_apache/httpd.conf.epp'), #basic template file
  }
}