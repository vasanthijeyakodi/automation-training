require_relative '../lib/login.rb'
require_relative '../lib/brand_page.rb'


describe 'the brand page', type: :feature do 
  it "navigate_to_facebook_sumary" do
    signin_url = 'https://auth.lfmdev.in/login?redirect_uri=https%3A%2F%2Fexplorer.lfmdev.in%2Foauth_callback&response_type=code&client_id=6ep4l754u2dglosjdqggbt2mjr&identity_provider=COGNITO&scope=&state=v1TvJAySiVvlzFuJIBr2kiYx4oTXnR8b&code_challenge=P278XF6wRXHfkdyegyHWO6nf2yS7jCzlxjFH1uQFHqc&code_challenge_method=S256'
    dashboard_url = 'https://explorer.lfmdev.in/#dashboard/start'
    visit signin_url
    login_page = LoginPage.new
    login_page.log_in('turneruser@turner.com', 'turnertest')
    page = Brandpage.new 
    page.click_item('Brands')
    sleep(5)
    brand = page.brand?('Full frontal with Samantha Bee')
    expect(brand).to eq true
    # page.find_all('span.breadcrumb-inner')has any?('FULL FRONTAL WITH SAMANTHA BEE')
  end

  # it "the_brand_tile" do
  #   signin_url = 'https://auth.lfmdev.in/login?redirect_uri=https%3A%2F%2Fexplorer.lfmdev.in%2Foauth_callback&response_type=code&client_id=6ep4l754u2dglosjdqggbt2mjr&identity_provider=COGNITO&scope=&state=v1TvJAySiVvlzFuJIBr2kiYx4oTXnR8b&code_challenge=P278XF6wRXHfkdyegyHWO6nf2yS7jCzlxjFH1uQFHqc&code_challenge_method=S256'
  #   dashboard_url = 'https://explorer.lfmdev.in/#dashboard/start'
  #   visit signin_url
  #   login_page = LoginPage.new
  #   login_page.log_in('turneruser@turner.com', 'turnertest')
  #   page = Brand_list.new


  #   expect(obj.display_count).to eq 5
  #   expect(obj.total_count).to eq 5
  #   expect(obj.title.count).to eq 5
  #   obj.filter_by('Full Frontal with Samantha Bee')
  #   expect(obj.display_count).to eq 1
  #   expect(obj.total_count).to eq 5
  #   expect(obj.title).to eq(['Full Frontal with Samantha Bee'])
  #   obj.clear_filter
  #   expect(obj.display_count).to eq 5
  #   expect(obj.total_count).to eq 5
  #   expect(obj.title.count).to eq 5


  # end
end
