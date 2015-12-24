require 'spec_helper'

describe 'osx::dock::no_auto_rearrange' do
  let(:facts) { {:boxen_user => 'ilikebees'} }

  it do
    should include_class('osx::dock')

    should contain_boxen__osx_defaults('Do not rearrange Spaces based on use').with({
      :key    => 'mru-spaces',
      :domain => 'com.apple.dock',
      :value  => false,
      :notify => 'Exec[killall Dock]',
      :user   => facts[:boxen_user]
    })
  end
end
