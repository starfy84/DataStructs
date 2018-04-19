class ArrayList
    export getLength,push,pop,at,toString,add,remove
    var arr : flexible array 1..0 of int
    function getLength:int
        result upper(arr)
    end getLength
    proc push(i:int)
        new arr,upper(arr)+1
        arr(upper(arr)):=i
    end push
    proc pop
        new arr,upper(arr)-1
    end pop
    function at(i:int):int
        pre i>0 and i <=upper(arr)
        result arr(i)
    end at
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
end ArrayList