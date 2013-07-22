class projects::plyfe {
#  include phantomjs

  #boxen::project { 'plyfeme':
  #  mysql         => true,
  #  redis         => true,
  #  ruby          => '1.9.3',
  #  source        => 'plyfe/plyfeme'
  #}

  boxen::project { 'denny':
    mysql         => false,
    redis         => false,
    ruby          => '2.0.0',
    source        => 'plyfe/denny'
  }


  package {
    [
      'casperjs',
      'qt'
    ]:
  }
}
