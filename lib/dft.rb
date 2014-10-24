require "dft/version"

module DFT
  def forward(values, window=nil)
    unless window
      window = [1] * values.size
    end
    execute(values, window)
  end

  module_function :forward
end
