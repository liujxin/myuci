local myss = "/etc/myss"


f = SimpleForm("myss", translate("服务器记事本"))

t = f:field(TextValue, "lines")
t.wrap = "off"
t.rows = 20
function t.cfgvalue()
	return nixio.fs.readfile(myss) or ""
end

function t.write(self, section, data)
	return nixio.fs.writefile(myss, data:gsub("\r\n", "\n"))
end

function f.handle(self, state, data)
	return true
end

return f
