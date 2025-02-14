data:extend({
    {
        type = "int-setting",
        name = "burning-liquids-fluid-rate",
        setting_type = "startup",
        default_value = 100,
        minimum_value = 1,
    },
    {
        type = "int-setting",
        name = "burning-liquids-item-rate",
        setting_type = "startup",
        default_value = 2,
        minimum_value = 1,
        maximum_value = 60
    }
})