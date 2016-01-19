require 'spec_helper'

describe 'osx::sound::mute_beep_volume' do
  let(:facts) { {:boxen_user => 'ilikebees'} }

  it do
    should include_class('osx::sound::mute_beep_volume')

    should contain_boxen__osx_defaults('Mute beep volume').with({
      :domain => 'com.apple.systemsound',
      :key    => 'com.apple.sound.beep.volume',
      :type   => 'float',
      :value  => 0,
      :notify => 'Exec[killall -HUP SystemUIServer]',
      :user   => facts[:boxen_user]
    })
  end
end
