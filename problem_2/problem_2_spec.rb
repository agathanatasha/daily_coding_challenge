require_relative './problem_2'

describe 'new product array' do
    it 'returns empty array if input is an empty array' do
        input_array = []
        expect(product_array(input_array)).to eq(input_array)
    end

    it 'returns list of 1 if input has only one number' do
        input_array = [2]
        expect(product_array(input_array)).to eq(input_array)
    end

    it 'returns a reversed list if input has two numbers' do
        input_array = [2, 3]
        output_array = [3, 2]
        expect(product_array(input_array)).to eq(output_array)
    end

    it 'returns the correct product array given an array longer than 2' do
        input_array = [1, 2, 3, 4, 5]
        output_array = [120, 60, 40, 30, 24]
        expect(product_array(input_array)).to eq(output_array)
    end

    it 'returns product array containing zeros if there is a zero in the input' do
        input_array = [1, 4, 6, 0]
        output_array = [0, 0, 0, 24]
        expect(product_array(input_array)).to eq(output_array)
    end

    it 'returns correct result with input containing negative numbers' do
        input_array = [1, -3, 34, 8, 2, -9]
        output_array = [14688, -4896, 432, 1836, 7344, -1632]
        expect(product_array(input_array)).to eq(output_array)
    end
end