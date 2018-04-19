class Queue
    export add,peek,poll,len,toString
    var arr:flexible array 1..0 of int
    function len :int
        result upper(arr)
    end len
    proc add(i:int)
        new arr,upper(arr)+1
        arr(upper(arr)):=i
    end add
    function peek:int
        if upper(arr)>0 then
            result arr(1)
        end if
        result minint
    end peek
    function poll:int
        if upper(arr)>0 then
            var out :int:=arr(1)
            for x:2..upper(arr)
                arr(x-1):=arr(x)
            end for
                new arr,upper(arr)-1
            result out
        end if
        result minint
    end poll
    function toString:string
        var str:string:="{"
        for i : 1..upper(arr)
            str := str + intstr(arr(i))
            if i not=upper(arr) then
                str:= str+", "
            end if
        end for
            str:= str+"}"
        result str
    end toString
end Queue