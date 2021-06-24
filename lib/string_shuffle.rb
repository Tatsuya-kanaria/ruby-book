module StringShuffle
  # refinements 目的なので、refine メソッドを使う
  refine String do
    def shuffle
      chars.shuffle.join
    end
  end
end

class User
  # refinements を有効化する
  using StringShuffle

  def initialize(name)
    @name = name
  end

  def shuffled_name
    # User クラスの内部であれば String クラスの Shuffle メソッドが有効になる
    @name.shuffle
  end

  # User クラスを抜けると refinements は無効になる
end

# >> 'Alice'.shuffle
# NoMethodError (undefined method `shuffle' for "Alice":String)
# >> user = User.new('Alice')
# => #<User:0x00007fc4738700e8 @name="Alice">

# User クラス内では shuffle メソッドが有効になっている
# >> user.shuffled_name
# => "ciAle"

# User クラスを経由しない場合は、shuffle メソッドは使えない
# 'Alice'.shuffle
# NoMethodError (undefined method `shuffle' for "Alice":String)
