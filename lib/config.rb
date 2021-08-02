require 'config/login_page'
module  Config
  def self.login
    login_page = Config::LoginPage.new
    login_page.log_in
  end

  def self.sleep
    sleep_until = Config::BrandPage.new
    sleep_until.sleep
  end
end
  