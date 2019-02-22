player = {}
player.x = 50
player.y = love.graphics.getHeight()/2
player.speed = 300
table.insert(paddle, player)

function PlayerMovement(dt)
  if love.keyboard.isDown("up") then
    player.y = player.y - player.speed * dt
  elseif love.keyboard.isDown("down") then
    player.y = player.y + player.speed * dt
  end
end
