# mute "alert" beep volume
class osx::sound::mute_beep_volume {
  include osx::system_ui

  boxen::osx_defaults { 'Mute beep volume':
    user   => $::boxen_user,
    type   => 'float',
    domain => 'com.apple.systemsound',
    key    => 'com.apple.sound.beep.volume',
    value  => 0,
    notify => Exec['killall -HUP SystemUIServer'];
  }
}
