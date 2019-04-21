# frozen_string_literal: true

module Watermelon
  module Example
    # This is the first submodule in the root namespace
    def self.example1
      a = 'example1'
      b = a
      b
    end

    def self.example2
      a = 'example2'
      b = a
      b
    end
  end
end
