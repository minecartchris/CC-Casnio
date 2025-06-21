--black

-- by Jurryteacher67
pcard1= math.random(1,11)
pcard2= math.random(1,11)
local pcard= pcard1+pcard2
acard1= math.random(1,11)
acard2= math.random(1,11)
local acard=acard1+acard2
while true do 
    print("Card 1: ",pcard1)
    print("Card 2: ",pcard2)
    print("Total: ",pcard)
    print("")
    print("Would you like another card")
    print("Y for Yes N for No")
    local ans=read()
    print(ans)
    if(pcard>21) then
        print("you Bust")
        break
    end    
    if(ans=="Y") then 
        local anscard= math.random(1,11)
        pcard=pcard+anscard
    elseif (ans=="N") then
        break
    else
        print("Invalid Input")
    end
end

while true do
    print("AI Card 1: ",acard1)
    print("AI Card 2: ",acard2)
    print("AI Total: ",acard)
    if(acard<16) then
        local aans=math.random(1,11)
        acard=aans+acard
    elseif(acard>=16) then
        break
    end
end
while true do
    if(pcard>21) then 
        print("You Busted")
    elseif(acard>21) then
        print("Dealer Bust's")
    elseif(pcard>acard) then
        print("You Won")
    elseif(acard>pcard) then 
        print("The Dealer won")
    elseif(acard==pcard) then
        print("Push No One Wins")
    end
    break 
end
