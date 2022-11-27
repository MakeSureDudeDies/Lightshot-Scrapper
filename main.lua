local output = io.open("Output.txt", "w")
function write(scrap)
  return output:write(scrap)
end

local charset = "qwertyuiopasdfghjklzxcvbnm1234567890"
math.randomseed(os.clock())
function RandomString(length)
	local ret = {}
	local r
	for i = 1, length do
		r = math.random(1, #charset)
		table.insert(ret, charset:sub(r, r))
	end
	return table.concat(ret)
end
-- loop it up
-- sleep function won't work on while func
while true do 
function sleep(n)
local t0 = os.clock()
while os.clock() - t0 <= n do end
end
sleep(0.1)  write("https://prnt.sc/"..RandomString(math.random(4,6)).. "\n")
end
output:close()
-- i don't care its bad coding practice it was made to be private anyway
