size = {120, 30}

-- property table
defineProperty("value", 0) -- variable for changing
defineProperty("vLast", 0) -- minimum for variable, lower position of lever

defineProperty("minimum", 0) -- minimum for variable, lower position of lever
defineProperty("maximum", 1) -- maximum for variable, higher position of lever

defineProperty("lever_count", 1)  -- count of levers to manipulate

defineProperty("LeftKnob", globalPropertyi("com/dkmp/LeftKnob"))

-- images
defineProperty("back_img") -- background image
defineProperty("lever_img") -- lever image

local Min = get(minimum)
local Max = get(maximum)
local Range = Max - Min  -- define range of used variable
local Count = get(lever_count)

local mouse_stat = false
local was_click = false  -- for onMouseClick operate only once
local inverse = false
inverse = Max < Min

local last_mouse_x = 0 -- last known mouse x position
local last_mouse_y = 0 -- last known mouse y position

--local vLast = get(vLast)
local v = get(value)

-- lever consist of several components
components = {




    -- clicable area for lever
    clickable {
       position = { 0, 0, 120, 30 },

        onMouseDown = function(comp, x, y, button)
           mouse_stat = true
 --        
           was_click = true  -- second automatic click will not cause prewious calculations
           return true
        end,



         onMouseUp = function(comp, x, y, button)
           mouse_stat = false
           
           was_click = true  -- second automatic click will not cause prewious calculations
           
	   return true
        end,
        
        
        
        
        
        onMouseMove = function(comp, x, y, button)
		local mouse_x = (x)
		local mouse_y = (y)
		local val = get(value)
		local x_diff = mouse_x - last_mouse_x
		local y_diff = mouse_y - last_mouse_y
		local new_val = 0
		if mouse_stat then
			if math.abs(y_diff) > math.abs(x_diff) then
				new_val = val + (y_diff*10)
			else
				new_val = val + (x_diff)
			end
		set(value, new_val) -- add mouse x diff from last_mouse_x to current value, to increment it just by how much the mouse moved since the last mose move
		end
		last_mouse_x = mouse_x -- store the mouse x in the last_mouse_x so we can calculate the diff in the next mouse move
		last_mouse_y = mouse_y -- store the mouse y in the last_mouse_x so we can calculate the diff in the next mouse move
           	return true
        end,
    },

}








