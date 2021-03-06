# frozen_string_literal: true

# How minitest plugins. See https://github.com/colszowka/simplecov/pull/756 for why we need this.
# https://github.com/seattlerb/minitest#writing-extensions
module Minitest
  def self.plugin_simplecov_init(_options)
    SimpleCov.external_at_exit = true

    Minitest.after_run do
      SimpleCov.at_exit_behavior if SimpleCov.respond_to?(:at_exit_behavior)
    end
  end
end
