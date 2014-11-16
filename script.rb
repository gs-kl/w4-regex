# Answers with grep
#
# 1. grep '^[Aa]' words.txt | wc -l
# 2. grep ing words.txt | wc -l
# 3. grep ing$ words.txt | wc -l
# 4. egrep '^\w{7}$' words.txt | wc -l
# 5. grep aa words.txt | wc -l
# 6. egrep '(vark|wolf)$' words.txt | wc -l


# Answers with Ruby

@words = File.open("words.txt", "r").read

def print_results input
  puts @words.scan(input).size.to_s
end

print_results /^[Aa]/
print_results /\b\w{0,}ing\w{0,}\b/ # More specific regex necessary than with grep to avoid words with multiple "ing"s; grep "prints ***lines*** matching a pattern"
print_results /ing$/
print_results /^\w{7}$/
print_results /aa/
print_results /(vark|wolf)$/
