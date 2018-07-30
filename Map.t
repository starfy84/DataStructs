class Map

    export access,insert,modify
    
    var keys : flexible array 1..0 of string
    var values : flexible array 1..0 of int
    
    function access(key : string) : int
	for decreasing x : upper(keys) .. 1
	    if keys(x) = key then
		result values(x)
	    end if
	end for
    end access

    proc insert(key : string, value : int)
	new keys, upper(keys)+1
	keys(upper(keys)) := key
	new values, upper(values)+1
	values(upper(values)) := value
    end insert
    
    proc modify(key : string, value : int)
	for decreasing x : upper(keys) .. 1
	    if keys(x) = key then
		values(x) := value
	    end if
	end for
    end modify
    
end Map

