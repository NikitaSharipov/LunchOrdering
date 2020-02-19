class Menu < ApplicationRecord
  #FIRST_COURSE = %w[first_dish second_dish third_dish].freeze
  #SECOND_COURSE = %w[first_dish second_dish third_dish].freeze
  #THIRD_COURSE = %w[first_drink second_drink].freeze

  FIRST_COURSE = {first_dish: 10, second_dish: 20, third_dish: 30}.freeze
  SECOND_COURSE = {first_dish: 20, second_dish: 11, third_dish: 23}.freeze
  THIRD_COURSE = {first_drink: 15, second_drink: 21}.freeze
end
