require 'chefspec'

describe 'bind-chroot::chroot' do
  platforms = {
    'ubuntu' => {
      'package'  => 'bind9',
      'package' => 'bind9-doc',
      'package' => 'bind9-host',
      'package' => 'bind9utils',
      'package' => 'dnsutils'
    },
    'debian' => {
      'package'  => 'bind9',
      'package' => 'bind9-doc',
      'package' => 'bind9-host',
      'package' => 'bind9utils',
      'package' => 'dnsutils'
    },
    'centos' => {
      'package'  => 'bind97-chroot',
      'package' => 'bind97-utils'
    },
    'redhat' => {
      'package'  => 'bind97-chroot',
      'package' => 'bind97-utils'
    },
    'scientific' => {
      'package'  => 'bind97-chroot',
      'package' => 'bind97-utils'
    },
    'arch' => {
      'package'  => 'bind97-chroot',
      'package' => 'bind97-utils'
    },
    'amazon' => {
      'package'  => 'bind97-chroot',
      'package' => 'bind97-utils'
    },
  }
  
  let(:chef_run) { ChefSpec::ChefRunner.new.converge 'bind-chroot::chroot' }

    it 'Should install required bind packages' do
          chef_run.should install_package package
    end

end
