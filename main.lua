function love.load()


  sprites = {}

  sprites.paddle = love.graphics.newImage("sprites/paddle.png")
  sprites.ball = love.graphics.newImage("sprites/ball.png")
  sprites.ballTail = love.graphics.newImage("sprites/ballTail.png")

  paddle = {}


  require('player')
  require('enemy')
  require('ball')

end

function love.update(dt)
PlayerMovement(dt)
BallMovement(dt)
CollisionCheck()

for i,p in ipairs(paddle) do
  if
end

function love.draw()
  for i,p in ipairs(paddle) do
    love.graphics.draw(sprites.paddle, p.x, p.y, nil, nil, nil, sprites.paddle:getWidth()/2, sprites.paddle:getHeight()/2)
    love.graphics.draw(sprites.ball, ball.x, ball.y, nil, nil, nil, sprites.ball:getWidth()/2, sprites.ball:getHeight()/2)
  end

  love.graphics.print(player.x, 0, 0)
  love.graphics.print(player.y, 100, 0)
end
