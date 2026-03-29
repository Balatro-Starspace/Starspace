SMODS.Joker {
    key = "samson",
    cost = 7,
    rarity = 2,
    atlas = "jokers",
    pos = {x=7,y=1},
    calculate = function(self,card,context)
        if context.repetition and context.cardarea == G.hand then
            if context.other_card.ability.name == 'Gold Card' then
                return {
                    repetitions = 1
                }
            end
        end
        if context.repetition and context.cardarea == G.play then
            if context.other_card.ability.name == 'Gold Card' then
                return {
                    repetitions = 1
                }
            end
        end
    end
}