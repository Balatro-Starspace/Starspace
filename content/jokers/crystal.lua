SMODS.Joker {
    key = "crystal",
    rarity = "star_cosmic",
    cost = 16,
    atlas = "jokers",
    pos = {x=2,y=0},
    calculate = function(self, card, context)
        if not G.jokers then return nil end
        local jkr
        for i = 1, #G.jokers.cards do
            if G.jokers.cards[i] == card then
                jkr = i
                break
            end
        end
        local l = SMODS.blueprint_effect(card, G.jokers.cards[jkr - 1], context)
        local r = SMODS.blueprint_effect(card, G.jokers.cards[jkr + 1], context)
        return SMODS.merge_effects { l or {}, r or {} }
    end
}
