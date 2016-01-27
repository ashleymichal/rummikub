class Run
  attr_reader :id

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
    @unordered_tokens = tokens
  end

  # @param tokens_to_add [Array] token objects to be added to the run
  def add(tokens_to_add)
    unordered_tokens.concat(tokens_to_add)

    tokens
  end

  # @param tokens_to_remove [Array] token objects to be removed from the run
  def remove(tokens_to_remove)
    tokens_to_remove.each do |token|
      unordered_tokens.delete(token)
    end

    tokens
  end

  def tokens
    order_tokens
  end

private
  attr_accessor :unordered_tokens

  def order_tokens
    # Fake order_tokens method.
    return unordered_tokens
  end
end
