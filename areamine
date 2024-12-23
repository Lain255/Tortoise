function move(dir)
    dir = dir or "forward"
    moveFunc = {
        forward=turtle.forward,
        backward=turtle.backward,
        down=turtle.down,
        up=turtle.up,
    }
    return moveFunc[dir]()
end

function turn(dir)
    dir = dir or "forward"
    turnFunc = {
        left=turtle.turnLeft,
        right=turtle.turnRight,
    }
    return turnFunc[dir]()
end

function mine(dir)
    dir = dir or "forward"
    mineFunc = {
        forward=turtle.dig,
        up=turtle.digUp,
        down=turtle.digDown,
    }
    if turtle.getItemCount(16) ~= 0 then
        return false
    else
        return mineFunc[dir]()
    end

    
end



function detect(dir)
    dir = dir or "forward"
    detectFunc = {
        forward=turtle.detect,
        up=turtle.detectUp,
        down=turtle.detectDown,
    }
    return detectFunc[dir]()
end
function forceMine(dir)
    dir = dir or "forward"
    while detect(dir) do
        mine(dir)
    end
end
function forceMove(dir)
    forceMine(dir)
    move(dir)
end
function inspect(dir)
    dir = dir or "forward"
    inspectFunc = {
        forward=turtle.inspect,
        up=turtle.inspectUp,
        down=turtle.inspectDown,
    }
    return inspectFunc[dir]()
end

function printFuelLevel() 
    print(turtle.getFuelLevel())
end



function areaMine(l, w, h)
    for i=1,h do
        for j=1,w do
            for k=1,l-1 do
                forceMine("up")
                forceMine("down")
                forceMove()

            end
            forceMine("up")
            forceMine("down")
            
            if j == w then
                if i == h then
                    forceMine("up")
                    forceMine("down")
                elseif j % 2 == 1 then
                    turn("right")
                else
                    forceMove("up")
                    forceMove("up")
                    forceMove("up")
                    turn("right")
                end
                

            elseif j % 2 == 1 then
                turn("right")
                forceMove()
                turn("right")
            else
                turn("left")
                forceMove()
                turn("left")
            end

        end

    end
end

function stripMine(l, w)
    for i=1,w do
        for j=1,l do
            forceMine("up")
            forceMine("down")
            forceMove()
        end
        if i % 2 == 1 then
            turn("right")

            forceMine("up")
            forceMine("down")
            forceMove()

            forceMine("up")
            forceMine("down")
            forceMove()

            forceMine("up")
            forceMine("down")
            forceMove()

            turn("right")

            forceMine("up")
            forceMine("down")
            forceMove()
        else
            turn("left")

            forceMine("up")
            forceMine("down")
            forceMove()

            forceMine("up")
            forceMine("down")
            forceMove()

            forceMine("up")
            forceMine("down")
            forceMove()

            turn("left")

            forceMine("up")
            forceMine("down")
            forceMove()
        end
        
    end
    
end

stripMine(100,10)
