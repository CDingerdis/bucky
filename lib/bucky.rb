require "bucky/version"

module Bucky
  autoload :VERSION,         'bucky/version'
  autoload :Constants,       'bucky/constants'
  autoload :Main,            'bucky/main'
  autoload :Config,          'bucky/config'
  autoload :Response,        'bucky/response'
  autoload :Signature,       'bucky/signature'
  autoload :PaymentResponse, 'bucky/payment_response'
end
