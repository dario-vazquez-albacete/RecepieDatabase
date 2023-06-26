CREATE TABLE ingredient (
    id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE cooking_step (
    id INTEGER PRIMARY KEY,
    name TEXT
);

INSERT INTO ingredient (id, name) VALUES
(1, 'salmon'),
(2, 'soy sauce'),
(3, 'honey'),
(4, 'garlic'),
(5, 'ginger'),
(6, 'olive oil'),
(7, 'bread crumbs'),
(8, 'mayonnaise'),
(9, 'Dijon mustard'),
(10, 'parsley'),
(11, 'potatoes'),
(12, 'onion'),
(13, 'celery'),
(14, 'carrots'),
(15, 'heavy cream'),
(16, 'chicken broth'),
(17, 'cornstarch'),
(18, 'water');

INSERT INTO cooking_step (id, name) VALUES
(1, 'Preheat the grill to medium-high heat.'),
(2, 'Season the salmon fillets with salt and pepper.'),
(3, 'Grill the salmon fillets for 4-5 minutes per side, or until cooked through.'),
(4, 'In a small bowl, whisk together the soy sauce, honey, garlic, and ginger.'),
(5, 'Brush the soy sauce mixture over the salmon fillets and grill for an additional 1-2 minutes per side.'),
(6, 'In a large bowl, mix together the salmon, bread crumbs, mayonnaise, Dijon mustard, parsley, and salt and pepper to taste.'),
(7, 'Form the mixture into patties and chill for 30 minutes.'),
(8, 'Heat the olive oil in a large skillet over medium heat.'),
(9, 'Add the salmon cakes and cook for 3-4 minutes per side, or until golden brown and cooked through.'),
(10, 'Preheat the oven to 400°F.'),
(11, 'Place the salmon fillets in a baking dish.'),
(12, 'In a small bowl, whisk together the olive oil, garlic, lemon juice, salt, and pepper.'),
(13, 'Brush the mixture over the salmon fillets.'),
(14, 'Bake for 12-15 minutes, or until the salmon is cooked through.'),
(15, 'In a large pot or Dutch oven, cook the potatoes, onion, celery'),
(16, 'Add the carrots and cook for an additional 5 minutes.'),
(17, 'Add the salmon, heavy cream, and chicken broth.'),
(18, 'Bring the mixture to a boil and then reduce the heat to low.'),
(19, 'In a small bowl, whisk together the cornstarch and water.'),
(20, 'Slowly add the cornstarch mixture to the soup, stirring constantly.'),
(21, 'Simmer for 10-15 minutes, or until the soup has thickened.'),
(22, 'Season with salt and pepper to taste.'),
(23, 'Serve hot.');

CREATE TABLE recipe (
    id INTEGER PRIMARY KEY,
    name TEXT,
    ingredients NVARCHAR(MAX),
    steps NVARCHAR(MAX)
);

INSERT INTO recipe (id, name, ingredients) VALUES
(1, 'Teriyaki Salmon', '[{"id": 1, "name": "salmon"}, {"id": 2, "name": "soy sauce"}, {"id": 3, "name": "honey"}, {"id": 4, "name": "garlic"}, {"id": 5, "name": "ginger"}]'),
(2, 'Grilled Salmon', '[{"id": 1, "name": "salmon"}, {"id": 6, "name": "olive oil"}, {"id": 7, "name": "bread crumbs"}, {"id": 10, "name": "parsley"}]'),
(3, 'Salmon Cakes', '[{"id": 1, "name": "salmon"}, {"id": 7, "name": "bread crumbs"}, {"id": 8, "name": "mayonnaise"}, {"id": 9, "name": "Dijon mustard"}, {"id": 10, "name": "parsley"}, {"id": 11, "name": "potatoes"}, {"id": 12, "name": "onion"}, {"id": 13, "name": "celery"}]'),
(4, 'Baked Salmon', '[{"id": 1, "name": "salmon"}, {"id": 6, "name": "olive oil"}, {"id": 4, "name": "garlic"}, {"id": 14, "name": "carrots"}, {"id": 15, "name": "heavy cream"}, {"id": 16, "name": "chicken broth"}, {"id": 17, "name": "cornstarch"}, {"id": 18, "name": "water"}]'),
(5, 'Salmon Chowder', '[{"id": 1, "name": "salmon"}, {"id": 11, "name": "potatoes"}, {"id": 12, "name": "onion"}, {"id": 13, "name": "celery"}, {"id": 14, "name": "carrots"}, {"id": 15, "name": "heavy cream"}, {"id": 16, "name": "chicken broth"}, {"id": 17, "name": "cornstarch"}, {"id": 18, "name": "water"}]');

UPDATE recipe
SET steps = 
   CASE 
      WHEN id = 1 THEN '[{"id": 1, "name": "Preheat oven to 425 degrees F."}, {"id": 2, "name": "In a small bowl, mix together the maple syrup, soy sauce, garlic, garlic powder, salt, and pepper."}, {"id": 3, "name": "Place salmon in a baking dish and brush with the maple syrup mixture."}, {"id": 4, "name": "Bake for 12-15 minutes, or until salmon is cooked through."}]'
      WHEN id = 2 THEN '[{"id": 6, "name": "In a small bowl, mix together the olive oil, lemon juice, garlic, salt, and pepper."}, {"id": 7, "name": "Brush the mixture onto the salmon fillets."}, {"id": 8, "name": "Heat a large skillet over medium-high heat."}, {"id": 9, "name": "Add the salmon fillets to the skillet and cook for 4-5 minutes on each side, or until cooked through."}]'
      WHEN id = 3 THEN '[{"id": 10, "name": "Preheat grill to medium-high heat."}, {"id": 11, "name": "In a small bowl, mix together the olive oil, lemon juice, garlic, salt, and pepper."}, {"id": 12, "name": "Brush the mixture onto the salmon fillets."}, {"id": 13, "name": "Grill the salmon fillets for 4-5 minutes on each side, or until cooked through."}]'
      WHEN id = 4 THEN '[{"id": 14, "name": "Preheat oven to 400 degrees F."}, {"id": 15, "name": "In a small bowl, mix together the mayonnaise, mustard, lemon juice, and garlic."}, {"id": 16, "name": "Spread the mixture onto the salmon fillets."}, {"id": 17, "name": "In a separate small bowl, mix together the breadcrumbs, Parmesan cheese, and parsley."}, {"id": 18, "name": "Sprinkle the breadcrumb mixture over the salmon fillets."}, {"id": 19, "name": "Drizzle with olive oil."}, {"id": 20, "name": "Add the potato and starch mixture to the baking dish."}, {"id": 21, "name": "Bake for 20-25 minutes, or until the salmon is cooked through."}]'
      WHEN id = 5 THEN '[{"id": 1, "name": "Heat a large skillet over medium-high heat."}, {"id": 12, "name": "Chop the onion."}, {"id": 13, "name": "Chop the jalapeno pepper."}, {"id": 5, "name": "Add the onion and jalapeno pepper to the skillet and cook until tender."}, {"id": 16, "name": "Add the salmon to the skillet and cook for 4-5 minutes, or until cooked through."}, {"id": 7, "name": "Spoon the salmon mixture into the tortillas."}, {"id": 8, "name": "Top with avocado, tomato, and cilantro."}, {"id": 23, "name": "Serve with lime wedges."}]'
   END;


