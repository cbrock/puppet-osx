require 'spec_helper'

describe 'osx::system_ui' do
  it do
    should contain_exec('killall -HUP SystemUIServer').with( {:refreshonly => true} )
  end
end
