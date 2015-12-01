require 'spec_helper'

describe 'osx::sound::disable_volume_change_sound' do
  let(:facts) { {:boxen_user => 'ilikebees'} }

  it do
    should include_class('osx::sound::disable_volume_change_sound')

    should contain_boxen__osx_defaults('Disable the volume change sound').with({
      :domain => 'NSGlobalDomain',
      :key    => 'com.apple.sound.beep.feedback',
      :type   => 'int',
      :value  => 0,
      :notify => 'Exec[killall -HUP SystemUIServer]',
      :user   => facts[:boxen_user]
    })
  end
end
