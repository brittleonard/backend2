class Recipe
    if ENV["DATABASE_URL"]
        DB = PG.connect(ENV['DATABASE_URL'])
    elsif
        DB = PG.connect({:host => "localhost", :port => 5432, :dbname => 'backend2_development'})
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

    def self.find(id)
        results = DB.exec("SELECT * FROM recipes WHERE id=#{id};")
        return {
            "id" => results.first["id"].to_i,
            "name" => results.first["name"],
            "ingredients" => results.first["ingredients"],
            "instructions" => results.first["instructions"],
            "image" => results.first["image"],
        }
    end

    def self.create(opts)
        results = DB.exec(
            <<-SQL
            INSERT INTO recipes (name, ingredients, instructions, image)
            VALUES ('#{opts["name"]}', '#{opts["ingredients"]}', '#{opts["instructions"]}', '#{opts["image"]}')
            RETURNING id, name, ingredients, instructions, image;
            SQL
        )
        return {
            "id" => results.first["id"].to_i,
            "name" => results.first["name"],
            "ingredients" => results.first["ingredients"],
            "instructions" => results.first["instructions"],
            "image" => results.first["image"],
        }
    end

    def self.delete(id)
        results = DB.exec("DELETE FROM recipes WHERE id=#{id};")
        return { "deleted" => true }
    end

    def self.update(id, opts)
        results = DB.exec(
            <<-SQL
            UPDATE recipes
            SET name='#{opts["name"]}', ingredients='#{opts["ingredients"]}', instructions='#{opts["instructions"]}', image='#{opts["image"]}'
            WHERE id=#{id}
            RETURNING id, name, ingredients, instructions, image;
            SQL
        )
        return {
            "id" => results.first["id"].to_i,
            "name" => results.first["name"],
            "ingredients" => results.first["ingredients"],
            "instructions" => results.first["instructions"],
            "image" => results.first["image"],
        }
    end
end
