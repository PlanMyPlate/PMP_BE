require 'rails_helper'

RSpec.describe SpoonacularApiService do 
  describe 'class methods' do 
    it 'returns a recipes based on keywords' do 
      response = SpoonacularApiService.get_recipe('Italian')

      expect(response).to be_a Hash
      expect(response).to have_key :results
      expect(response[:results]).to be_a Array
      expect(response[:results].count).to eq 3
      expect(response[:results][0]).to have_key :id
      expect(response[:results][0]).to have_key :title
      expect(response[:results][0]).to have_key :image
    end
  end
end
