# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include demo
class demo {


  file { '/var/tmp/interfaces.txt':
    ensure => file,
    content => epp('demo/interfaces.epp'),
  }

  # add /etc/hosts entry for own host
  host { $::hostname:
    ip => $::ipaddress,
  }

}
