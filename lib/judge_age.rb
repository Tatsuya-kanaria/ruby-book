# Procの呼び方
# > add_proc.call(10, 20)
# => 30
# > add_proc.yield(10, 20)
# => 30
# > add_proc.(10, 20)
# => 30
# > add_proc[10, 20]
# => 30
# > add_proc === [10, 20]
# => 30

def judge(age)
  adult = Proc.new{ |n| n > 20 }
  child = Proc.new{ |n| n < 20 }

  case age
  when adult
    '大人です'
  when child
    '子どもです'
  else
    'はたちです'
  end
end
