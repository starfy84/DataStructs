class Queue
    export add,peek,poll,size,toString,addAt,remove
    var arr:flexible array 1..0 of int
    function size :int
        result upper(arr)
    end size
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
    proc addAt(i,dex:int)
        pre dex>0 and dex <=upper(arr)+1
        var temp :array 1..upper(arr) of int
        for x:1..upper(arr)
            temp(x):=arr(x)
        end for
            new arr,upper(arr)+1
        for x : dex+1..upper(arr)
            arr(x):=temp(x-1)
        end for
            arr(dex):=i
    end addAt
    proc remove(dex:int)
        pre dex>0 and dex <=upper(arr)
        for x : dex+1 .. upper(arr)
            arr(x-1):=arr(x)
        end for
            new arr,upper(arr)-1
    end remove
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