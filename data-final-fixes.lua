function get_icons(prototype)
    if prototype.icons then
        return table.deepcopy(prototype.icons)
    else 
        return{{
            icon = prototype.icon,
            icon_size = prototype.icon_size,
            icon_mipmaps = prototype.icon_mipmaps
        }}
    end
end
local no_icon = {
    icon = "__burning-liquids__/graphics/icon/no.png",
    icon_size = 32
}

for ki, vi in pairs(data.raw.fluid) do
    local newicons = get_icons(vi)
    table.insert(newicons, no_icon)
    data:extend({
      {
        type = "recipe",
        name = vi.name.."-flaring",
        category = "flaring",
        enabled = true,
        hidden = true,
        energy_required = 1,
        ingredients =
        {
          {type="fluid", name=vi.name, amount=settings.startup["burning-liquids-fluid-rate"].value}
        },
        results = { },
        icons = newicons,
        icon_size = 32,
        subgroup = "fluid-recipes",
        order = "z[incineration]"
      }
    })
  end