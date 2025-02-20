while not disk.isPresent("bottom") do
    sleep(0)
end
print("D or W")
local A = io.read()
if A == "D" then
    local I = turtle.getItemDetail()
    if I.name ~= "minecraft:emerald" or I.name == nil then
        print("Please insert gold")
        sleep(1)
        shell.run("reboot")
    end
    local dims = turtle.getItemCount()
    local disk = fs.open("/disk/money.lua", "r")
    dims = dims * 10
    money = disk.readAll()
    disk.close()
    money = tonumber(money)
    money = money + dims
    turtle.forward()
    turtle.turnRight()
    turtle.drop()
    turtle.turnRight()
    turtle.forward()
    disk = fs.open("/disk/money.lua", "w")
    disk.write(money)
    disk.close()
    print("you have $", money, "Now!!" )
    sleep(3)
elseif A == "W" then
    print("amount 10 = 1 ingot enter in incrmets of 10")
    A = io.read()
    disk = fs.open("/disk/money.lua", "r")
    money = disk.readAll()
    disk.close()
    money = money - A
    turtle.forward()
    turtle.turnRight()
    turtle.suck(A / 10)
    turtle.turnRight()
    turtle.forward()
    disk = fs.open("/disk/money.lua", "w")
    disk.write(money)
    disk.close()
end
turtle.turnLeft()
turtle.turnLeft()
shell.run("reboot")
