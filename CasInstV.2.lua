while true do 
    if fs.exist("startup.lua") then 
        print("Would you like to Update the Current Startup File")
        local Ans=io.read()
        if(Ans=="Yes" or Ans=="yes" or Ans=="y" or Ans=="Y" then 
            if data == "--ATM" then
                fs.delete("startup.lua")
                shell.run("wget https://raw.githubusercontent.com/minecartchris/CC-Casnio/refs/heads/main/prog/ATM.lua startup.lua")
            elseif data == "--Slot" then
                fs.delete("startup.lua")
                shell.run("wget https://raw.githubusercontent.com/minecartchris/CC-Casnio/refs/heads/main/prog/Slot.lua startup.lua")
            elseif data == "--tic" then
                fs.delete("startup.lua")
                shell.run("wget https://raw.githubusercontent.com/minecartchris/CC-Casnio/refs/heads/main/prog/ticTackToe.lua startup.lua")
            elseif data == "--black" then
                fs.delete("startup.lua")
                shell.run("wget https://raw.githubusercontent.com/minecartchris/CC-Casnio/refs/heads/main/prog/BlackJack.lua startup.lua")
            end
        elseif (Ans=="No" or Ans=="no" or Ans=="N" or Ans=="n") then
            if A == "Slot" then
                shell.run("wget https://raw.githubusercontent.com/minecartchris/CC-Casnio/refs/heads/main/prog/Slot.lua startup.lua")
            elseif A == "ATM" then
                shell.run("wget https://raw.githubusercontent.com/minecartchris/CC-Casnio/refs/heads/main/prog/ATM.lua startup.lua")
            elseif A == "tic" then
                shell.run("wget https://raw.githubusercontent.com/minecartchris/CC-Casnio/refs/heads/main/prog/ticTackToe.lua startup.lua")
            elseif A == "black jack" then
                shell.run("wget https://raw.githubusercontent.com/minecartchris/CC-Casnio/refs/heads/main/prog/BlackJack.lua startup.lua")
            end
        else
            print("Invalid Input")
        end
    end
end
