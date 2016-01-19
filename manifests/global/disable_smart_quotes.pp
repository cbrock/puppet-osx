# Public: Disable Smart quotes
class osx::global::disable_smart_quotes {
  boxen::osx_defaults { 'Disable smart quotes':
    user   => $::boxen_user,
    key    => 'NSAutomaticQuoteSubstitutionEnabled',
    domain => 'NSGlobalDomain',
    type   => 'bool',
    value  => false,
  }
}
