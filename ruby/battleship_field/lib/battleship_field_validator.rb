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

  length
end
