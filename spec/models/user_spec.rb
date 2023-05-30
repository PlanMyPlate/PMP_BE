require 'rails_helper'

RSpec.describe User, type: :model do 
  describe 'associations' do 
    it { should have_many(:user_recipes)}
    it { should have_many(:recipes).through(:user_recipes)}
  end
  
  describe 'validations' do 
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
    it { should validate_presence_of(:password) }
  end
end