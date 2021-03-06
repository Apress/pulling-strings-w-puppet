module Puppet
       newtype(:shells) do

       @doc = "Manages shells in /etc/shells. For example::

       shells { \"/bin/bash\":
          ensure => present,
       }
       There is also an optional target attribute if your
       shells file is located elsewhere."

       ensurable

       newparam(:shell, :namevar => true) do
          desc "The shell to manage"
          isnamevar
       end
        
       newproperty(:target) do
          desc "Location of shells file"
          defaultto { if @resource.class.defaultprovider.ancestors.include?(Puppet::Provider::ParsedFile)
                            @resource.class.defaultprovider.default_target
                      else
                            nil
                      end
          }
       end
    end
end
