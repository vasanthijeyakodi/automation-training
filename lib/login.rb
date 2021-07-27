class LoginPage < SitePrism::Page
  element :username_field, "input#signInFormUsername"
  element :password_field, "input#signInFormPassword"
  element :sign_in, "input.btn"
  element :brands,"img.brands"
  
  def log_in(username, pswd)
    username_field.set(username)
    password_field.set(pswd)
    sign_in.click
  end
end
