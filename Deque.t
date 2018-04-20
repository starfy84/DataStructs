class Deque
    export push_back,peek_back,poll_back,push_front,peek_front,poll_front,size,toString,add,remove
    var arr:flexible array 1..0 of int
    function size :int
        result upper(arr)
    end size
    proc push_back(i:int)
        new arr,upper(arr)+1
        arr(upper(arr)):=i
    end push_back
    
    function peek_back:int
        if upper(arr)>0 then
            result arr(upper(arr))
        end if
        result minint
    end peek_back
    
    function poll_back:int
        if upper(arr)>0 then
            var out:int:=arr(upper(arr))
            new arr,upper(arr)-1
            result out
        end if
        result minint
    end poll_back
    
    proc push_front(i:int)
        var temp :array 1..upper(arr) of int
        for x:1..upper(arr)
            temp(x):=arr(x)
        end for
            new arr,upper(arr)+1
        for x:2..upper(arr)
            arr(x):=temp(x-1)
        end for
            arr(1):=i
    end push_front
    
    function peek_front:int
        if upper(arr)>0 then
            result arr(1)
        end if
        result minint
    end peek_front
    
    function poll_front:int
        if upper(arr)>0 then
            var out :int:=arr(1)
            for x:2..upper(arr)
                arr(x-1):=arr(x)
            end for
                new arr,upper(arr)-1
            result out
        end if
        result minint
    end poll_front
    proc add(i,dex:int)
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
    end add
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
end Deque