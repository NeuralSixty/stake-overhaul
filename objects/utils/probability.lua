--[[
This is an implementation of a pseudorandom distribution mechanic used mostly in competitive games,
which warps the uniform probability distribution so that streaks of "bad luck" or "good luck" are mitigated.
This mechanic is used in SOVHL where it makes the most sense (e.g. listed probabilities),
but might work for controlling pool randomization as well, depending on the modder's intention.
More information at:
- https://probablydance.com/2019/08/28/a-new-algorithm-for-controlled-randomness/
- https://liquipedia.net/warcraft/Pseudo_Random_Distribution
- https://dota2.fandom.com/wiki/Random_Distribution
]]

---@param C number
---@return number
--- From a given constant C belonging to a controlled distribution
--- return its nominal probability P.
SOVHL.PfromC = function(C)
  local pProcOnN = 0.0
  local pProcByN = 0.0
  local sumNpProcOnN = 0.0

  local maxFails = math.ceil(1.0 / C)

  for N = 1, maxFails + 1 do
    pProcOnN = math.min(1.0, N * C) * (1.0 - pProcByN)
    pProcByN = pProcByN + pProcOnN
    sumNpProcOnN = sumNpProcOnN + (N * pProcOnN)
  end

  return (1.0 / sumNpProcOnN)
end

---@param P number
---@return number
--- From a given nominal probability P belonging to a typical distribution,
--- return its constant C from a controlled distribution.
SOVHL.CfromP = function(P)
  local Cupper = P
  local Clower = 0.0
  local Cmid = 0.0
  local P1
  local P2 = 1.0

  while true do
    Cmid = (Cupper + Clower) / 2.0
    P1 = SOVHL.PfromC(Cmid)

    if math.abs(P1 - P2) <= 0 then
      break
    end
    if P1 > P then
      Cupper = Cmid
    else
      Clower = Cmid
    end

    P2 = P1
  end

  return Cmid
end
