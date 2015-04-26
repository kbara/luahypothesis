SearchStrategy = {}

local function SearchStrategy:example()
   error("Implement me")
end

-- Part of public API
local function SearchStrategy:map(pack)
   error("Implement me")
end

-- Part of public API
local function SearchStrategy:flatmap(expand)
   error("Implement me")
end

-- Part of public API
local function SearchStrategy:filter(pack)
   error("Implement me")
end

-- Part of public API
locasl function SearchStrategy:__or__(pack)
   error("Implement me")
end

-- Unstable internal API from here down

local function SearchStrategy:produce_parameter(context, parameter_value)
   error("Implement me")
end 

local function SearchStrategy:produce_template(context, parameter_value)
   error("Implement me")
end

local function SearchStrategy:reify(template)
   error("Implement me")
end

local function SearchStrategy:draw_and_produce(context)
   error("Implement me")
end

local function SearchStrategy:draw_and_produce_from_random(random)
   error("Implement me")
enda

local function SearchStrategy:size(template)
   error("Implement me")
end

-- TODO: this is a crucial function
local function SearchStrategy:draw_parameter(random)
   error("Implement me")
end

-- TODO: this is a crucial function
local function SearchStrategy:draw_template(context, parameter_value)
   error("Implement me")
end

local function SearchStrategy:strictly_simpler(x, y)
   return false
end

local function SearchStrategy:simplifiers(random, template)
   error("Implement me")
end

local function SearchStrategy:full_simplify(random, template) 
   error("Implement me")
end

local function SearchStrategy:basic_simplify(random, template)
   error("Implement me")
end

-- TODO: is skipping the various Strategy classes in favor of simpler approach the way to go here?

