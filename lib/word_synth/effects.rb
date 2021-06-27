
module Effects
  def self.reverse
    # Procオブジェクト（ラムダ）をメソッドの戻り値にする
    ->(words) do
      # スペースで分解 > 逆順に並べ替え > スペースで連結
      words
        .split(' ')
        .map(&:reverse)
        .join(' ')
    end
  end

  def self.echo(rate)
    ->(words) do
      words
        .chars.map { |c| c == ' ' ? c : c * rate }
        .join
    end
  end

  def self.loud(level)
    ->(words) do
      words
        .split(' ')
        .map { |word| word.upcase + '!' * level }
        .join(' ')
    end
  end
end
