require 'rails_helper'

RSpec.describe SpoonacularApiService do 
  describe 'class methods' do 
    describe '.conn' do
      it 'connects with the Spoonacular API' do
        connection = SpoonacularApiService.conn.get(ENV['spoonacular_api_key'])
        expect(connection.headers).to be_a Hash
      end
    end
    
    describe 'it returns recipe information' do
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
end
