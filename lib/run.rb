class Run
  attr_accessor :tokens
  # Provide each instance of Run with a unique id.
  @@id = 0

  class << self
    private
    def get_id
      @@id += 1
      return @@id
    end
  end

  def initialize(tokens)
    @id = Run.send(:get_id)
    @tokens = tokens
  end

# separate out different behaviors of #change
  def add_tokens(tokens)
    tokens.concat(tokens)
  end
# also allowed for empty array rather than returning nil value
  def remove_tokens(tokens)
    tokens_to_remove.each do |token|
      tokens.delete(token)
    end
  end
  
  # # tokens_to_add: array of token objects
  # # tokens_to_remote: array of token objects
  # def change(tokens_to_add, tokens_to_remove)
  #   @tokens.concat(tokens_to_add)
  #   tokens_to_remove.each do |token|
  #     @tokens.delete(token)
  #   end
  #   if @tokens.length > 0
  #     # If the Run still has tokens associated with it return self.
  #     return self
  #   else
  #     # If the run no longer has any tokens associated with it return nil.
  #     # There is a better way than returning nil.
  #     return nil
  #   end
  # end

  def tokens
    return order_tokens
  end

private

  def order_tokens
    # Fake order_tokens method.
    return @tokens
  end
end
