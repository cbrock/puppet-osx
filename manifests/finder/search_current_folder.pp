# Public: When performing a search, search the current folder by default
class osx::finder::search_current_folder {
  include osx::finder

  boxen::osx_defaults { 'Search current folder':
    user   => $::boxen_user,
    key    => 'FXDefaultSearchScope',
    domain => 'com.apple.finder',
    type   => 'string',
    value  => 'SCcf',
    notify => Exec['killall Finder'];
  }
}
