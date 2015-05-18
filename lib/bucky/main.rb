require 'httparty'

module Bucky
  class Main

    def initialize(params = {})
      @params = params
    end

    def post_transaction_request
      HTTParty.post(Bucky::Config.endpoint, body: params_with_signature)
    end

    def params_with_signature
      transaction_parameters.merge(brq_signature: signature)
    end

    private

    def transaction_parameters
      {
        brq_websitekey:     Bucky::Config.websitekey,
        brq_culture:        Bucky::Config.culture
      }.merge(@params)
    end


    def endpoint
      Bucky::Config.endpoint
    end

    def signature
      Bucky::Signature.new(transaction_parameters).to_s
    end

  end
end
