-- A replacement for Python's math.log1p(x). The Python manual says:
-- Return the natural logarithm of 1+x (base e). The result is calculated in a
-- way which is accurate for x near zero.
-- TODO: make this near-zero friendlier, after checking if it isn't
local function log1p(x)
   return math.log(1 + x)
end

-- Have the same behavior as python's int() function:
-- int(3.9) == 3, int(-3.9) == -3, int(-3.1) == -3, etc.
local function python_int(p)
   if p >= 0 then
      return math.floor(p)
   else
      local t = math.floor(p)
      if t == p then -- it was -x.0, basically an int, already
         return t
      else -- it was -x.y, y!= 0. -3.9 should be -3, not -4, so add 1.
         return t + 1
      end
   end
end

function geometric(random, p)
   local denom = log1p(-p)
   return python_int(math.log(random.random()) / denom)
end

function biased_coin(random, p)
   return random.random() <= p
end
