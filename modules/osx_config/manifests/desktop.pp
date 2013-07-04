class osx_config::desktop {


  exec { 'Show item info near icons in icon views':
    command => '/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist',
  }

  exec { 'Enable snap-to-grid for icons on the desktop':
    command => '/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist',
  }

  exec { 'Increase the size of icons on the desktop and in other icon views':
    command => '/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:iconSize 64" ~/Library/Preferences/com.apple.finder.plist',
  }

  exec { 'Increase the size of icons in icon views':
    command => '/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:iconSize 64" ~/Library/Preferences/com.apple.finder.plist',
  }

}