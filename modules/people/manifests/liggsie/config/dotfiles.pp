class people::liggsie::config::dotfiles (
  $my_sourcedir   = $people::liggsie::params::my_sourcedir,
  $my_homedir     = $people::liggsie::params::my_homedir,
  $my_username    = $people::liggsie::params::my_username
) {

  notify { 'class people::liggsie::config::dotfiles declared': }

  git::config::global {
    'user.name':        value => 'Dave Liggat';
    'user.email':       value => 'liggsie@gmail.com';
    'core.editor':      value => 'vim';
    'color.ui':         value => 'true';

    # Aliases
    'alias.s':         value => 'status';
  }

  repository {
    "dotfiles":
      source   => 'liggsie/dotfiles',
      path     => "${my_sourcedir}/dotfiles";
  }

  file { "${my_homedir}/.gvimrc":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/gvimrc",
    require => Repository["dotfiles"],
  }

  file { "${my_homedir}/.vimrc":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/vimrc",
    require => Repository["dotfiles"],
  }

  file { "${my_homedir}/.bash_profile":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/bash_profile",
    require => Repository["dotfiles"],
  }

  file { "${my_homedir}/.bashrc":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/bashrc",
    require => Repository["dotfiles"],
  }

  file { "${my_homedir}/.gitignore":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/gitignore",
    require => Repository["dotfiles"],
  }

  file { "${my_homedir}/Library/Preferences/com.manytricks.Moom.plist":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/plists/com.manytricks.Moom.plist",
    require => Repository["dotfiles"],
  }

  file { "${my_homedir}/Library/Preferences/com.googlecode.iterm2.plist":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/plists/com.googlecode.iterm2.plist",
    require => Repository["dotfiles"],
  }

  file { "${my_homedir}/Library/Preferences/com.runningwithcrayons.Alfred-Preferences.plist":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/plists/com.runningwithcrayons.Alfred-Preferences.plist",
    require => Repository["dotfiles"],
  }

  file { "${my_homedir}/.synergy.conf":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/synergy.conf",
    require => Repository["dotfiles"],
  }

}
