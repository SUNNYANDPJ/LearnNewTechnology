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



--[[��������ʵ���������
function People(name)  
	local self = {}

	function init()
	self.name = name
	end
	
	--function sayHello()
	--print("People say hello" .. self.name)
	--end
	self.sayHello = function()--�˴����Կɼ�����������Ȼ��������ΪPeople�ķ���
	print("People say Hello" .. self.name)
	end
	
	init()

	return self
end

local p = People("sunny")
p.sayHello()
]]

--[[�̳�]]
function People(name)  
	local self = {}

	function init()
	self.name = name
	end
	
	--function sayHello()
	--print("People say hello" .. self.name)
	--end
	self.sayHello = function()--�˴����Կɼ�����������Ȼ��������ΪPeople�ķ���
	print("People say Hello" .. self.name)
	end
	
	self.sayHi = function()
	print("Hi")
	end
	init()

	return self
end

function sunny(name)
	local self = People(name)--���ּ̳���Ҳ�����ˣ���ֱ��ǿ������

	self.sayHello = function()--��������д
	print("Sunny say Hello" .. self.name)
	end
	
	self.sayGoodNight = function()
	print("Sunny say goodnight to pj")
	end

	return self
end

local s = sunny("sunny")
s.sayHi()--ֱ�ӵ��ø���ķ���
s.sayHello() --��д֮��ķ���
s.sayGoodNight()
