include_recipe 'common.rb'

# Install bin packages
node['brew']['install_packages'].each do |package|
  package_without_options = package.split(/[ \/]/).first
  execute "Install package: #{package_without_options}" do
    command "brew install #{package}"
    not_if "brew list | grep -q '#{package_without_options}$'"
  end
end
