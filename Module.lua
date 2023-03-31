local module = {}

function DataStorage:CreateDataStorage(Name:string)
	local DataManipulation = setmetatable({},{})
	if not self[Name] then
		DataStorage[Name] = {}
	end
	function DataManipulation:SetAsync(Key:string,Value:any)
		DataStorage[Name][Key] = Value
	end
	function DataManipulation:GetAsync(Key:string)
		return DataStorage[Name][Key] 
	end
	return DataManipulation
end

return module
