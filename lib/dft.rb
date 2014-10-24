require "dft/version"

module DFT
  def forward(values, window=nil)
    if window
      raise ArgumentError, "window" unless window.is_a?(Array) && (window.length == values.length)
    end
    execute(values, window)
  end

  module_function :forward
end
