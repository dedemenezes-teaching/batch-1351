# STRING
# Anything inside "" OR ''

"hello".class #=> String
'hello Batch #1351!'.capitalize
'hello Batch #1351!'.length
'hello Batch #1351!'.split

# INTERPOLATION
# Ability to write Ruby code inside a String
# String MUST be defined uysing ""
"two: #{1 + 1}"
'two: #{1 + 1}'

# CASTING TYPE
'1983'.to_i

# INTEGER
1 + 3 #=> 4
1 * 2 #=> 2

12.to_s #=> "12"
5.49.floor #=> 5
5.49.ceil #=> 6


# ARRAY
# Anything defined using []
['andre', 35, 'botafogo'].class #=> Array
['andre', 'menezes', 'botafogo'].class #=> Array
['andre', 'menezes', 'botafogo'].sort #=> ["andre", "botafogo", "menezes"]
[12, 4, 34, 123].sort #=> [4, 12, 34, 123]
[12, 4, 34, 123].size #=> 4

# RANGE
(1..10).class #=> Range
(1..10).to_a #=> [1,2,3,4,5,6,7,8,9,10]
(1...10).to_a #=> [1,2,3,4,5,6,7,8,9]
('a'..'f').to_a #=> ["a", "b", "c", "d", "e", "f"]
