# frozen_string_literal: true

def field_validator(input)
  field = input
  'Nope, something is wrong!'
end

def valid_ship(start, field)
  length = 0
  vStart = start[0]
  hStart = start[1]

  direction = 'v' if field[vStart + 1][hStart] == 1
  direction = 'h' if field[vStart][hStart + 1] == 1

  while field[vStart][hStart] == 1
    length += 1
    direction == 'v' ? vStart += 1 : hStart += 1
  end

  v1 = (start[0] - 1) < 0 ? 0 : (start[0] - 1)
  h1 = (start[1] - 1) < 0 ? 0 : (start[1] - 1)

  if direction == 'v'
    v2 = start[0] + length
    h2 = start[1] + 1
  else
    v2 = start[0] + 1
    h2 = start[1] + length
  end

  total = 0
  (v1..v2).each do |i|
    (h1..h2).each do |j|
      total += field[i][j]
    end
  end

  return length == total ? length : nil
  # p "length: #{length}, total: #{total}"
end
