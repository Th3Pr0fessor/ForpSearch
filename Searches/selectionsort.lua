local Ran = math.random
local Table = {Ran(1, 100), Ran(1, 100), Ran(1, 100), Ran(1, 100), Ran(1, 100), Ran(1, 100), Ran(1, 100), Ran(1, 100), Ran(1, 100), Ran(1, 100)}
for X = 1, #Table do
	local Selected = X
	local Num = X
	
	print("Trial: "..X)
	for i = X + 1, #Table do
		print(Table[i])
		if Table[i] > Table[Selected] then 
			Selected = i
		end    
		wait(.1)
	end
	Table[Num], Table[Selected] = Table[Selected], Table[Num]
	
	print(" ")
end

print("Results:")
print(" ")

for i, v in pairs(Table) do
	print(v)
end
