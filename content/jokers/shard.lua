SMODS.Joker {
    key = "shard",
    rarity = "star_cosmic",
    cost = 16,
    atlas = "jokers",
    pos = {x=6,y=0},
    calculate = function(self, card, context)
        if not G.jokers then return nil end
        local fl = SMODS.blueprint_effect(card, G.jokers.cards[1], context)
        local fr = SMODS.blueprint_effect(card, G.jokers.cards[#G.jokers.cards], context)
        return SMODS.merge_effects { fl or {}, fr or {} }
    end
}