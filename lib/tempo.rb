class Tempo
  include Comparable

  attr_reader :bpm
  # bpm(Beats Per Minute)音楽の速さ
  def initialize(bpm)
    @bpm = bpm
  end

  def <=>(other)
    if other.is_a?(Tempo)
      # bpm 同士を <=> で比較した結果を返す
      bpm <=> other.bpm
    else
      nil
    end
  end
  # irb 上で結果を見やすくする為に inspect メソッドをオーバーライド
  def inspect
    "#{bpm}bpm"
  end
end
