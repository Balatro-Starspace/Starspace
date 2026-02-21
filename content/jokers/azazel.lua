SMODS.Joker{
    key = "azazel",
    atlas = "jokers",
    rarity = 3,
    cost = 9,
    discovered = true,
    unlocked = true,
    blueprint_compat = true,
    eternal_compat = true,
    pos = { x = 3, y = 9 },
    config = { 
        extra = { 
            xmult = 1, 
            scale = 0.4
        } 
    },
    loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.xmult, card.ability.extra.scale } }
	end,
    calculate = function(self, card, context)
        if context.before and G.GAME.current_round.hands_left == 0 then
            SMODS.scale_card(card, {
                ref_table = card.ability.extra,
                ref_value = "xmult",
                scalar_value = "scale",
                scaling_message = {
                message = localize { type = 'variable', key = 'a_xmult', vars = { card.ability.extra.xmult } },
                colour = G.C.MULT 
                }
            })
        end
        if context.joker_main then
            SMODS.calculate_effect({ xmult = card.ability.extra.xmult}, card)
        end
    end
}