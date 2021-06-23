module AwesomeApi
  # 設定値を保持するクラスインスタンス変数を用意する
  @base_url = ""
  @debug_mode = false

  # クラスインスタンス変数を読み書きするための特異メソッドを定義する
  class << self
    def base_url=(value)
      @base_url = value
    end

    def base_url
      @base_url
    end

    def debug_mode=(value)
      @debug_mode = value
    end

    # 以下の1行で上記の動作をする
    attr_accessor :base_url, :debug_mode
  end
end
