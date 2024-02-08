function mineLine(n)
    n = math.min(n, turtle.getFuelLevel()/2)
    for i = 1,n,1
    do
        while turtle.detect() do
            turtle.dig()
        end
        turtle.digUp()
        turtle.digDown()
        turtle.forward()    
    end
    turtle.turnLeft()
    turtle.turnLeft()
    for i = 1,n,1
    do
        turtle.forward()
    end
    turtle.turnLeft()
    turtle.turnLeft()
end
 
mineLine(100)
