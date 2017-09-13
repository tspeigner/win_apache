# win_apache::config
#
# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include win_apache::config
class win_apache::config (
  $conffile = 'c:\tools\apache24\conf\httpd.conf'
){
  file { "${conffile}":
    ensure  => file,
    content => epp('win_apache/httpd.conf.epp'),
  }
}
