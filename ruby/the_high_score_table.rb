# Kata:         the highscore table
# Difficulty:   6kyu
# status:       Complete
# link:         https://www.codewars.com/kata/5962bbea6878a381ed000036

class HighScoreTable

  def initialize(n)
    @scores = []
    @n = n
  end
  
  def update(score)
    @scores.push(score).sort!.reverse!.slice!(@n)
  end

  def scores()
    @scores
  end

  def reset()
    @scores.clear
  end

end