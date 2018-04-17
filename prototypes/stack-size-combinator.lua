function copyPrototype(type, name, newName)
    if not data.raw[type][name] then
        error("type " .. type .. " " .. name .. " doesn't exist")
    end
    local p = table.deepcopy(data.raw[type][name])
    p.name = newName
    if p.minable and p.minable.result then
        p.minable.result = newName
    end
    if p.place_result then
        p.place_result = newName
    end
    if p.result then
        p.result = newName
    end
    if p.results then
        for _, result in pairs(p.results) do
            if result.name == name then
                result.name = newName
            end
        end
    end
    return p
end

local item = copyPrototype("item", "arithmetic-combinator", "stack-size-combinator")

item.icon = "__StackSizeCombinator__/graphics/icons/stack-size-combinator.png"
item.order = "c[combinators]-d[stack-size-combinator]"

local entity = copyPrototype("arithmetic-combinator", "arithmetic-combinator", "stack-size-combinator")

entity.icon = "__StackSizeCombinator__/graphics/icons/stack-size-combinator.png"
entity.sprites.north.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator.png"
entity.sprites.east.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator.png"
entity.sprites.south.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator.png"
entity.sprites.west.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator.png"
entity.sprites.north.layers[1].filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator.png"
entity.sprites.east.layers[1].filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator.png"
entity.sprites.south.layers[1].filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator.png"
entity.sprites.west.layers[1].filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator.png"
entity.sprites.north.layers[1].hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator.png"
entity.sprites.east.layers[1].hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator.png"
entity.sprites.south.layers[1].hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator.png"
entity.sprites.west.layers[1].hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator.png"

entity.plus_symbol_sprites.north.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.plus_symbol_sprites.east.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.plus_symbol_sprites.south.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.plus_symbol_sprites.west.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.plus_symbol_sprites.north.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"
entity.plus_symbol_sprites.east.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"
entity.plus_symbol_sprites.south.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"
entity.plus_symbol_sprites.west.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"

entity.minus_symbol_sprites.north.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.minus_symbol_sprites.east.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.minus_symbol_sprites.south.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.minus_symbol_sprites.west.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.minus_symbol_sprites.north.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"
entity.minus_symbol_sprites.east.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"
entity.minus_symbol_sprites.south.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"
entity.minus_symbol_sprites.west.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"

entity.multiply_symbol_sprites.north.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.multiply_symbol_sprites.east.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.multiply_symbol_sprites.south.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.multiply_symbol_sprites.west.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.multiply_symbol_sprites.north.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"
entity.multiply_symbol_sprites.east.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"
entity.multiply_symbol_sprites.south.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"
entity.multiply_symbol_sprites.west.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"

entity.divide_symbol_sprites.north.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.divide_symbol_sprites.east.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.divide_symbol_sprites.south.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.divide_symbol_sprites.west.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.divide_symbol_sprites.north.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"
entity.divide_symbol_sprites.east.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"
entity.divide_symbol_sprites.south.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"
entity.divide_symbol_sprites.west.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"

entity.modulo_symbol_sprites.north.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.modulo_symbol_sprites.east.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.modulo_symbol_sprites.south.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.modulo_symbol_sprites.west.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.modulo_symbol_sprites.north.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"
entity.modulo_symbol_sprites.east.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"
entity.modulo_symbol_sprites.south.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"
entity.modulo_symbol_sprites.west.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"

entity.power_symbol_sprites.north.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.power_symbol_sprites.east.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.power_symbol_sprites.south.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.power_symbol_sprites.west.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.power_symbol_sprites.north.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"
entity.power_symbol_sprites.east.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"
entity.power_symbol_sprites.south.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"
entity.power_symbol_sprites.west.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"

entity.left_shift_symbol_sprites.north.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.left_shift_symbol_sprites.east.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.left_shift_symbol_sprites.south.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.left_shift_symbol_sprites.west.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.left_shift_symbol_sprites.north.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"
entity.left_shift_symbol_sprites.east.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"
entity.left_shift_symbol_sprites.south.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"
entity.left_shift_symbol_sprites.west.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"

entity.right_shift_symbol_sprites.north.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.right_shift_symbol_sprites.east.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.right_shift_symbol_sprites.south.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.right_shift_symbol_sprites.west.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.right_shift_symbol_sprites.north.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"
entity.right_shift_symbol_sprites.east.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"
entity.right_shift_symbol_sprites.south.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"
entity.right_shift_symbol_sprites.west.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"

entity.and_symbol_sprites.north.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.and_symbol_sprites.east.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.and_symbol_sprites.south.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.and_symbol_sprites.west.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.and_symbol_sprites.north.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"
entity.and_symbol_sprites.east.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"
entity.and_symbol_sprites.south.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"
entity.and_symbol_sprites.west.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"

entity.or_symbol_sprites.north.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.or_symbol_sprites.east.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.or_symbol_sprites.south.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.or_symbol_sprites.west.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.or_symbol_sprites.north.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"
entity.or_symbol_sprites.east.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"
entity.or_symbol_sprites.south.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"
entity.or_symbol_sprites.west.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"

entity.xor_symbol_sprites.north.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.xor_symbol_sprites.east.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.xor_symbol_sprites.south.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.xor_symbol_sprites.west.filename = "__StackSizeCombinator__/graphics/entity/stack-size-combinator-displays.png"
entity.xor_symbol_sprites.north.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"
entity.xor_symbol_sprites.east.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"
entity.xor_symbol_sprites.south.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"
entity.xor_symbol_sprites.west.hr_version.filename = "__StackSizeCombinator__/graphics/entity/hr-stack-size-combinator-displays.png"

local recipe = copyPrototype("recipe", "arithmetic-combinator", "stack-size-combinator")

recipe.enabled = true

data:extend(
    {
        item,
        entity,
        recipe
    }
)
