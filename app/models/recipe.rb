class Recipe
    if ENV["DATABASE_URL"]
        PG.connect(ENV['DATABASE_URL'])
    elsif
        DB = PG.connect({:host => "", :port => 5432, :dbname => 'rails_react_recipe_development'})
    end

    def self.all
        results = DB.exec("SELECT * FROM recipes;")
        return results.each do |result|
            {
                "id" => result["id"].to_i,
                "name" => result["name"],
                "ingredients" => result["ingredients"],
                "instructions" => result["instructions"],
                "image" => result["image"]
            }
        end
    end
end
