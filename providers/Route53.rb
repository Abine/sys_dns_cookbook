#
# Cookbook Name:: sys_dns
#
# Copyright RightScale, Inc. All rights reserved.
# All access and use subject to the RightScale Terms of Service available at
# http://www.rightscale.com/terms.php and, if applicable, other agreements
# such as a RightScale Master Subscription Agreement.

# @resource sys_dns

# Sets Route53 service
action :set do
  log "==================== sys_dns(:set) Route53 BEGIN ==================== "

  # Creates an instance of the AWS class (found in cookbooks/sys_dns/libraries/helper.rb)
  # and calls the 'action_set' method with proper parameters.
  RightScale::DnsTools::AWS.new(Chef::Log).action_set(new_resource.id, new_resource.user, new_resource.password, new_resource.address, new_resource.ttl)

  log "==================== sys_dns(:set) Route53   END ==================== "
end
