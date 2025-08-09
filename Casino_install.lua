-- This will install the selected program
local serverPath = "https://raw.githubusercontent.com/minecartchris/CC-Casnio/refs/heads/main/"
if fs.exists("startup.lua") then
    print("do you want to update existing file?")
    local A = io.read()
    if A == "yes" or A == "Yes" then
        local soft = fs.open("startup.lua", "r")
        local data = soft.readLine()
        soft.close()
        print("file read")
        if data == "--ATM" then
            fs.delete("startup.lua")
            shell.run("wget "..serverPath.."/ATM.lua startup.lua")
        elseif data == "--Slot" then
            fs.delete("startup.lua")
            shell.run("wget "..serverPath.."/Slot.lua startup.lua")
        elseif data == "--tic" then
            fs.delete("startup.lua")
            shell.run("wget "..serverPath.."/ticTackToe.lua startup.lua")
        elseif data == "--black" then
            fs.delete("startup.lua")
            shell.run("wget "..serverPath.."/BlackJack.lua startup.lua")
        end
      
        local i = 5
        print("Please remove Update medium")
        while i > 0 do
            print("reboot in ".. i .." seconds")
            sleep(1)
            i = i - 1
        end
        shell.run("reboot")
    end
end

print("Are you installing a Slot, ATM, black jack, or tictactoe?")
local A = io.read()
local i = 5
if A == "Slot" then
    shell.run("wget "..serverPath.."/Slot.lua startup.lua")
elseif A == "ATM" then
    shell.run("wget "..serverPath.."/ATM.lua startup.lua")
elseif A == "tic" then
    shell.run("wget "..serverPath.."/ticTackToe.lua startup.lua")
elseif A == "black jack" then
    shell.run("wget "..serverPath.."/BlackJack.lua startup.lua")
end

print("Please remove installation medium")
while i > 0 do
    print("reboot in ".. i .." seconds")
    sleep(1)
    i = i - 1
end
shell.run("reboot")
