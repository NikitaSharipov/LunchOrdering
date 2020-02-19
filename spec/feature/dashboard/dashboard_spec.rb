require 'rails_helper'

feature 'User can see a weekdays on the dashboard page', "
  As an unauthenticated user
  I'd like to be able to see a weekdays
" do

  given(:user) { create(:user) }

  background do
    sign_in(user)
    visit dashboard_path
  end

  scenario 'authenticated user can see a weekdays on the dashboard page' do
    expect(page).to have_content Date.today.strftime("%Y-%m-%d")
  end

end
