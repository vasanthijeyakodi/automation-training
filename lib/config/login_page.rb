module Config    
  class LoginPage < SitePrism::Page
    element :username_field, "input#signInFormUsername"
    element :password_field, "input#signInFormPassword"
    element :sign_in, "input.btn"
    element :brands,"img.brands"
    
  def log_in
    signin_url = 'https://auth.lfmdev.in/login?redirect_uri=https%3A%2F%2Fexplorer.lfmdev.in%2Foauth_callback&response_type=code&client_id=6ep4l754u2dglosjdqggbt2mjr&identity_provider=COGNITO&scope=&state=v1TvJAySiVvlzFuJIBr2kiYx4oTXnR8b&code_challenge=P278XF6wRXHfkdyegyHWO6nf2yS7jCzlxjFH1uQFHqc&code_challenge_method=S256'
    visit signin_url
    username_field.set('turneruser@turner.com')
    password_field.set('turnertest')
    sign_in.click
    sleep(60)
  end
  end
end
