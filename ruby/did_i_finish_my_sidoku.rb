# Kata:         Did i finish my sudoku?
# Difficulty:   5kyu
# status:       Complete
# link:         https://www.codewars.com/kata/53db96041f1a7d32dc0004d2


def done_or_not(arr)
  #horizontals
    horizontals = arr.all?{ |i| i.sort == [1,2,3,4,5,6,7,8,9]}
  #verticals
    verticals = arr.transpose.all?{ |i| i.sort == [1,2,3,4,5,6,7,8,9]}
  #boxes
    boxes_arr = []
    for c in 0...3
      temp_arr = []
      for r in 0...9
        temp_arr << arr[r].slice(c*3,3)
      end
      boxes_arr << temp_arr.flatten
    end
    boxes = boxes_arr.flatten.each_slice(9).to_a.all?{ |i| i.sort == [1,2,3,4,5,6,7,8,9]}
    horizontals && verticals && boxes ? "Finished!" : "Try again!"
  end