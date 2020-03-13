def encode_rail_fence_cipher(str, num_rails)
  positions_arr = positions(str.length, num_rails).flatten!
  encoded = ""
  positions_arr.each do |v|
    encoded << str[v]
  end
  encoded
end

def decode_rail_fence_cipher(str, num_rails)
  return "" if str === ""
  str_arr = str.split("")
  positions_arr = positions(str.length, num_rails)

  positions_arr.each do |el|
    str_arr << str_arr.slice!(0, el.length)
  end
  counter = 0
  decode = []
  for i in 0...str.length

    decode << str_arr[counter].slice!(0,1)
    reverse = true if counter == num_rails - 1
    reverse = false if counter == 0
    reverse ? counter -= 1 : counter += 1
  end
  decode.flatten!.join("")
end

def positions(length, num_rails)
  counter = 0
  output_arr = Array.new(num_rails) {[]}
  for i in 0...length
    output_arr[counter] << i
    reverse = true if counter == num_rails - 1
    reverse = false if counter == 0
    reverse ? counter -= 1 : counter += 1
  end
  output_arr
end




describe '.encode' do

  it "should return empty string if passed an empty string" do
    expect(encode_rail_fence_cipher('a', 3)).to eq('a')
  end

  it "should return the same string with input of 'a" do
    expect(encode_rail_fence_cipher('a', 3)).to eq('a')
  end

  it "should encode (abcde,3) correctly" do
    expect(encode_rail_fence_cipher('abcde', 3)).to eq('aebdc')
  end

  it "should encode ('WEAREDISCOVEREDFLEEATONCE', 3) correctly" do
    expect(encode_rail_fence_cipher('WEAREDISCOVEREDFLEEATONCE', 3)).to eq('WECRLTEERDSOEEFEAOCAIVDEN')
  end

  it "should encode ('abcdefg', 4) correctly" do
    expect(encode_rail_fence_cipher('abcdefg', 4)).to eq('agbfced')
  end

end

describe 'decode_rail_fence_cipher' do

  it "should return empty string if passed an empty string" do
    expect(decode_rail_fence_cipher('', 3)).to eq('')
  end

  it "should decode ('aebdc', 3) to abcde" do
    expect(decode_rail_fence_cipher('aebdc', 3)).to eq('abcde')
  end

  it "should decode ('WECRLTEERDSOEEFEAOCAIVDEN', 3) to WEAREDISCOVEREDFLEEATONCE" do
    expect(decode_rail_fence_cipher('WECRLTEERDSOEEFEAOCAIVDEN', 3)).to eq('WEAREDISCOVEREDFLEEATONCE')
  end

  it "should decode ('agbfced', 4) to abcdefg" do
    expect(decode_rail_fence_cipher('agbfced', 4)).to eq('abcdefg')
  end

end


# v_length = num_rails + 1
# v_repeats = (str.length.to_f/v_length).ceil.to_i
# p v_repeats 
# index_order = Array.new(num_rails) {[]}

# for i in 0..v_repeats - 1
#   for j in 0..num_rails - 1
#     min = (v_length) * i + j
#     max = (v_length) * (i + 1) - j
#     p "#{min} #{max}"
#     # index_order[j % num_rails] << min
#     # index_order[j % num_rails] << max
#   end
# end

# # index_order = index_order.reduce([]) { |out, el| out.concat(el.uniq)}
# # out = Array.new(str.length) {nil}

# # index_order.each.with_index do |i, position|
# #   out[i] = str[position] if position < str.length
# # end