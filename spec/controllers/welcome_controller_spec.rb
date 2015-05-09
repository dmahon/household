require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do
  it "redirects to the sign in page when logged out" do
    sign_out :user
    get :index
    expect(response).to redirect_to(new_user_session_path)
  end

  it "displays the index page when logged in" do
    user = build(:user)
    user_params = {name: user.name, password: user.password, email: user.email}
    user = User.create(user_params)
    sign_in user
    get :index
    expect(response).to render_template('index')
  end
end
