# Itamae::Plugin::Recipe::Homebrew

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'itamae-plugin-recipe-homebrew'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install itamae-plugin-recipe-homebrew

## Usage

### Recipe

##### your recipe example
```ruby
include_recipe 'homebrew::package'
include_recipe 'homebrew::cask'
```

### Node
Use this with itamae -y localhost.yml

##### your node example
```yaml
# localhost.yml
brew:
  enable_update: false
  enable_upgrade: false
  add_repositories:
    - homebrew/dupes
    - homebrew/versions
    - homebrew/binary
    - peco/peco
    - motemen/ghq
  install_packages:
    - brew-cask
    - coreutils
    - findutils
    - zsh
    - bash
    - vim
    - tmux
    - git
    - hub
    - tig
    - ghq
    - imagemagick
    - wget
    - rsync
    - curl
    - tree
    - openssl
    - libyaml
    - readline
    - markdown
    - jq
    - peco
    - ctags
    - rbenv
    - ruby-build
    - mysql
    - postgresql
    - node
  install_apps:
    - google-chrome
    - iterm2
    - virtualbox
    - vagrant
    - vagrant-manager
    - google-japanese-ime
    - dash
    - github
    - xtrafinder
    - appcleane
    - bettertouchtool
```
##### Description of Option
* ** enable_update ** : run the `brew update` If true
* ** enable_upgrade ** : run the `brew upgrade` If true
* ** add_repositories ** : run the `brew tap XXXXX`. To specify the repositories you want to add an array
* ** install_packages ** : run the `brew install XXXXX`. To specify the packages you want to add an array
* ** install_apps ** : run the `brew cask instal`. To specify the applications you want to add an array

## Contributing

1. Fork it ( https://github.com/[my-github-username]/itamae-plugin-recipe-homebrew/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
