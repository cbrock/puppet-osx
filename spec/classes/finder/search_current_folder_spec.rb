require 'spec_helper'

describe 'osx::finder::search_current_folder' do
  let(:facts) { {:boxen_user => 'ilikebees'} }

  it do
    should include_class('osx::finder')

    should contain_boxen__osx_defaults('Search current folder').with({
      :key    => 'FXDefaultSearchScope',
      :domain => 'com.apple.finder',
      :type   => 'string',
      :value  => 'SCcf',
      :notify => 'Exec[killall Finder]',
      :user   => facts[:boxen_user]
    })
  end
end
