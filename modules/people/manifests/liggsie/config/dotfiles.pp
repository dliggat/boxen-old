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
    #'alias.lp':         value => 'log -p';
    #'alias.snapshot':   value => '!git stash save "snapshot: $(date)" && git stash apply "stash@{0}"';
    #'alias.ours':       value => '"!f() { git checkout --ours $@ && git add $@; }; f"';
    #'alias.theirs':     value => '"!f() { git checkout --theirs $@ && git add $@; }; f"';
  }

  repository {
    "dotfiles":
      source   => 'liggsie/dotfiles',
      path     => "${my_sourcedir}/dotfiles";
  }

  

  # file { "${my_homedir}/.gvimrc":
  #   ensure  => link,
  #   target  => "${my_sourcedir}/dotfiles/gvimrc",
  #   require => Repository["dotfiles"],
  # }

  # file { "${my_homedir}/.login_conf":
  #   ensure  => link,
  #   target  => "${my_sourcedir}/dotfiles/login_conf",
  #   require => Repository["dotfiles"],
  # }

  # file { "${my_homedir}/.tmux.conf":
  #   ensure  => link,
  #   target  => "${my_sourcedir}/dotfiles/tmux.conf",
  #   require => Repository["dotfiles"],
  # }

  # file { "${my_homedir}/.slate.js":
  #   ensure  => link,
  #   target  => "${my_sourcedir}/dotfiles/slate.js",
  #   require => Repository["dotfiles"],
  # }

  # file { "${my_homedir}/.vimrc":
  #   ensure  => link,
  #   target  => "${my_sourcedir}/dotfiles/vimrc",
  #   require => Repository["dotfiles"],
  # }

  # file { "${my_homedir}/.zlogin":
  #   ensure  => link,
  #   target  => "${my_sourcedir}/dotfiles/zlogin",
  #   require => Repository["dotfiles"],
  # }

  # file { "${my_homedir}/.zprezto":
  #   ensure  => link,
  #   target  => "${my_sourcedir}/dotfiles/prezto",
  #   require => Repository["dotfiles"],
  # }

  # file { "${my_homedir}/.zpreztorc":
  #   ensure  => link,
  #   target  => "${my_sourcedir}/dotfiles/zpreztorc",
  #   require => Repository["dotfiles"],
  # }

  # file { "${my_homedir}/.zshenv":
  #   ensure  => link,
  #   target  => "${my_sourcedir}/dotfiles/zshenv",
  #   require => Repository["dotfiles"],
  # }

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

  # file { "${my_homedir}/Library/Preferences/com.googlecode.iterm2.plist":
  #   ensure  => link,
  #   target  => "${my_sourcedir}/dotfiles/osx/com.googlecode.iterm2.plist",
  #   require => Repository["dotfiles"],
  # }

}