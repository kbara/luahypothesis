-- Changes from upstream, on David's advice:
-- draw/produce merged as draw
-- random/context merged as random

--[[
    A SearchStrategy is an object that knows how to explore data of a given
    type.

    Except where noted otherwise, methods on this class are not part of the
    public API and their behaviour may change significantly between minor
    version releases. They will generally be stable between patch releases.

    With that in mind, here is how SearchStrategy works.

    A search strategy is responsible for generating, simplifying and
    serializing examples for saving.

    In order to do this a strategy has three types (where type here is more
    precise than just the class of the value. For example a tuple of ints
    should be considered different from a tuple of strings):

    1. The strategy parameter type
    2. The strategy template type
    3. The generated type

    Of these, the first two should be considered to be private implementation
    details of a strategy and the only valid thing to do them is to pass them
    back to the search strategy. Additionally, templates may be compared for
    equality and hashed.

    Templates must be of quite a restricted type. A template may be any of the
    following:

    1. Any instance of the types bool, float, int, str (unicode on 2.7)
    2. nil
    3. TODO: can they be tables of the above?

    This may be relaxed a bit in future, but the requirement that templates are
    hashable probably won't be.

    This may all seem overly complicated but it's for a fairly good reason.
    For more discussion of the motivation see
    http://hypothesis.readthedocs.org/en/master/internals.html

    Given these, data generation happens in three phases:

    1. Draw a parameter value from a random number (defined by
       produce_parameter)
    2. Given a parameter value and a build context, draw a random template
    3. Reify a template value, deterministically turning it into a value of
       the desired type.

    Data simplification proceeds on template values, taking a template and
    providing a generator over some examples of similar but simpler templates.
--]]


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

-- These can be skipped while I'm skipping databases
--local function OneOfStrategy:to_basic(template)
--   error("Implement me")
--end
--
--local function OneOfStrategy:from_basic(data)
--   error("Implement me")
--end

-- plus similar for:
MappedSearchStrategy = {}
FilteredStrategy = {}
FlatMappedStrategy = {}

