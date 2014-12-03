--print("hello lua")

--[[
function sayhello()
    print("helle lua")
end
sayhello()
]]

--[[
config = {}
config.name = "sunny"
config.wife = "jj"

for key,val in pairs(config) do
	print(key,val)
end
]]

--[[
name = {}

for var = 1,100 do
	table.insert(name,1,var)
end

print(table.maxn(name))
]]



--[[匿名函数实现面向对象
function People(name)  
	local self = {}

	function init()
	self.name = name
	end
	
	--function sayHello()
	--print("People say hello" .. self.name)
	--end
	self.sayHello = function()--此处明显可见匿名函数居然不可以作为People的方法
	print("People say Hello" .. self.name)
	end
	
	init()

	return self
end

local p = People("sunny")
p.sayHello()
]]

--[[继承]]
function People(name)  
	local self = {}

	function init()
	self.name = name
	end
	
	--function sayHello()
	--print("People say hello" .. self.name)
	--end
	self.sayHello = function()--此处明显可见匿名函数居然不可以作为People的方法
	print("People say Hello" .. self.name)
	end
	
	self.sayHi = function()
	print("Hi")
	end
	init()

	return self
end

function sunny(name)
	local self = People(name)--这种继承我也是醉了，简直是强盗啊。

	self.sayHello = function()--方法的重写
	print("Sunny say Hello" .. self.name)
	end
	
	self.sayGoodNight = function()
	print("Sunny say goodnight to pj")
	end

	return self
end

local s = sunny("sunny")
s.sayHi()--直接调用父类的方法
s.sayHello() --重写之后的方法
s.sayGoodNight()
