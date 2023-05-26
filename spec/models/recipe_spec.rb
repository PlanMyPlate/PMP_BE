require 'rails_helper'

RSpec.describe Recipe do 
  describe 'validations' do 
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:directions) }
    it { should validate_uniqueness_of(:ingredients) }
    it { should validate_presence_of(:description) }
  end
end