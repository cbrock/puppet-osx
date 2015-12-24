# Public: Don’t automatically rearrange Spaces based on most recent use
class osx::dock::no_auto_rearrange {
  include osx::dock

  boxen::osx_defaults { 'Do not rearrange Spaces based on use':
    user   => $::boxen_user,
    key    => 'mru-spaces',
    domain => 'com.apple.dock',
    value  => false,
    notify => Exec['killall Dock'];
  }
}
