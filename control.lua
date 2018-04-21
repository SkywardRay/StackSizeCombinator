local function get_first_item_signal(control)
    local connector_id = defines.circuit_connector_id.combinator_input

    local green_network = control.get_circuit_network(defines.wire_type.green, connector_id)

    -- Try to find an item signal in the green network
    if green_network and green_network.signals then
        for j, signal in pairs(green_network.signals) do
            -- Only return valid item signals
            -- Using signal.signal because circuit networks carry signals like this
            -- signal = {signal = {name = "", type = ""}, count = 0}
            if signal ~= nil and signal.signal ~= nil and signal.signal.name ~= nil and signal.signal.type == "item" then
                return signal.signal
            end
        end
    end

    local red_network = control.get_circuit_network(defines.wire_type.red, connector_id)

    -- Try to find an item signal in the red network
    if red_network and red_network.signals then
        for j, signal in pairs(red_network.signals) do
            -- Only return valid item signals
            if signal ~= nil and signal.signal ~= nil and signal.signal.name ~= nil and signal.signal.type == "item" then
                return signal.signal
            end
        end
    end

    -- No item signal was found
    return nil
end

local function get_signal(control)
    -- Make sure the control parameters exist
    if not control.parameters or not control.parameters.parameters then
        set_parameters(control, nil, nil, 0)
    end

    -- Return the input signal
    return control.parameters.parameters.first_signal
end

local function set_parameters(control, first_signal, output_signal, stack_size)
    local current_operation = "*"

    if control.parameters ~= nil and control.parameters.parameters ~= nil and control.parameters.parameters.operation ~= nil then
        current_operation = control.parameters.parameters.operation
    end

    control.parameters = {
        parameters = {
            first_signal = first_signal,
            first_constant = 0,
            operation = current_operation,
            second_signal = nil,
            second_constant = stack_size,
            output_signal = output_signal
        }
    }
end

local function update_control(control)
    if not control then
        return
    end

    -- Get the signal set as the input of the combinator
    local signal = get_signal(control)

    -- Only items have stack sizes, so remove the stack size parameters to let the user know this item has no stack size
    if signal == nil or signal.name == nil or (signal.name ~= "signal-each" and signal.type ~= "item") then
        set_parameters(control, signal, nil, 0)

        return
    end

    -- If the user selects signal-each then we want to set the first item signal we find
    -- because we unfortunately cannot output the stack size for every item recieved from the network
    if signal.name == "signal-each" then
        signal = get_first_item_signal(control) or signal
    end

    if signal == nil or signal.type ~= "item" then
        set_parameters(control, signal, nil, 0)

        return
    end

    -- Get the stack size from the item prototype
    local stack_size = game.item_prototypes[signal.name].stack_size

    -- Set the control parameters
    set_parameters(control, signal, signal, stack_size)
end

local function on_nth_tick(e)
    for i, surface in pairs(game.surfaces) do
        -- Get all stack size combinators on this surface
        local combinators = surface.find_entities_filtered({name = "stack-size-combinator"})

        for j, combinator in pairs(combinators) do
            update_control(combinator.get_control_behavior())
        end
    end
end

-- Update the combinators every 2 seconds (assuming 60 ups)
script.on_nth_tick(120, on_nth_tick)
