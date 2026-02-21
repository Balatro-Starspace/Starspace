SMODS.Joker{
    key = "extra_bullet",
    atlas = "jokers",
    pos = { x = 6, y = 9 },
    rarity = 3,
    cost = 18,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = { extra = { }, immutable = { reduce = 0.7 } },

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.immutable.reduce } }
    end,

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and context.other_card:get_id() == 7 then
        SMODS.calculate_effect({
                message = "7%",
                colour = G.C.FILTER,
                delay = 0.45
                }, card)
                G.E_MANAGER:add_event(Event({
                    func = function()
                        G.GAME.blind.chips = G.GAME.blind.chips * card.ability.immutable.reduce
			            G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
			            G.HUD_blind:recalculate()
                return true
            end
        }))
    end
end
}