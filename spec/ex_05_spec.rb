require_relative '../lib/config.rb'

describe 'the signin process', type: :feature do
  it 'signs me in' do
    Config.login
    expect(current_url).to eq(dashboard_url)
  end
end
