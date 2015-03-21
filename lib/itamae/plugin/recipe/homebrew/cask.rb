include_recipe 'common.rb'

execute 'Install brew-cask' do
  command 'brew install caskroom/cask/brew-cask'
  not_if 'brew list | grep -q brew-cask'
end

# Install apps
install_apps = node['brew']['install_apps']
install_apps.each do |app|
  execute "Install application: #{app}" do
    command "brew cask install #{app} --appdir=\'/Applications\'"
    not_if "brew cask list | grep -q #{app}"
  end
end

# Setup alfred
if install_apps.include?(:alfred)
  execute 'Setup alfred' do
    command 'brew cask alfred link'
  end
end
