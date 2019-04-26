class PaymentsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def stripe
        p params
    end

    def success

    end

end