require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of :email }
  it { should validate_presence_of :password }

  it 'should set LunchAdmint to true if the user is the first in the system' do
    user = create(:user)
    expect(user.LunchAdmin).to eq(true)
  end

  it 'should not set LunchAdmint to true if the user is the second in the system' do
    user = create(:user)
    user2 = create(:user)
    expect(user2.LunchAdmin).to eq(false)
  end
end
