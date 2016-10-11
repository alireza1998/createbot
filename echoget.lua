do
 local function save_file(name, text)
    local file = io.open("/root/TeleSeed/data/echo"..name, "w") --save file to echo folder !
    file:write(text)
    file:flush()
    file:close()
end   
function run(msg, matches)
  if matches[1] == "echo>" and is_sudo(msg) then --Sudo only !
 
         local name = matches[2]
        local text = matches[3]
        return save_file(name, text)
    end
   end
return {
  patterns = {
  "^[/#](echo>) ([^%s]+) (.+)$"

  },
  run = run
}
end
