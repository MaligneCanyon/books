family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

obj = family.select { |k, v| k == :sisters || k == :brothers }
p obj # hash w/ :sisters and :brothers keys
obj = obj.values
p obj # objay w/ sister and brother sub-arrays
obj = obj.flatten
p obj # array w/ sisters and brothers