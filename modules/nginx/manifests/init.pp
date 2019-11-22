# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include nginx
class nginx (
  String $test_param = 'no',
) {
  package { 'nginx':
    ensure => present,
  }
  file { '/var/www/index.html':
    ensure => file,
    require => Package['nginx'],
    content => "test_param $test_param",
  }
  service { 'nginx':
    ensure => running,
    enable => true,
  }

}
