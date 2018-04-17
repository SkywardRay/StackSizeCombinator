local function process_signal(signal, control)
    if not signal or signal.signal.type ~= "item" then
        return false
    end

    local stack_size = game.item_prototypes[signal.signal.name].stack_size

    control.parameters = {
        parameters = {
            first_signal = signal.signal,
            first_constant = 0,
            operation = "*",
            second_signal = nil,
            second_constant = stack_size,
            output_signal = signal.signal
        }
    }

    return true
end

local function on_tick(e)
    local surface = game.surfaces[1]
    local combinators = surface.find_entities_filtered({name = "stack-size-combinator"})

    for i, combinator in pairs(combinators) do
        local control = combinator.get_control_behavior()
        local connector_id = defines.circuit_connector_id.combinator_input

        local green_network = control.get_circuit_network(defines.wire_type.green, connector_id)
        local red_network = control.get_circuit_network(defines.wire_type.red, connector_id)

        if green_network and green_network.signals then
            for j, signal in pairs(green_network.signals) do
                if process_signal(signal, control) then
                    return
                end
            end
        end

        if red_network and red_network.signals then
            for j, signal in pairs(red_network.signals) do
                if process_signal(signal, control) then
                    return
                end
            end
        end
    end
end

script.on_nth_tick(300, on_tick)
