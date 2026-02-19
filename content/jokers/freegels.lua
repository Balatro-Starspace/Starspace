SMODS.Joker{
    key = "freegels",
    atlas = "jokers",
    cost = 3,
    rarity = 8,
    pos = { x = 9, y = 4 },
    soul_pos = { x = 10, y = 4 },
    config = {
        extra = {
            active = true
        }
    },
    blueprint_compat = false,
    eternal_compat = false,
    perishable_compat = true,
    loc_vars = function(self,info_queue,card)
        return { vars = { card.ability.extra.active and localize("star_active") or localize("star_inactive") } }
    end,
    calculate = function(self, card, context)
        if context.end_of_round and not context.repetition and not context.individual and not context.game_over and not context.blueprint and not card.ability.extra.active then
            card.ability.extra.active = true
            return { message = localize("k_reset"), colour = STAR_UTIL.colors.freegels_pink }
        end

        if context.end_of_round and context.game_over and context.main_eval and card.ability.extra.active and G.GAME.blind:get_type() == "Boss" then
            if G.GAME.chips / G.GAME.blind.chips >= 0.5 then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        G.hand_text_area.blind_chips:juice_up()
                        G.hand_text_area.game_chips:juice_up()
                        play_sound('tarot1')
                        card.ability.extra.active = false
                        return true
                    end
                }))
                return {
                    message = localize('k_saved_ex'),
                    saved = 'ph_freegels',
                    colour = G.C.RED
                }
            end
        end
    end
}