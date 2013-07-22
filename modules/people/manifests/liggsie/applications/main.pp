class people::liggsie::applications::main {

  include alfred
  include chrome
  include dropbox
  include firefox
  include gitx
  include heroku
  include imagemagick
  include iterm2::stable
  include onepassword
  include redis
  include sequel_pro
  include skype
  include textwrangler
  include transmission
  include vim
  include vlc
  include vmware_fusion
  include wget
  include xquartz

  # Homebrew Packages
  package {
    [
      'heroku-toolbelt',
      'pidof',
      'synergy'
    ]:
  }
}
