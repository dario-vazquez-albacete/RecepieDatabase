// Count the number of times each ingredient appears in each recipe
MATCH (i:Ingredient)
RETURN i.name as INGREDIENT,
size((i)<-[:HAS_INGREDIENTS]-()) AS USED_IN_RECIPES
ORDER BY USED_IN_RECIPES DESC

// Find recipes that contain a particular ingredient
MATCH (i:Ingredient {name: "garlic"})<-[:HAS_INGREDIENTS]-(r:Recipe)
RETURN i, r