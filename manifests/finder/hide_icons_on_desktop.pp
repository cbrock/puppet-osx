# Public: Hide icons on the desktop.
class osx::finder::hide_icons_on_desktop {
  include osx::finder

  boxen::osx_defaults { 'Hide Desktop icons':
    user   => $::boxen_user,
    domain => 'com.apple.finder',
    key    => 'CreateDesktop',
    value  => false,
    notify => Exec['killall Finder'];
  }
}
