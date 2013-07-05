class osx_config::keyboard {

  boxen::osx_defaults {
    'Set a blazingly fast keyboard repeat rate':
      ensure => present,
      key    => 'KeyRepeat',
      domain => 'NSGlobalDomain',
      value  => '1',
      type   => 'int',
      user   => $::boxen_user;

    'Disable autocorrect':
      ensure => present,
      key    => 'NSAutomaticSpellingCorrectionEnabled',
      domain => 'NSGlobalDomain',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;

    'Disable accented chars on key press and hold':
      ensure => present,
      key    => 'ApplePressAndHoldEnabled',
      domain => 'NSGlobalDomain',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;

  }

}
