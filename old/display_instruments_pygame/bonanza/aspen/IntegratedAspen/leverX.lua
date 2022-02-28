size = {120, 30}

-- property table
defineProperty("valuex", {0}) -- variable for changing
defineProperty("valuey", {0}) -- variable for changing

defineProperty("minimum", 0) -- minimum for variable, lower position of lever
defineProperty("maximum", 1) -- maximum for variable, higher position of lever

defineProperty("lever_count", 1)  -- count of levers to manipulate


-- images
--defineProperty("back_img") -- background image
--defineProperty("lever_img") -- lever image

local Min = get(minimum)
local Max = get(maximum)
local Range = Max - Min  -- define range of used variable
local Count = get(lever_count)

local mouse_stat = false
local was_click = false  -- for onMouseClick operate only once
local vx = get(valuex)
local vy = get(valuey)

local inverse = false
inverse = Max < Min

-- lever consist of several components
components = {


    -- clicable area for lever
    clickable {
       position = { 0, 0, 120, 30 },

        onMouseClick = function(comp, x, y, button)
           mouse_stat = true
           if x < 0 then x = 0 elseif x > 100 then x = 100 end
           local valx = (x / 100 * Range + Min) 
           if y < 0 then y = 0 elseif y > 100 then y = 100 end
           local valy = (y / 100 * Range + Min) 
		   if mouse_stat and not was_click then
              for i = 1, Count, 1 do
                 set(vx[i], valx)
                 set(vy[i], valy)
              end
           end
           was_click = true  -- second automatic click will not cause prewious calculations
           return true
        end,

        onMouseUp = function(comp, x, y, button)
           mouse_stat = false
           was_click = false
           return true
        end,

        onMouseMove = function(comp, x, y, button)
           if x < 0 then x = 0 elseif x > 100 then x = 100 end
		   local valx =  (x / 100 * Range + Min)
           if y < 0 then y = 0 elseif y > 100 then y = 100 end
           local valy = (y / 100 * Range + Min) 		   
		   if mouse_stat then
              for i = 1, Count, 1 do
                set(vx[i], valx)
				set(vy[i], valy)
              end
           end
           return true
        end,
    },

}








