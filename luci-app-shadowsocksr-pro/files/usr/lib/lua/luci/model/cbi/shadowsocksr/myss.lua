local fs = require "nixio.fs"

local f = SimpleForm("myss",
	translate("服务器记事本"))

local o = f:field(Value, "_myss")

o.template = "cbi/tvalue"
o.rows = 20

function o.cfgvalue(self, section)
	return fs.readfile("/etc/myss")
end

function o.write(self, section, value)
	value = value:gsub("\r\n?", "\n")
	fs.writefile("/etc/myss", value)
end

return f