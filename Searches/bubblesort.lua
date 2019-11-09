local Ran = math.random
local Table = {Ran(1, 100), Ran(1, 100), Ran(1, 100), Ran(1, 100), Ran(1, 100), Ran(1, 100), Ran(1, 100), Ran(1, 100), Ran(1, 100), Ran(1, 100)}
for x = 1, math.ceil(#Table/2)+1 do
	print("Trial: "..x)
	for i = #Table, 1, -1 do
		local Value_1, Value_2 = Table[i], Table[i-1]
		print(Value_1)
		if i ~= 1 then
			if Value_2 > Value_1  then
				print(Value_2, Value_1, "Switched!")
				Table[i-1], Table[i] = Value_1, Value_2
			end
		end
		wait(.1)
	end
	print(" ")
end
