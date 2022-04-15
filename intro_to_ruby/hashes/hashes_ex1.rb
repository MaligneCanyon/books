family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

obj = family.select { |k, v| k == :sisters || k == :brothers }
p obj # hsh w/ :sisters and :brothers keys
obj = obj.values
p obj # arr w/ sister and brother sub-arrs
obj = obj.flatten
p obj # arr w/ sisters and brothers

# alt:
p family.select { |k, _| k == :sisters || k == :brothers }.values.flatten