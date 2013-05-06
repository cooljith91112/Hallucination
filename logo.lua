require 'zoetrope'

Logo = Tile:extend
{
	width = 800,
	height = 600,
	--fill = {0, 0, 255},
	image = 'logo.png',
}

the.app = LogoApp:new
{
	name = "Eklypz the Game",
	onRun = function ( self )
		
		self.logo = Logo:new {}
		--self:add(self.target)
		--self:add(Fill:new{ x = 0, y = 580, width = 800, height = 20, fill = {0, 0, 0, 200} })
		self:add(logo)
	end,

	onUpdate = function(self)
		--self.my.text = the.mouse.x .. ' , ' .. the.mouse.y
	end


}
