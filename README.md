# DFT

    simple DFT
    (C extension module)

## Installation

Add this line to your application's Gemfile:

    gem 'dft', :path => 'your_directry/dft'

And then execute:

    $ bundle
    cd your_directry/dft
    rake compile

## Usage

    DFT.forward(values, window)
    * values: target data array
    * window: windowing data array(option)

## Contributing

1. Fork it ( https://github.com/hrkksm10/dft/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
