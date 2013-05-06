STRICT = true
DEBUG = true

require 'zoetrope'
--require 'logo'

titlemusic = love.audio.newSource("assets/titlemusic.ogg")
titlemusic:setVolume(0.5)
Target = Tile:extend
{
	width = 64,
	height = 64,
	--fill = {0, 0, 255},
	image = 'assets/target.png',

	onUpdate = function(self)
		self.x = the.mouse.x - 32
		self.y = the.mouse.y - 32
	end
}

the.app = App:new
{
	name = "Eklypz the Game",
	onRun = function ( self )
		self.my = Text:new{ x = 10, y = 582, font = 14, width = 600}
		self.target = Target:new {}
		self:add(self.target)
		self:add(Fill:new{ x = 0, y = 580, width = 800, height = 20, fill = {0, 0, 0, 200} })
		self:add(self.my)
		love.audio.play(titlemusic)
	end,

	onUpdate = function(self)
		self.my.text = the.mouse.x .. ' , ' .. the.mouse.y
		 if the.keys:justPressed(' ') then
		 	--the.app = LogoApp:new()
		 end
		 if titlemusic:isStopped() then
		 	titlemusic:play()
		 end
	end


}
