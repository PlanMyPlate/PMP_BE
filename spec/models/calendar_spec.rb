require 'rails_helper'

RSpec.describe Calendar, type: :model do 

  describe 'associations' do
    it { should have_many(:calendar_recipes) }
    it { should have_many(:recipes).through(:calendar_recipes) }
  end
  
  describe 'relationships' do 
    it { should belong_to(:user) }
  end
end