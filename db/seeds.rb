# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Recipe.create([

    { name: 'Cornbread', ingredients: 'cornmeal, flour, sugar, salt, baking powder, melted butter, egg, milk', instructions: 'Grease a 9-inch round cake pan or cast iron skillet well and set aside. Preheat the oven to 400 degrees. In a medium mixing bowl, add the flour, cornmeal, sugar, salt, and baking powder. Whisk to combine well. Make a well in the center of your dry ingredients and add your oil or butter, milk, and egg. Stir just until the mixture comes together and there are only a few lumps remaining. Pour the batter into the prepared pan and bake for 20-25 minutes until the top is a deep golden brown and a toothpick inserted into the center comes out clean. Serve hot.', image: 'https://i.imgur.com/ZnBLBMM.jpg' },
    { name: 'Pesto Pasta', ingredients: '1/2 cup chopped onion, 2 1/2 tablespoons pesto, 2 tablespoons olive oil, 2 tablespoons grated Parmesan cheese, 1 (16 ounce) package pasta, salt to taste, ground black pepper to taste', instructions: 'Cook pasta in a large pot of boiling water until done. Drain. Meanwhile, heat the oil in a frying pan over medium low heat. Add pesto, onion, and salt and pepper. Cook about five minutes, or until onions are soft. In a large bowl, mix pesto mixture into pasta. Stir in grated cheese. Serve.', image: 'https://i.imgur.com/ORp3eg8.jpg' },
])
