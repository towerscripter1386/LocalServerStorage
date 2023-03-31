local module = {}

function module:CreateDataStorage(Name:string)
	local DataManipulation = setmetatable({},{})
	if not module[Name] then
		module[Name] = {}
	end
	function DataManipulation:SetAsync(Key:string,Value:any)
		module[Name][Key] = Value
	end
	function DataManipulation:GetAsync(Key:string)
		return module[Name][Key] 
	end
	return DataManipulation
end

return module
