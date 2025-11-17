SOVHL.init_prob_game_state = function(key)
  if not G.GAME.SOVHL then
    G.GAME.SOVHL = {}
  end

  if not G.GAME.SOVHL.prob_fail_streak then
    G.GAME.SOVHL.prob_fail_streak = {}
  end

  if not G.GAME.SOVHL.prob_fail_streak[key] then
    G.GAME.SOVHL.prob_fail_streak[key] = 0
  end
end

---@param trigger_obj? Card|table
---@param seed string|number
---@param base_numerator number
---@param base_denominator number
---@param identifier? string
---@param no_mod boolean|nil
---@return boolean
function SOVHL.pseudorandom_probability(trigger_obj, seed, base_numerator, base_denominator, identifier, no_mod)
  if not trigger_obj then
    return false
  end

  local key;

  if trigger_obj.ability and trigger_obj.ability.set then
    if trigger_obj.ability.set == 'Joker' or trigger_obj.ability.set == 'Tarot' or SMODS.has_enhancement(trigger_obj, 'm_glass') then
      key = trigger_obj.config.center_key
    elseif SMODS.has_enhancement(trigger_obj, 'm_lucky') then
      if seed == 'sovhl_lucky_mult' then
        key = trigger_obj.config.center_key .. '_mult'
      elseif seed == 'sovhl_lucky_money' then
        key = trigger_obj.config.center_key .. '_dollars'
      end
    end
  elseif trigger_obj.config and trigger_obj.config.blind then
    key = trigger_obj.config.blind.key
  end

  SOVHL.init_prob_game_state(key)

  local numerator, denominator = SMODS.get_probability_vars(trigger_obj, base_numerator, base_denominator,
    identifier or seed, true, no_mod)
  local chance = 1 - math.pow(1 - SOVHL.CfromP(numerator / denominator), G.GAME.SOVHL.prob_fail_streak[key] + 1)
  local result = pseudorandom(seed) < chance

  if result then
    G.GAME.SOVHL.prob_fail_streak[key] = 0
  else
    G.GAME.SOVHL.prob_fail_streak[key] = G.GAME.SOVHL.prob_fail_streak[key] + 1
  end

  local prophet_joker = SMODS.find_card('j_sovhl_prophet', false)

  -- Blind description doesn't automatically update for some reason, we gotta do it manually.
  if next(prophet_joker) and not prophet_joker.debuff and G.GAME.blind.config.blind.key == 'bl_wheel' then
    G.GAME.blind:set_text()
  end

  SMODS.post_prob = SMODS.post_prob or {}
  SMODS.post_prob[#SMODS.post_prob + 1] = {
    pseudorandom_result = true,
    result = result,
    trigger_obj = trigger_obj,
    numerator = numerator,
    denominator = denominator,
    identifier = identifier or seed
  }

  return result
end

local sovhl_pseudoshuffle = function(list, seed)
  if seed and type(seed) == "string" then seed = pseudoseed(seed) end
  if seed then math.randomseed(seed) end

  for i = #list, 2, -1 do
    if list[i].ability and list[i].ability.set == "Joker" and list[i].ability.sovhl_magnet_attached then
      break
    end

    local j = math.random(i)
    list[i], list[j] = list[j], list[i]
  end
end

function CardArea:shuffle(_seed)
  sovhl_pseudoshuffle(self.cards, pseudoseed(_seed or 'shuffle'))
  self:set_ranks()
end
