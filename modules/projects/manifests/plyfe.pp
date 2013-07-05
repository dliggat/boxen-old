class projects::plyfe {
#  include phantomjs

  boxen::project { 'plyfeme web app':
    mysql         => true,
    redis         => true,
    ruby          => '1.9.3',
    source        => 'plyfe/plyfeme'
  }
}
