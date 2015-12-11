def get_upper_limit(m,n)
    (m-n/TEETH_MAX.to_f).floor
end

def get_lower_limit(m,n)
    lower_limit=(m-n/TEETH_MIN.to_f).ceil
    if lower_limit>0
        lower_limit
    else
        0
    end
end

def ramb(m,n)
    upper_limit=get_upper_limit(m,n)
    lower_limit=get_lower_limit(m,n)
    if n%TEETH_UNIT!=0
        puts "error"
        return
    end
    if upper_limit<0
        puts "error"
        return
    end
    printf "%d %d",upper_limit,lower_limit
end

m,n=gets.split.map{|v| v.to_i}
ramb(m,n)

