-- GLOBAL
Gamepad = {}

-- Create a Table with Gamepad functions
function Gamepad.new( listener )

	local pad = {}
	pad._et = {}

	-- create gameobject for gamepad
	pad.gameobject = collectionfactory.create( "#gamapadFactory" ) 
	msg.post( "/collection0/controls#gamepad", "register", {} )

	
	function pad:addButton( name, x, y, texture, listener )
		msg.post( "/collection0/controls#gamepad", "addButton", { name = name, x = x, y = y, texture = texture, listener = listener } )
	end

	return pad
end

function test() 
end