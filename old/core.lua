-- TODO: What's the right cross-Lua-implementation way to do something module()-like these days?

local function time_to_call_it_a_day(settings, start_time)
   error("Implement me")
end

local function find_satisfying_template(...)
   error("Implement me")
end

local function simplify_template_such_that(search_strategy, random, t, f, tracker)
   error("Implement me")
end

local function best_satisfying_template(search_strategy, random, condition, settings, ...)
   error("Implement me")
end

local function example(...)
   error("Implement me") -- including accept(test)
end

local function reify_and_execute(search_strategy, template, test, print_example)
   error("Implement me")
end

local function given(...)
   error("Implement me")
end

local function find(specifier, condition, settings, random)
   local default_settings = {max_examples=2000, min_satisfying_examples=0}
   local settings = settings or default_settings

   local search, random, successful_examples
   search = strategy(specifier, settings)
   random = random or Random() -- TODO: define Random()!
   successful_examples = {0}

   local function template_condition(template)
      local result = search.reify(template)
      local success = condition(result)

      -- careful, Lua is one-indexed
      if success then successful_examples[1] += 1 end

      if not successful_examples[1] then
         verbose_report("TODO implement me nosuccess")
      elseif success then
         if successful_examples[1] == 1 then
            verbose_report("TODO implement me satisfying")
         else
            verbose_report("TODO implement me shrunk")
         end
      end
      return assume(success)

   template_condition['name'] = condition['name']
   local tracker = Tracker()

   -- TODO: implement the try/catch logic
   return search.reify(best_satisfying_template(
      search, random, template_condition, settings, None, tracker=tracker))
   -- TODO: the except NoSuchExample code
 
end

