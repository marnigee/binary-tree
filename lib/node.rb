# frozen_string_literal: true

# Node in Binary Tree
class Node
  attr_reader :key, :left, :right

  def initialize(key)
    @key = key
    @left = nil
    @right = nil
  end

  def insert(new_key)
    if new_key <= key
      @left.nil? ? @left = Node.new(new_key) : @left.insert(new_key)
    elsif new_key > @key
      @right.nil? ? @right = Node.new(new_key) : @right.insert(new_key)
    end
  end
end
