require_relative '../lib/login.rb'
require_relative '../lib/brand_page.rb'
require_relative '../lib/brand_list.rb'

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
     sleep(55)
     obj = BrandList.new
     expect(obj.display_count).to eq "6"
     expect(obj.total_count).to eq "6"
     expect(obj.title).to eq 6
     obj.filter_by('Full Frontal with Samantha Bee')
     sleep(10)
     expect(obj.display_count).to eq "1"
     expect(obj.total_count).to eq "6"
     obj.clear_filter
    end

end
