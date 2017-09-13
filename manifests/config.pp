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
  file_line { 'sudo_rule':
    path => "${conffile}",
    line => 'Listen 80',
  }
}
