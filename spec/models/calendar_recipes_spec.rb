require 'rails_helper'

RSpec.describe CalendarRecipe, type: :model do 
  describe 'relationships' do 
    it { should belong_to(:calendar) }
    it { should belong_to(:recipe) }
  end
end