SMODS.Joker {
    key = "isotypical",
    rarity = "star_galactic",
    cost = 50,
    pronouns = "she_they",
    atlas = "placeholder",
    add_to_deck = function(self,from_debuff,card)
        SMODS.set_scoring_calculation('star_iso_scoring')
    end,
    remove_from_deck = function(self,from_debuff,card)
        if not next(SMODS.find_card("j_star_isotypical")) then
            SMODS.set_scoring_calculation('multiply')
        end
    end
}

SMODS.Scoring_Calculation({
    key = "iso_scoring",
    func = function(self, chips, mult, flames)
        return chips ^ (math.log(mult^0.75,10))
    end,
    replace_ui = function(self)
        local scale = 0.3
        return
        {
            n = G.UIT.R,
            config = { align = "cm", minh = 1, padding = 0.1 },
            nodes = {
                {
                    n = G.UIT.C,
                    config = { align = 'cm', id = 'hand_chips' },
                    nodes = {
                        SMODS.GUI.score_container({
                            type = 'chips',
                            text = 'chip_text',
                            align = 'cr',
                            w = 1.2,
                            scale = scale
                        })
                    }
                },
                SMODS.GUI.operator(scale * 0.75),
                {
                    n = G.UIT.C,
                    config = { align = 'cm', id = 'hand_mult' },
                    nodes = {
                        SMODS.GUI.score_container({
                            type = 'mult',
                            align = 'cm',
                            w = 1.2,
                            scale = scale
                        }),
                    }
                },
                {
                    n = G.UIT.T,
                    config = { text = "^0.75" },
                    nodes = {
                        SMODS.GUI.score_container({
                            type = 'mult',
                            align = 'cm',
                            w = 1.2,
                            scale = scale
                        }),
                    }
                },
            }
        }
    end
})