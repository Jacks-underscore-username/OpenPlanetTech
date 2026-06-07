script.on_event("open-planet-tech",
    ---@param event EventData.CustomInputEvent
    function(event)
        local player = game.players[event.player_index]
        local surface = player.surface
        if (surface == nil) then return end
        for _, tech in pairs(prototypes.technology) do
            for _, effect in pairs(tech.effects) do
                if (effect.type == 'unlock-space-location' and effect.space_location == surface.name) then
                    player.open_technology_gui(tech)
                    return
                end
            end
        end
    end)
