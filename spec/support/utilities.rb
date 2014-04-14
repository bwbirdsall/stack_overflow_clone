def create_user_and_sign_in
  user = FactoryGirl.create(:user)
  visit root_path
  click_on "Login"
  fill_in "Username", :with => user.username
  fill_in "Password", :with => user.password
  click_on "Sign in"
end
