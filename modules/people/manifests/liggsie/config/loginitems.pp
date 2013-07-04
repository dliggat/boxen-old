class people::liggsie::config::loginitems {

  notify { 'class people::liggsie::config::loginitems declared': }

  osx_login_item {
    #'Alfred 2':
    #  name    => 'Alfred 2',
    #  path    => '/Applications/Alfred 2.app',
    #  hidden  => true;
    #  #require => Class['alfred2'];  # TODO: Learn to use this class thing.

    'Messages':
      name    => 'Messages',
      path    => '/Applications/Messages.app',
      hidden  => true;

    'Calendar':
      name    => 'Calendar',
      path    => '/Applications/Calendar.app',
      hidden  => true;
  }

}