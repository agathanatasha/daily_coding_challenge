require_relative './problem_1'

describe 'possible sum of two in list' do

    it 'returns false if k is smaller than any number in the list' do
        num_list = [10, 15, 3, 7]
        k = 1
        expect(sum_of_two?(num_list, k)).to eq(false)
    end

    it 'returns false if k cannot be a sum of two' do
        num_list = [10, 15, 3, 7]
        k = 4
        expect(sum_of_two?(num_list, k)).to eq(false)
    end

    it 'returns true if k is a sum of two' do
        num_list = [10, 15, 3, 7]
        k = 18
        expect(sum_of_two?(num_list, k)).to eq(true)
    end

    it 'returns false if k exists in the list but not as a sum of two numbers' do
        num_list = [10, 2, 7, 9]
        k = 10
        expect(sum_of_two?(num_list, k)).to eq(false)
    end

    it 'returns true is k exists in the list along with a zero' do
        num_list = [10, 9, 4, 0, 2]
        k = 10
        expect(sum_of_two?(num_list, k)).to eq(true)
    end

    it 'returns false if k is 2 times one of the numbers in the list' do
        num_list = [2, 7, 9, 3]
        k = 4
        expect(sum_of_two?(num_list, k)).to eq(false)
    end

    it 'returns true is k is the sum of two identical numbers in the list' do
        num_list = [2, 2, 7, 9, 3]
        k = 4
        expect(sum_of_two?(num_list, k)).to eq(true)
    end

    it 'returns false if num_list is empty' do
        num_list = []
        k = 10
        expect(sum_of_two?(num_list, k)).to eq(false)
    end

    it 'returns true if sum exists between a positive and negative number' do
        num_list = [9, -1, 2, 3]
        k = 8
        expect(sum_of_two?(num_list, k)).to eq(true)
    end

    it 'returns true if sum exists between two negative numbers' do
        num_list = [-1, -8, 3, 4, -5]
        k = -6
        expect(sum_of_two?(num_list, k)).to eq(true)
    end

    it 'returns true if sum exists in a list full of duplicates' do
        num_list = [1, 1, 5, 5, 2, 6, 8, 6]
        k = 11
        expect(sum_of_two?(num_list, k)).to eq(true)
    end

    it 'returns true if multiple combinations of sum exist' do
        num_list = [10, 5, 3, 8, 2, 0, 5, 7, 9, 1]
        k = 10
        expect(sum_of_two?(num_list, k)).to eq(true)
    end
end