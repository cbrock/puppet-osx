require 'spec_helper'

describe 'osx::finder::hide_icons_on_desktop' do
  let(:facts) { {:boxen_user => 'ilikebees'} }

  it do
    should include_class('osx::finder')

    should contain_boxen__osx_defaults('Hide Desktop icons').with({
      :key    => 'CreateDesktop',
      :domain => 'com.apple.finder',
      :value  => false,
      :notify => 'Exec[killall Finder]',
      :user   => facts[:boxen_user]
    })
  end
end
