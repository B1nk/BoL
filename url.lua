function get(url)
	local handle = io.popen("curl -q -k -s -m 1 "..url)
	local result = handle:read ("*a")
	handle:close()
	return result
	
end


function post(url, fields)
	local handle = io.popen("curl -q -k -s -m 1 "..url.." -d '"..fields.."'")
	local result = handle:read("*a")
	handle:close()
	return result
	
end
