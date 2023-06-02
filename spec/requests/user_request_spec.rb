require 'rails_helper'

RSpec.describe 'User Login' do 
  it 'creates a new user' do 
    user1 = { name: Faker::Movies::HarryPotter.character, 
    email: Faker::Internet.email, 
    password: 'ilovetreats' } 

    headers = { 'CONTENT_TYPE' => 'application/json' }
    post '/users', headers: headers, params: JSON.generate(user1)

    new_user = User.last
    new_user = JSON.parse(response.body, symbolize_names: true)
    expect(response).to be_successful

    expect(response).to have_http_status(201)
    expect(new_user).to be_a(Hash)
    expect(new_user.count).to eq(1)
    expect(new_user).to have_key(:data)
    expect(new_user[:data]).to have_key(:type)
    expect(new_user[:data][:type]).to be_a(String)
    expect(new_user[:data]).to have_key(:id)

    expect(new_user[:data][:id]).to be_an(String)
    expect(new_user[:data]).to have_key(:attributes)
    expect(new_user[:data][:attributes]).to be_a(Hash)
    expect(new_user[:data][:attributes]).to have_key(:name)
    expect(new_user[:data][:attributes][:name]).to be_a(String)
    expect(new_user[:data][:attributes]).to have_key(:email)
    expect(new_user[:data][:attributes][:email]).to be_a(String)
  end

  it 'returns error message when email is already in use' do 
    user1 = User.create!(name: 'Gaia Turner', email: 'unoriginal@gmail.com', password: 'bingbong')
    user_params = { name: Faker::Movies::HarryPotter.character, 
    email: 'unoriginal@gmail.com', password: 'weeeee'}

    headers = { 'CONTENT_TYPE' => 'application/json' }
    post '/users', headers: headers, params: JSON.generate(user_params)

    new_user = User.last
    new_user = JSON.parse(response.body, symbolize_names: true)
    expect(response).to_not be_successful
    expect(response).to have_http_status(400)
  end
end