ball = {}

ball.x = love.graphics.getWidth()/2
ball.y = love.graphics.getHeight()/2
ball.speed = 300

local dirX = 1
local dirY = 1

function BallMovement(dt)

local test = dt

  if dirX == 1 then
    ball.x = ball.x + ball.speed * test
  elseif dirX == -1 then
    ball.x = ball.x - ball.speed * test
  end

  if dirY == 1 then
    ball.y = ball.y + ball.speed * test
  elseif dirY == -1 then
    ball.y = ball.y - ball.speed * test
  end
end

function CollisionCheck()
  if ball.y < 0 or ball.y > love.graphics.getHeight() then
    dirY = -dirY
  end

end
