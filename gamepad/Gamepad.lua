-- GLOBAL
Gamepad = {}

-- Create a Table with Gamepad functions
function Gamepad.new( gamepad, listener )

	local pad = {}
	pad._et = {}

	-- create gameobject for gamepad
	pad.gameobject = gamepad
	msg.post( pad.gameobject, "register", { listener = listener } )


	function pad:addButton( name, x, y, listener, texture )
		msg.post( pad.gameobject, "addButton", { name = name, x = x, y = y, texture = texture, listener = listener } )
	end

	return pad
end
