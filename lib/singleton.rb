require 'singleton'

class Configuration
  include Singleton

  attr_accessor :base_url, :debug_mode

  def initialize
    @base_url = ""
    @debug_mode = false
  end

# Configuration クラスは new できない
# >> config = Configuration.new
# NoMethodError (private method `new' called for Configuration:Class)

# instance メソッドを使ってインスタンスを取得する
# >> config = Configuration.instance
# => #<Configuration:0x00007fdf34191e30 @base_url="", @debug_mode=false>

# 設定値を設定する
# >> config.base_url = 'http://example.com'
# => "http://example.com"
# >> config.debug_mode = true
# => true

# >> other = Configuration.instance
# => #<Configuration:0x00007fdf34191e30 @base_url="http://example.com", @debu...

# 上で設定した設定値を取得できる
# ?> other.base_url
# => "http://example.com"
# >> other.debug_mode
# => true

# config == other 同じオブジェクトになっている
# >> config.object_id
# => 280
# >> other.object_id
# => 280
# >> config.equal?(other)
# => true

end
