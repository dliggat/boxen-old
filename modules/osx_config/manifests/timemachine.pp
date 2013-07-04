class osx_config::timemachine {

  boxen::osx_defaults {
    'Prevent Time Machine from prompting to use new hard drives as backup volume':
      ensure => present,
      key    => 'DoNotOfferNewDisksForBackup',
      domain => 'com.apple.TimeMachine',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;
  }

}