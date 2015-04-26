-- Changes from upstream, on David's advice:
-- draw/produce merged as draw
-- random/context merged as random

SearchStrategy = {}

-- Convenience, probably skip
--local function SearchStrategy:example()
--   error("Implement me")
--end

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
-- produce_parameter, produce_templated: just use draw_*

local function SearchStrategy:reify(template)
   error("Implement me")
end

-- Convenience, probably skip
--local function SearchStrategy:draw_and_produce(context)
--   error("Implement me")
--end

-- Convenience, probably skip
--local function SearchStrategy:draw_and_produce_from_random(random)
--   error("Implement me")
--end

-- Convenience, probably skip
--local function SearchStrategy:size(template)
--   error("Implement me")
--end

-- TODO: this is a crucial function
local function SearchStrategy:draw_parameter(random)
   error("Implement me")
end

-- TODO: this is a crucial function
local function SearchStrategy:draw_template(random, parameter_value)
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

-- set a metatable to have this inhererit from SearchStrategy
OneOfStrategy = {}

local function OneOfStrategy:init(strategies)
   error("Implement me")
end

local function OneOfStrategy:strictly_simpler(strategies)
   error("Implement me")
end

local function OneOfStrategy:reify(value)
   error("Implement me")
end

local function OneOfStrategy:draw_parameter(random)
   error("Implement me")
end

local function OneOfStrategy:draw_template(random, pv)
   error("Implement me")
end

local function OneOfStrategy:element_simplifier(s, simplifier)
   error("Implement me")
end

local function OneOfStrategy:simplifiers(random, template)
   error("Implement me")
end

local function OneOfStrategy:to_basic(template)
   error("Implement me")
end

local function OneOfStrategy:from_basic(data)
   error("Implement me")
end

-- plus similar for:
MappedSearchStrategy = {}
FilteredStrategy = {}
FlatMappedStrategy = {}

