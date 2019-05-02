def sum_of_two? num_list, k
    seen_numbers = []
    for num in num_list
        if seen_numbers.include? k-num
            return true
        else
            seen_numbers << num
        end
    end
    return false
end