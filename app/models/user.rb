class User < ApplicationRecord
  before_create :set_LunchAdmin

  has_many :orders, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  private

  def set_LunchAdmin
    self.LunchAdmin = true unless User.exists?
  end

end
