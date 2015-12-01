# disable volume change sound
class osx::sound::disable_volume_change_sound {
  include osx::system_ui

  boxen::osx_defaults { 'Disable the volume change sound':
    user   => $::boxen_user,
    type   => 'int',
    domain => 'NSGlobalDomain',
    key    => 'com.apple.sound.beep.feedback',
    value  => 0,
    notify => Exec['killall -HUP SystemUIServer'];
  }
}
