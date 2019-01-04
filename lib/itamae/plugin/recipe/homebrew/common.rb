BREW_INSTALL_URL = 'https://raw.githubusercontent.com/Homebrew/install/master/install'

# Install brew
execute "Install brew" do
  command "ruby -e \"$(curl -fsSL #{BREW_INSTALL_URL})\""
  not_if "test $(which brew)"
end

# Update brew
enable_update = node['brew']['enable_update'] ? node['brew']['enable_update'] : false
if enable_update
  execute 'Update brew' do
    command 'brew update'
  end
else
  Itamae.logger.info('Execution skipped Update brew because of not true enable_update')
end

# Upgrade brew
enable_upgrade = node['brew']['enable_upgrade'] ? node['brew']['enable_upgrade'] : false
if enable_upgrade
  execute 'Upgrade brew' do
    command 'brew upgrade'
  end
else
  Itamae.logger.info('Execution skipped Upgrade brew because of not true enable_upgrade')
end

# Add Repository
node['brew']['add_repositories'].try(:each) do |repo|
  execute "Add Repository: #{repo}" do
    command "brew tap #{repo}"
    not_if "brew tap | grep -q #{repo}"
  end
end
