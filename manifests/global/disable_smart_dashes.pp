# Public: Disable Smart dashes
class osx::global::disable_smart_dashes {
  boxen::osx_defaults { 'Disable smart dashes':
    user   => $::boxen_user,
    key    => 'NSAutomaticDashSubstitutionEnabled',
    domain => 'NSGlobalDomain',
    value  => true,
  }
}
