class Order < ApplicationRecord
  belongs_to :user

  def sum_cost(first_item, second_item, drink)
    self.cost = Menu::FIRST_COURSE[first_item] + Menu::SECOND_COURSE[second_item] + Menu::THIRD_COURSE[drink]
  end
end
