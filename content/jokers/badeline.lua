SMODS.Joker{
    key = "badeline",
    atlas = "jokers",
    pos = { x = 9, y = 3 },
    soul_pos = { x = 10, y = 3},
    rarity = 4,
    cost = 20,
    blueprint_compat = true,
    eternal_compat = true,
    unlocked = true,
    discovered = true,
    config = {
        extra = {
            xmult = 1,
            scale = 0.25
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, card.ability.extra.scale } }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
         if context.other_card:is_suit("Hearts") then
            SMODS.scale_card(card, {
                ref_table = card.ability.extra,
                ref_value = "xmult",
                scalar_value = "scale",
                scaling_message = {
                message = "X" ..card.ability.extra.xmult.. " Mult",
                colour = G.C.RED
                }
            })
            
         end
    end
        if context.joker_main then
                SMODS.calculate_effect ({
                    xmult = card.ability.extra.emtotal,
                    card = card
                })
    end
end
}