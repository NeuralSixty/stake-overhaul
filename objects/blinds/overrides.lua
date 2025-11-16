SMODS.Blind:take_ownership('wheel', {
  loc_vars = function(self)
    local numerator, denominator = SMODS.get_probability_vars(self, 1, 7, 'sovhl_wheel')
    local prophet_joker = next(SMODS.find_card('j_sovhl_prophet', false))

    if prophet_joker and G.GAME and G.GAME.blind and G.GAME.blind.config and G.GAME.blind.config.blind and G.GAME.blind.config.blind.key then
      SOVHL.init_prob_game_state(G.GAME.blind.config.blind.key)

      return {
        vars = {
          string.format(
            "%.2f%%",
            math.min((1 - math.pow(1 - SOVHL.CfromP(numerator / denominator), G.GAME.SOVHL.prob_fail_streak[G.GAME.blind.config.blind.key] + 1)), 1) *
            100
          )
        }
      }
    end

    return {
      vars = {
        math.min(numerator, denominator) .. ' in ' .. denominator
      }
    }
  end,
  collection_loc_vars = function(self)
    return { vars = { '1 in 7' } }
  end,
  calculate = function(self, blind, context)
    if not blind.disabled then
      if context.stay_flipped and context.to_area == G.hand and
          SOVHL.pseudorandom_probability(blind, 'sovhl_wheel', 1, 7) then
        return {
          stay_flipped = true
        }
      end
    end
  end,
  disable = function(self)
    for i = 1, #G.hand.cards do
      if G.hand.cards[i].facing == 'back' then
        G.hand.cards[i]:flip()
      end
    end
    for _, playing_card in pairs(G.playing_cards) do
      playing_card.ability.wheel_flipped = nil
    end
  end
}, true)
