-- Herança
    -- Objetos herdam propriedades de classes, assim como classes herdam propriedades de outras classes.

local BaseClass = {}
BaseClass.__index = BaseClass

function BaseClass:new()
    return setmetatable({}, self) -- object of BaseClass
end

function BaseClass:baseFunction()
     print("Function of base class")
end

local ExtendingClass = setmetatable({}, {__index = BaseClass})
ExtendingClass.__index = ExtendingClass

function ExtendingClass:create()
    local obj = setmetatable({}, self)
    obj.attribute = 1
    return obj
end

local obj = ExtendingClass:create()
obj:baseFunction()
print(obj.attribute)