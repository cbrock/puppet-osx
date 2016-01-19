require 'spec_helper'

describe 'osx::global::disable_smart_quotes' do
  let(:facts) { {:boxen_user => 'ilikebees'} }

  it do
    should contain_boxen__osx_defaults('Disable smart quotes').with({
      :key    => 'NSAutomaticQuoteSubstitutionEnabled',
      :domain => 'NSGlobalDomain',
      :type   => 'bool',
      :value  => false,
      :user   => facts[:boxen_user]
    })
  end
end
