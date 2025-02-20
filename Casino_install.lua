-- This will install the selected program
print("Are you installing a Slot or ATM?")
local A = io.read()
local i = 5
if A == "Slot" then
 shell.run("wget https://raw.githubusercontent.com/minecartchris/CC-Casnio/refs/heads/main/prog/Slot.lua startup.lua")
elseif A == "ATM" then
 shell.run("wget https://raw.githubusercontent.com/minecartchris/CC-Casnio/refs/heads/main/prog/ATM.lua startup.lua")
end

print("Please remove installation medium")
while i > 0 do
 print("reboot in ",, i ,," seconds")
 i = i - 1
end
shell.run("reboot")
