include_recipe 'common.rb'

# Install bin packages
node['brew']['install_packages'].each do |package|
  execute "Install package: #{package}" do
    command "brew install #{package}"
    not_if "brew list | grep -q #{package}"
  end
end
