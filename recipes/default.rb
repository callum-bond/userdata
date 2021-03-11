#
# Cookbook:: userdata
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.


include_recipe 'docker_compose::installation'

bash 'install_awscli' do
    user 'root'
    code <<--EOH
        curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
        unzip awscliv2.zip
        sudo ./aws/install
        rm -f awscliv2.zip
        rm -rf ./aws
    EOH
end