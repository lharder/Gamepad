-- GLOBAL
Gamepad = {}

-- Create a Table with Gamepad functions
function Gamepad.new()

	local pad = {}
	pad._et = {}

	-- create gameobject for gamepad
	local gpGameObj = collectionfactory.create( "#gamapadFactory" ) 
	pprint( gpGameObj )

	pad.gameobject = gpGameObj

	msg.post( "/collection0/controls#gamepad", "register", {} )

	
	function pad:addButton( name, x, y, texture )
		msg.post( "/collection0/controls#gamepad", "addButton", { name = name, x = x, y = y, texture = texture } )
	end

	return pad
end

function test() 
end