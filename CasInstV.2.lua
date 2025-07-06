while true do 
    if fs.exist("startup.lua") then 
        print("Would you like to Update the Current Startup File")
        local Ans=io.read()
        if(Ans=="Yes" or Ans=="yes" or Ans=="y" or Ans=="Y") then 
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
            print("Type Slot, ATM, tic, black jack to install game")
            local B=io.read()
            if B == "Slot" then
                shell.run("wget https://raw.githubusercontent.com/minecartchris/CC-Casnio/refs/heads/main/prog/Slot.lua startup.lua")
                break
            elseif B == "ATM" then
                shell.run("wget https://raw.githubusercontent.com/minecartchris/CC-Casnio/refs/heads/main/prog/ATM.lua startup.lua")
                break
            elseif B == "tic" then
                shell.run("wget https://raw.githubusercontent.com/minecartchris/CC-Casnio/refs/heads/main/prog/ticTackToe.lua startup.lua")
                break
            elseif B == "black jack" then
                shell.run("wget https://raw.githubusercontent.com/minecartchris/CC-Casnio/refs/heads/main/prog/BlackJack.lua startup.lua")
                break
            else
                print("Invalid Input")
            end
        else
            print("Invalid Input")
        end
    end
end
