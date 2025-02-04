if data.raw.technology["flammable-liquids"] then 
    local burning_liquids_technology = data.raw.technology["burning-liquids-technology"]

    if burning_liquids_technology then 
        table.insert(burning_liquids_technology.prerequisites, "flammable-liquids")
    end
end    