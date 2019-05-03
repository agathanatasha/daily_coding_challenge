def product_array num_list
    if num_list.length < 2
        return num_list
    else
        result = []
        for i in 0...num_list.length do
            calculation_array = num_list.dup
            calculation_array.delete_at(i)
            product = calculation_array.inject(:*)
            result << product
        end
        return result
    end
end