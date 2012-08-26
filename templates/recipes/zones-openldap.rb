#
# Cookbook Name:: bind-chroot
# Recipe:: zones-openldap 
#
# Copyright 2012, Gerald L. Hevener Jr., M.S.
#

# Install OpenLDAP client & server
case node['platform']
  when "debian","ubuntu"
    %w{ slapd ldap-utils ldap2dns ldap2zone }.each do |pkg|
    package pkg do
      action :install
    end
  end
end

case node['platform']
  when "redhat","centos","scientific","arch","amazon"
    %w{ openldap-servers openldap-clients }.each do |pkg|
    package pkg do
      action :install
    end
  end
end

# Download zone2ldif.pl to /usr/local/bin
remote_file "/usr/local/bin/zone2ldif.pl" do
  source "http://bind9-ldap.bayour.com/zone2ldif.pl"
  mode "0744"
  owner "root"
  group "root"
  checksum "b1f6fed631ba22ebeef390a691cbaf3d"
  not_if "test -f /usr/local/bin/zone2ldif.pl"
end

# Add template for /etc/ldap/schema/dnszone-schema.schema
template "/etc/ldap/schema/dnszone-schema.schema" do
  source "dnszone-schema.erb"
  owner "root"
  group "root"
  mode "0644"
  not_if "test -f /etc/ldap/schema/dnszone-schema.schema"
end

# Add template for /usr/share/slapd/slapd.conf
template "/usr/share/slapd/slapd.conf" do
  source "slapd.conf.erb"
  owner "root"
  group "root"
  mode "0644"
  #not_if "test -f /etc/ldap/schema/dnszone-schema.schema"
end


