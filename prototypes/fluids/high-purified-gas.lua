-------------------------------------------------------------------------------
--[[HIGH PURIFIED GAS]]--
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
--[[recipes]]--
local high_purified_gas= {
    type = "recipe",
    name = "high-purified-gas",
    category = "fluid-separator",
    enabled = "false",
    energy_required = 10,
    ingredients ={
        {type="fluid", name="dry-gas-stream", amount=10},
		{type="fluid", name="ethanolamine", amount=100},
    },
    results=
    {
        {type="fluid", name="high-purified-gas", amount=100},
		{type="fluid", name="carbon-dioxide", amount=30},
    },
    --main_product= "high-purified-gas",
    icon = "__pyfusionenergy__/graphics/icons/high-purified-gas.png",
    subgroup = "py-fusion-fluids",
    order = "i",
}

--[[fluids]]--
local fluid =
{
    type = "fluid",
    name = "high-purified-gas",
    icon = "__pyfusionenergy__/graphics/icons/high-purified-gas.png",
    default_temperature = 15,
    base_color = {r = 0.956, g = 0.796, b = 0.537},
    flow_color = {r = 0.956, g = 0.796, b = 0.537},
    max_temperature = 100,
	gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "d"
}

-------------------------------------------------------------------------------
--[[Extend Data]]--
data:extend({fluid, high_purified_gas})