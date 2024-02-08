function mine()
    while turtle.detect() do
        turtle.dig()
    end
end
 
function mineAll()
    turtle.digUp()
    turtle.digDown()
    mine()
end
 
function stripMine(n)
    for i=1,n do
        mineAll()
        turtle.forward()
    end
end
    
 
for i=1,2 do
    for j=1,8 do
        stripMine(15)
        turtle.turnLeft()
        mineAll()
        turtle.forward()
        turtle.turnLeft()
        stripMine(15)
        turtle.turnRight()
        mineAll()
        turtle.forward()
        turtle.turnRight()
    end
    turtle.turnRight()
    turtle.forward()
    turtle.down()
    turtle.digDown()
    turtle.down()
    turtle.digDown()
    turtle.down()
    
end
