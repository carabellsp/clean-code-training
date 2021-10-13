# frozen_string_literal: true

module Mixin
  def you_method
    something + 3
  end

  def something
    199
  end
end

# when using mixins, it's better to hide implementation details in the inner class, so as not to pollute the namespace of method names in the target class
