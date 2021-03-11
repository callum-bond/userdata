# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile/

# A name that describes what the system you're building with Chef does.
name 'userdata'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'userdata::default'

# Specify a custom source for a single cookbook:
cookbook 'userdata', path: '.'
cookbook 'cloudcli', '~> 1.2.0', :supermarket
cookbook 'docker_compose', '~> 0.1.1', :supermarket