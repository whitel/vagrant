require "vagrant"

module VagrantPlugins
  module GuestFedora
    class Plugin < Vagrant.plugin("2")
      name "Fedora guest"
      description "Fedora guest support."

      guest(:fedora, :redhat) do
        require_relative "guest"
        Guest
      end

      guest_capability(:fedora, :flavor) do
        require_relative "cap/flavor"
        Cap::Flavor
      end

      guest_capability("fedora", "flavor") do
        require_relative "cap/flavor"
        Cap::Flavor
      end

      guest_capability("fedora", "nfs_client_install") do
        require_relative "cap/nfs_client"
        Cap::NFSClient
      end
    end
  end
end
