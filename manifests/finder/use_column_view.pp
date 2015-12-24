# Public: Use column view in all Finder windows by default
class osx::finder::use_column_view {
  include osx::finder

  boxen::osx_defaults { 'Use column view':
    user   => $::boxen_user,
    key    => 'FXPreferredViewStyle',
    domain => 'com.apple.finder',
    type   => 'string',
    value  => 'clmv',
    notify => Exec['killall Finder'];
  }
}
