## Rummikub

#### Tokens

At the start of each game, Rummikub generates a new Token Bag containing two each of all combinations of 4 colors and the numbers between 1-12.

###### Example:

token.color = :red

token.number = 1

token_bag = TokenGenerator.new_bag

token_bag.size
	=> 48