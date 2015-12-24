require 'spec_helper'

describe 'osx::finder::use_column_view' do
  let(:facts) { {:boxen_user => 'ilikebees'} }

  it do
    should include_class('osx::finder')

    should contain_boxen__osx_defaults('Use column view').with({
      :key    => 'FXPreferredViewStyle',
      :domain => 'com.apple.finder',
      :type   => 'string',
      :value  => 'clmv',
      :notify => 'Exec[killall Finder]',
      :user   => facts[:boxen_user]
    })
  end
end
