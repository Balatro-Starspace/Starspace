SMODS.Rank {
  key = "star",
  card_key = "S",
  nominal = 0,
  face = true,

  lc_atlas = "ranks_lc",
  hc_atlas = "ranks_lc", -- temp
  pos = { x = 0 },
  shorthand = "S",

  strength_effect = { ignore = true },

  in_pool = function(self, args)
    if args and args.initial_deck then
      return false
    else
      for i, v in pairs(G.playing_cards or {}) do
        if v:get_id() == self.id then return true end
      end
      return false
    end
  end
}

local set_base_ref = Card.set_base
Card.set_base = function(self, card, initial, manual_sprites)
  if self.base and self.base.value == "star_star" then local old_star = true end
  set_base_ref(self, card, initial, manual_sprites)
  if self.base.value == "star_star" then
    self.ability.perma_p_dollars = self.ability.perma_p_dollars + 2
  elseif old_star then
    self.ability.perma_p_dollars = self.ability.perma_p_dollars - 2
  end
end
