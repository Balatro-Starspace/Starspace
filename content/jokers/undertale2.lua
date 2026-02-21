SMODS.Joker{
    key = "undertale2",
    atlas = "jokers",
    rarity = 3,
    cost = 9,
    discovered = true,
    unlocked = true,
    blueprint_compat = true,
    eternal_compat = true,
    pos = { x = 8, y = 0 },
    config = { 
        extra = { 
            xmult = 2, 
        } 
    },
    loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.xmult } }
	end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {xmult = card.ability.extra.xmult, delay = 0.45}
        end
        if context.final_scoring_step and not context.blueprint then
            local undertale = pseudorandom('star_undertalexmult', 2, 8)
            card.ability.extra.xmult = undertale
            SMODS.calculate_effect({ message = "X"..card.ability.extra.xmult.." Mult", colour = G.C.RED, card = card })
        end
    end
}