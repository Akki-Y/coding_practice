def array(arr) 
    n = arr.length - 1
    swap = true
    pass = 0
    while swap
      swap= false
      #puts n-1
      (n - pass).times.each do |i|    
        if arr[i] > arr[i + 1] 
          arr[i], arr[i + 1] = arr[i + 1], arr[i]
          swap = true
          puts "swap #{arr}"
        end 
      end
      puts pass
      pass += 1
    end    
end

arr = [0, 5, 1, 4, 8, 3, 6]   
 p array(arr)
