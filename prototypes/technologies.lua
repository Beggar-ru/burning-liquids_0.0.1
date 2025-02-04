data:extend({
    {
        type = "technology",
        name = "burning-liquids-technology",
        icon = "__burning-liquids__/graphics/technology/blt.png",
        icon_size = 128,
        unit = {
            count = 80,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1}
            },
            time = 30
        },
        prerequisites = {},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "burning-liquids"
            }
        },
        order = "c-e-c"
    }
})