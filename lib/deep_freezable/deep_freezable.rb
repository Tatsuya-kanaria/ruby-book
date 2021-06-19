module DeepFreezable
  def deep_freeze(array_or_hash)
    case array_or_hash
    when Array
      # 配列の各要素を freeze
      array_or_hash.each do |element|
        element.freeze
      end
    when Hash
      # ハッシュの各要素を freeze
      array_or_hash.each do |key, value|
        key.freeze
        value.freeze
      end
    end
    # 自身をfreeze(かつ、これが戻り値となる)
    array_or_hash.freeze
  end
end
