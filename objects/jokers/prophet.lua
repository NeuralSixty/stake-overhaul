SMODS.Joker {
  key = 'prophet',
  name = "Prophet SOVHL",
  atlas = 'sovhl_jokers_atlas',
  pos = { x = 0, y = 0 },
  blueprint_compat = false,
  sovhl_rental_compat = true,
  sovhl_magnet_compat = true,
  sovhl_delayed_compat = false,
  sovhl_toxic_compat = true,
  sovhl_supercritical_compat = false,
  rarity = 1,
  cost = 4,
  unlocked = false,
  config = { extra = { toxic_stack = 0, failed_wheels_of_fortune_for_unlock = 5 } },
  add_to_deck = function(self, card, from_debuff)
    G.GAME.blind:set_text()
  end,
  remove_from_deck = function(self, card, from_debuff)
    -- There's some kinda problem when using DebugPlus to disable the Joker where the Blind text won't update
    -- but that's not an end user case, so it doesn't really matter in the end.
    G.GAME.blind:set_text()
  end,
  locked_loc_vars = function(self, info_queue, card)
    info_queue[#info_queue + 1] = G.P_CENTERS.c_wheel_of_fortune

    return {
      vars = {
        card.ability.extra.failed_wheels_of_fortune_for_unlock,
        (G.GAME.SOVHL and G.GAME.SOVHL.prob_fail_streak and G.GAME.SOVHL.prob_fail_streak['c_wheel_of_fortune'] and G.GAME.SOVHL.prob_fail_streak['c_wheel_of_fortune']) or
        0
      }
    }
  end,
  check_for_unlock = function(self, args)
    return G.GAME.SOVHL and G.GAME.SOVHL.prob_fail_streak and G.GAME.SOVHL.prob_fail_streak['c_wheel_of_fortune'] and
        G.GAME.SOVHL.prob_fail_streak['c_wheel_of_fortune'] >= self.config.extra.failed_wheels_of_fortune_for_unlock
  end
}
