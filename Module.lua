--!native
local module = {}

function module:CreateDataStorage(Name:string)
	local DataManipulation = {}
	if not module[Name] then
		module[Name] = {}
	end
	function DataManipulation:Set(Key:string,Value:any)
		module[Name][Key] = Value
	end
	function DataManipulation:Get(Key:string)
		return module[Name][Key] 
	end
	return DataManipulation
end

return module
