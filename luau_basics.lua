----------------------------------------------------------------------
-- ROBLOX LUAU BASICS - ONE COMPLETE BEGINNER SCRIPT
-- Read the comments carefully and run this inside Roblox Studio.
----------------------------------------------------------------------


----------------------------------------------------------------------
-- 1. COMMENTS
----------------------------------------------------------------------

-- This is a single-line comment.

--[[
    This is a
    multi-line comment.
]]



----------------------------------------------------------------------
-- 2. VARIABLES
----------------------------------------------------------------------

-- Luau uses "local" to create a local variable.
-- Prefer local variables instead of global variables.

local playerName = "Naitik"
local age = 20
local height = 176.5
local isStudent = true

print(playerName)
print(age)
print(height)
print(isStudent)


----------------------------------------------------------------------
-- 3. DATA TYPES
----------------------------------------------------------------------

-- String -> text
local name = "Roblox"

-- Number -> integer or decimal
local score = 100
local price = 99.99

-- Boolean -> true / false
local gameStarted = true

-- nil -> represents "nothing/no value"
local item = nil

print(type(name))        -- string
print(type(score))       -- number
print(type(gameStarted)) -- boolean
print(type(item))        -- nil



----------------------------------------------------------------------
-- 4. STRING OPERATIONS
----------------------------------------------------------------------

local firstName = "Naitik"
local lastName = "Bhandari"

-- Joining strings is called concatenation.
-- Luau uses ".." to concatenate.

local fullName = firstName .. " " .. lastName

print(fullName)

-- You can get the length of a string using #
print(#fullName)


-- String methods
local message = "hello roblox"

print(string.upper(message)) -- HELLO ROBLOX
print(string.lower(message)) -- hello roblox



----------------------------------------------------------------------
-- 5. ARITHMETIC OPERATORS
----------------------------------------------------------------------

local a = 10
local b = 3

print(a + b) -- Addition
print(a - b) -- Subtraction
print(a * b) -- Multiplication
print(a / b) -- Division
print(a % b) -- Remainder
print(a ^ b) -- Power



----------------------------------------------------------------------
-- 6. COMPARISON OPERATORS
----------------------------------------------------------------------

local x = 10
local y = 20

print(x == y) -- Equal?
print(x ~= y) -- Not equal?
print(x > y)  -- Greater than?
print(x < y)  -- Less than?
print(x >= y) -- Greater than/equal?
print(x <= y) -- Less than/equal?



----------------------------------------------------------------------
-- 7. IF / ELSEIF / ELSE
----------------------------------------------------------------------

local playerScore = 75

if playerScore >= 90 then
    print("Excellent!")

elseif playerScore >= 60 then
    print("Good job!")

else
    print("Keep practicing!")

end

-- IMPORTANT:
-- Luau uses "then" after the condition.
-- The block ends with "end".



----------------------------------------------------------------------
-- 8. LOGICAL OPERATORS
----------------------------------------------------------------------

local playerLevel = 10
local hasWeapon = true

-- "and" -> BOTH conditions must be true
if playerLevel >= 5 and hasWeapon == true then
    print("Player can fight!")
end

-- "or" -> At least ONE condition must be true
if playerLevel >= 20 or hasWeapon == true then
    print("Player can enter!")
end

-- "not" -> reverses true/false
if not false then
    print("This is true!")
end



----------------------------------------------------------------------
-- 9. FUNCTIONS
----------------------------------------------------------------------

-- Function = reusable block of code.

local function sayHello()
    print("Hello from Luau!")
end

-- Calling the function
sayHello()


----------------------------------------------------------------------
-- FUNCTION WITH PARAMETERS
----------------------------------------------------------------------

local function greetPlayer(name)
    print("Welcome " .. name)
end

greetPlayer("Naitik")
greetPlayer("Rahul")


----------------------------------------------------------------------
-- FUNCTION WITH RETURN VALUE
----------------------------------------------------------------------

local function addNumbers(a, b)

    local result = a + b

    return result
end

local answer = addNumbers(10, 20)

print(answer)



----------------------------------------------------------------------
-- 10. TABLES
----------------------------------------------------------------------

-- Tables are extremely important in Luau.
-- They are used for lists, dictionaries and many game systems.

local fruits = {
    "Apple",
    "Banana",
    "Mango"
}

-- Indexing starts from 1 in Luau.

print(fruits[1]) -- Apple
print(fruits[2]) -- Banana
print(fruits[3]) -- Mango


----------------------------------------------------------------------
-- ADDING ITEMS TO A TABLE
----------------------------------------------------------------------

table.insert(fruits, "Orange")

print(fruits[4])


----------------------------------------------------------------------
-- REMOVING ITEMS
----------------------------------------------------------------------

table.remove(fruits, 2)

-- Banana has been removed.



----------------------------------------------------------------------
-- 11. LOOPING THROUGH A TABLE
----------------------------------------------------------------------

for index, fruit in ipairs(fruits) do

    print(index, fruit)

end


----------------------------------------------------------------------
-- 12. DICTIONARY / KEY-VALUE TABLE
----------------------------------------------------------------------

-- Instead of numerical indexes,
-- we can use names as keys.

local player = {

    Name = "Naitik",
    Level = 10,
    Coins = 500,
    IsVIP = true

}

print(player.Name)
print(player.Level)
print(player.Coins)


----------------------------------------------------------------------
-- MODIFYING TABLE VALUES
----------------------------------------------------------------------

player.Coins = player.Coins + 100

print(player.Coins)


----------------------------------------------------------------------
-- ADDING NEW VALUES
----------------------------------------------------------------------

player.Health = 100

print(player.Health)

