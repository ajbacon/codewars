# frozen_string_literal: true

def validate_battlefield(field)
  height = field.length
  width = field[0].length
  expected_ships = [1, 1, 1, 1, 2, 2, 2, 3, 3, 4]
  ships = []

  (0...height).each do |i|
    (0...width).each do |j|
      next unless field[i][j] == 1

      check_ship = valid_ship([i, j], field)
      return false if check_ship == false

      ships << check_ship[0]
      vStart = i
      hStart = j
      (0...check_ship[0]).each do |_i|
        field[vStart][hStart] = 2
        check_ship[1] == 'v' ? vStart += 1 : hStart += 1
      end
    end
  end

  ships.sort == expected_ships
end

def valid_ship(start, field)
  field_size = field.length - 1
  length = 0
  vStart = start[0]
  hStart = start[1]

  if vStart <= field_size
    direction = 'v' if field[vStart + 1][hStart] == 1
  end
  if hStart <= field_size
    direction = 'h' if field[vStart][hStart + 1] == 1
  end

  while field[vStart][hStart] == 1
    length += 1
    direction == 'v' ? vStart += 1 : hStart += 1
    break if vStart > field_size || hStart > field_size
  end

  v1 = (start[0] - 1) < 0 ? 0 : (start[0] - 1)
  h1 = (start[1] - 1) < 0 ? 0 : (start[1] - 1)

  if direction == 'v'
    v2 = [start[0] + length, field_size].min
    h2 = [start[1] + 1, field_size].min
  else
    v2 = [start[0] + 1, field_size].min
    h2 = [start[1] + length, field_size].min
  end

  total = 0
  (v1..v2).each do |i|
    (h1..h2).each do |j|
      total += field[i][j]
    end
  end

  length == total ? [length, direction] : false
end
