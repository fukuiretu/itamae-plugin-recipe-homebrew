BREW_INSTALL_URL = 'https://raw.githubusercontent.com/Homebrew/install/master/install'

# Update brew
enable_update = node['brew']['enable_update'] ? node['brew']['enable_update'] : false
if enable_update
  execute 'Update brew' do
    command 'brew update'
  end
else
  Logger.info('Execution skipped Update brew because of not true enable_update')
end

# Upgrade brew
enable_upgrade = node['brew']['enable_upgrade'] ? node['brew']['enable_upgrade'] : false
if enable_upgrade
  execute 'Upgrade brew' do
    command 'brew upgrade'
  end
else
  Logger.info('Execution skipped Upgrade brew because of not true enable_upgrade')
end

# Add Repository
node['brew']['add_repositories'].each do |repo|
  execute 'Add Repository' do
    command "brew tap #{repo}"
    not_if "brew tap | grep -q #{repo}"
  end
end
