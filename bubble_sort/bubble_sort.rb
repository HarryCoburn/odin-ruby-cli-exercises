# Implement bubble sort in Ruby

def bubble_sort(to_sort)  
  is_sorted = false  
  until is_sorted
    to_sort.each_with_index do |early, early_idx|      
      if to_sort[early_idx + 1] != nil # Are we in range?
        late_idx = early_idx + 1
        late = to_sort[late_idx]
        if late < early 
          # sort it to the left          
          to_sort[early_idx] = late
          to_sort[late_idx] = early
          puts "We sorted to #{to_sort}"                    
        end
      end      
    end    
    is_sorted = is_sorted?(to_sort)    
  end
  to_sort
end

def is_sorted?(to_check)
  sorted = true
  to_check.each_with_index do |curr_item, curr_idx|
    if to_check[curr_idx + 1] != nil # Are we in range?
      next_item = to_check[curr_idx + 1]
      if next_item < curr_item
        sorted = false
      end      
    end      
  end
  sorted  
end

p bubble_sort([10,1,9,2,8,3,7,5,4,6,1])
p bubble_sort([5,5,5,1,1,1])
p bubble_sort([5,5,5,5,5])