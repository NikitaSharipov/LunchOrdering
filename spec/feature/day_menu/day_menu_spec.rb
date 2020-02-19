require 'rails_helper'

feature 'User can see daymenu ­list of items with prices.', "
  As an unauthenticated user
  I'd like to be able to see a menu
" do

  given(:user) { create(:user) }

  background do
    sign_in(user)
    visit full_menu_day_menus_path
  end

  scenario 'authenticated user can see a menu on the day page' do
    expect(page).to have_content Date.today.strftime("First course:")
    expect(page).to have_content Date.today.strftime("Second course:")
    expect(page).to have_content Date.today.strftime("Third course:")
    Menu::FIRST_COURSE.each do |title, price|
      expect(page).to have_content "#{title.to_s.capitalize}"
      expect(page).to have_content "#{price}"
    end
    Menu::SECOND_COURSE.each do |title, price|
      expect(page).to have_content "#{title.to_s.capitalize}"
      expect(page).to have_content "#{price}"
    end
    Menu::THIRD_COURSE.each do |title, price|
      expect(page).to have_content "#{title.to_s.capitalize}"
      expect(page).to have_content "#{price}"
    end
  end
end
