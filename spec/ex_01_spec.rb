require_relative '../lib/login.rb'

describe 'the signin process', type: :feature do
  it 'signs me in' do
    signin_url = 'https://auth.lfmdev.in/login?redirect_uri=https%3A%2F%2Fexplorer.lfmdev.in%2Foauth_callback&response_type=code&client_id=6ep4l754u2dglosjdqggbt2mjr&identity_provider=COGNITO&scope=&state=v1TvJAySiVvlzFuJIBr2kiYx4oTXnR8b&code_challenge=P278XF6wRXHfkdyegyHWO6nf2yS7jCzlxjFH1uQFHqc&code_challenge_method=S256'
    dashboard_url = 'https://explorer.lfmdev.in/#dashboard/start'
    visit signin_url
    login_page = LoginPage.new
    login_page.log_in('turneruser@turner.com', 'turnertest')
    sleep(50)
    expect(current_url).to eq(dashboard_url)
  end
end
  