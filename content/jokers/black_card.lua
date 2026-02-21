SMODS.Joker {
    key = "black_card",
    atlas = "jokers",
    blueprint_compat = true,
    perishable_compat = false,
    rarity = "star_cosmic",
    cost = 5,
    pos = { x = 3, y = 5 },
    config = { extra = { }, immutable = { max = 5, cap = 2, skip = 0, joker_slot = 1, reset = 0, slotcount = 0 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.immutable.joker_slot, card.ability.immutable.max, card.ability.immutable.cap, card.ability.immutable.skip, card.ability.immutable.slotcount } }
    end,
    calculate = function(self, card, context)
        local skipadd = 1
        if context.skipping_booster and not (card.ability.immutable.slotcount == card.ability.immutable.max) and not context.blueprint then
            card.ability.immutable.skip = card.ability.immutable.skip + skipadd
            SMODS.calculate_effect({
                message = card.ability.immutable.skip.. "/" .. card.ability.immutable.cap,
                colour = G.C.FILTER,
                delay = 0.45
            }, card)
            if card.ability.immutable.skip == card.ability.immutable.cap then
            G.jokers:change_size(card.ability.immutable.joker_slot)
            card.ability.immutable.skip = card.ability.immutable.reset
            card.ability.immutable.slotcount = card.ability.immutable.slotcount + 1
            SMODS.calculate_effect({
                message = G.jokers.config.card_limit.. " Joker Slots",
                colour = G.C.FILTER,
                delay = 0.45
            }, card)
            SMODS.calculate_effect({
                message = "Reset!",
                colour = G.C.FILTER,
                delay = 0.45
            }, card)
            end
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        G.jokers:change_size(-card.ability.immutable.slotcount)
    end
}