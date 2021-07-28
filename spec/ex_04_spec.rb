require_relative '../lib/login.rb'
require_relative '../lib/brand_page.rb'
require_relative '../lib/brand_list.rb'
require_relative '../lib/brand_listing.rb'

describe 'the brand list', type: :feature do 
  it "the_brand_tile" do
    signin_url = 'https://auth.lfmdev.in/login?redirect_uri=https%3A%2F%2Fexplorer.lfmdev.in%2Foauth_callback&response_type=code&client_id=6ep4l754u2dglosjdqggbt2mjr&identity_provider=COGNITO&scope=&state=v1TvJAySiVvlzFuJIBr2kiYx4oTXnR8b&code_challenge=P278XF6wRXHfkdyegyHWO6nf2yS7jCzlxjFH1uQFHqc&code_challenge_method=S256'
    dashboard_url = 'https://explorer.lfmdev.in/#dashboard/start'
    visit signin_url
    login_page = LoginPage.new
    login_page.log_in('turneruser@turner.com', 'turnertest')
    page = BrandPage.new 
    sleep(90) 
    page.click_item('Brands')
    obj = BrandList.new
    brand_listing = BrandListing.new
    # fan_growth_agg_value = brand_listing.aggregate_functions.fan_growth_agg_value
    expect(brand_listing.sum_fan_growth).to eq(brand_listing.aggregate)
    expect(brand_listing.average_fan_growth).to eq(brand_listing.aggregate)
  end
end
