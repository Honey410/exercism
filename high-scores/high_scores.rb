class HighScores
    def initialize(para)
      @scores = para
    end
    def scores
      @scores
    end
    def latest
      @scores.last
    end
    def personal_best
      @scores.max
    end
    def personal_top_three
      @scores.max(3)
    end
    def latest_is_personal_best
      last = @scores.last
      last == @scores.max
    end
  end
