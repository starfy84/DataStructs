class Pair
    export first,second,set_first,set_second,make_pair,print
    
    var first,second : int
    
    proc set_first(value : int)
	first := value
    end set_first
    
    proc set_second(value : int)
	second := value
    end set_second
    
    proc make_pair(x, y: int)
	first := x
	second := y
    end make_pair
    
    proc print
	put "{" + intstr(first) + "," + intstr(second) + "}"
    end print
end Pair
