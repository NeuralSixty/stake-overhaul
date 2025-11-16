SMODS.Enhancement:take_ownership('lucky', {
  config = { extra = { mult = 20, dollars = 20, mult_odds = 5, dollars_odds = 15 } },
  loc_vars = function(self, info_queue, card)
    local mult_numerator, mult_denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.mult_odds,
      'sovhl_lucky_mult')
    local dollars_numerator, dollars_denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.dollars_odds,
      'sovhl_lucky_money')
    local prophet_joker = next(SMODS.find_card('j_sovhl_prophet', false))

    -- The Magician card's tooltip is a fake Lucky card, so we need to check if the config actually exists
    if prophet_joker and card.config and card.config.center_key then
      SOVHL.init_prob_game_state(card.config.center_key .. '_mult')
      SOVHL.init_prob_game_state(card.config.center_key .. '_dollars')

      return {
        vars = {
          string.format(
            "%.2f%%",
            math.min((1 - math.pow(1 - SOVHL.CfromP(mult_numerator / mult_denominator), G.GAME.SOVHL.prob_fail_streak[card.config.center_key .. '_mult'] + 1)), 1) *
            100
          ),
          string.format(
            "%.2f%%",
            math.min((1 - math.pow(1 - SOVHL.CfromP(dollars_numerator / dollars_denominator), G.GAME.SOVHL.prob_fail_streak[card.config.center_key .. '_dollars'] + 1)), 1) *
            100
          ),
          card.ability.extra.mult,
          card.ability.extra.dollars
        }
      }
    end

    return {
      vars = {
        math.min(mult_numerator, mult_denominator) .. ' in ' .. mult_denominator,
        math.min(dollars_numerator, dollars_denominator) .. ' in ' .. dollars_denominator,
        card.ability.extra.mult,
        card.ability.extra.dollars
      }
    }
  end,
  calculate = function(self, card, context)
    if context.main_scoring and context.cardarea == G.play then
      local ret = {}
      if SOVHL.pseudorandom_probability(card, 'sovhl_lucky_mult', 1, card.ability.extra.mult_odds) then
        card.lucky_trigger = true
        ret.mult = card.ability.extra.mult
      end
      if SOVHL.pseudorandom_probability(card, 'sovhl_lucky_money', 1, card.ability.extra.dollars_odds) then
        card.lucky_trigger = true
        ret.dollars = card.ability.extra.dollars
      end

      return ret
    end
  end,
}, true)

SMODS.Enhancement:take_ownership('glass', {
    config = { Xmult = 2, extra = { odds = 4 } },
    shatters = true,
    loc_vars = function(self, info_queue, card)
      local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'sovhl_glass')
      local prophet_joker = next(SMODS.find_card('j_sovhl_prophet', false))

      -- Same procedure as with the Magician, this time it's the Justice card
      if prophet_joker and card.config and card.config.center_key then
        SOVHL.init_prob_game_state(card.config.center_key)

        return {
          vars = {
            card.ability.Xmult,
            string.format(
              "%.2f%%",
              math.min((1 - math.pow(1 - SOVHL.CfromP(numerator / denominator), G.GAME.SOVHL.prob_fail_streak[card.config.center_key] + 1)), 1) *
              100
            )
          }
        }
    end

    return {
      vars = {
        card.ability.Xmult,
        math.min(numerator, denominator) .. ' in ' .. denominator
      }
    }
    end,
    calculate = function(self, card, context)
        if context.destroy_card and context.cardarea == G.play and context.destroy_card == card and
            SOVHL.pseudorandom_probability(card, 'sovhl_glass', 1, card.ability.extra.odds) then
            card.glass_trigger = true
            return { remove = true }
        end
    end,
}, true)
