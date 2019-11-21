#mastername.rb
 
Puppet::Functions.create_function(:mastername) do
  dispatch :mastername do
    param 'String', :filename
    optional_param 'String', :foo
    return_type 'String'
  end
 
  def mastername(*arguments)
    #puts filename.to_s
    File.open('/etc/puppetlabs/puppet/puppet.conf').grep(/server\s*=/).join.split(' ').slice(2)
    # Below line works as welll. Where \= is escaped
    #File.open('/etc/puppetlabs/puppet/puppet.conf').grep(/server\s*\=/).join.split(' ').slice(2)
  end
end

