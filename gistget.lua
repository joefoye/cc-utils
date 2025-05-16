-- gistget.lua
-- Downloads and saves a script from a GitHub Gist raw URL

local args = {...}
if #args < 2 then
    print("Usage: gistget <raw_gist_url> <filename>")
    print("Example: gistget https://gist.githubusercontent.com/user/gistid/raw/script.lua myscript.lua")
    return
end

local url = args[1]
local filename = args[2]

-- Check if HTTP API is enabled
if not http then
    print("HTTP API is not enabled. Enable it in ComputerCraft config.")
    return
end

print("Downloading from: " .. url)

-- Make HTTP request
local response = http.get(url)
if not response then
    print("Failed to download the file.")
    return
end

-- Read and save content
local content = response.readAll()
response.close()

local file = fs.open(filename, "w")
file.write(content)
file.close()

print("File saved as " .. filename)
