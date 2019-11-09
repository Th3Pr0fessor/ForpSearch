local Ran = math.random
local Table = {Ran(1, 100), Ran(1, 100), Ran(1, 100), Ran(1, 100), Ran(1, 100), Ran(1, 100), Ran(1, 100), Ran(1, 100), Ran(1, 100), Ran(1, 100)}
print("INITIAL NUMBER SET:")
for i, v in pairs(Table) do
	print(v)
end
print(" ")
for X = 1, #Table do
	local i = 1
	print("Trial"..X)
	repeat
		if Table[i] > Table[i + 1] then
			print(Table[i], Table[i + 1],", ", Table[i + 1], "Moved back!")
			Table[i], Table[i + 1] = Table[i + 1], Table[i]
		end
				
				
		i = i + 1
		wait(.1)		
	until i == #Table
	print(" ")
end

print("RESULTS:")
print(" ")

for i, v in pairs(Table) do
	print(v)
end

print(" ")
