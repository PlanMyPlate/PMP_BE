class SpoonacularApiService 
  def self.get_recipe(keyword)
    response = conn.get("/recipes/complexSearch?query=#{keyword}&number=3")
    
    data = JSON.parse(response.body, symbolize_names: true)
  end
  
  def self.conn
    Faraday.new('https://api.spoonacular.com') do |req|
      req.params["apiKey"] = ENV['spoonacular_api_key']
    end
  end
end