class people::liggsie::applications::sublime_text_2 (
  $my_sourcedir   = $people::liggsie::params::my_sourcedir,
  $my_homedir     = $people::liggsie::params::my_homedir,
  $my_username    = $people::liggsie::params::my_username
) {

  notify { 'class people::liggsie::applications::sublime_text_2 declared': }

  include sublime_text_2

  define addpkg {
    $packagedir = "Library/Application Support/Sublime Text 2/Packages/"
    $pkgarray = split($name, '[/]')
    $pkgname = $pkgarray[1]

    exec { "git clone https://github.com/${name}.git":
      cwd      => "/Users/${::luser}/${packagedir}",
      provider => 'shell',
      creates  => "/Users/${::luser}/${packagedir}${pkgname}",
      path     => "${boxen::config::homebrewdir}/bin",
      #require  => [Package[sublime_text_2], Class['git']],  # TODO: fix me. This dependency specification should work.
    }
  }

  $base = "/Users/${::luser}/Library/Application Support"
  file { [
      "${base}/Sublime Text 2",
      "${base}/Sublime Text 2/Packages",
    ]:
    ensure => "directory"
  }->

  file { "${base}/Sublime Text 2/Packages/User":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/sublime_text_2/Packages/User",
    require => Repository["dotfiles"],
  }

  addpkg {
    [
     "alienhard/SublimeAllAutocomplete",
     "davidrios/jade-tmbundle",
     "kemayo/sublime-text-2-git",
     "sass-textmate-bundle",
     "SublimeText/jQuery",
     "wbond/sublime_package_control"
    ]:
  }

}
