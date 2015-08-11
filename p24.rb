
(0..9).to_a.permutation.each_with_index.detect { |x, i| i == 1_000_000 - 1 }.first.join
