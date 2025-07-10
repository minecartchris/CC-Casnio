--ATM
while not disk.isPresent("bottom") do
    sleep(0)
end
print("D or W")
local A = io.read()
local db = fs.open("/disk2/log.log", "a")
if A == "D" then
    local I = turtle.getItemDetail()
    if I.name ~= "minecraft:iron_ingot" or I.name == nil then
        print("Please insert iron ingot")
        sleep(1)
        shell.run("reboot")
    end
    local dims = turtle.getItemCount()
    local disk = fs.open("/disk/money.lua", "r")
    dims = dims
    money = disk.readAll()
    disk.close()
    money = tonumber(money)
    money = money + dims
    turtle.drop()
    disk = fs.open("/disk/money.lua", "w")
    disk.write(money)
    db.write(dims.."\n")
    disk.close()
    print("you have $", money, "Now!!" )
    sleep(3)
elseif A == "W" then
    print("amount of ingots to withdraw")
    A = io.read()
    disk = fs.open("/disk/money.lua", "r")
    money = disk.readAll()
    disk.close()
    money = money - A
    turtle.suck(A)
    db.write(A.."\n")
    disk = fs.open("/disk/money.lua", "w")
    disk.write(money)
    disk.close()
end
db.close()
shell.run("reboot")
