#mastername.rb

Puppet::Functions.create_function(:mastername) do
  dispatch :mastername do
    #param 'String', :filename
    #optional_param 'String', :foo
    #return_type 'String'
  end

  def mastername
    #puts filename.to_s
    File.open(/etc/puppetlabs/puppet/puppet.conf).grep(/server =/).join.split(' ').slice(2)
  end
end
