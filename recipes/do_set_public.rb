#
# Cookbook Name:: sys_dns
# Copyright Abine 2012

rightscale_marker :begin

# This will set the DNS record identified by the “DNS Record ID” input to the first public IP address of the instance.
sys_dns "default" do
  id node[:sys_dns][:id]
  address node[:cloud][:public_ips][0]
  region node[:sys_dns][:region]
  ttl node[:sys_dns][:ttl]
  action :set
  not_if {node[:sys_dns][:id].empty?}
end

rightscale_marker :end
