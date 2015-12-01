# Internal: Restart SystemUIServer when necessary.
class osx::system_ui {
  exec { 'killall -HUP SystemUIServer':
    refreshonly => true
  }
}
