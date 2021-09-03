class FlagTestController < ApplicationController
  def test
    ld_client = Rails.configuration.client
    user = {
      key: (rand() * 1000000000).floor().to_s
    }

    ld_client.identify(user)

    @v = ld_client.variation('ruby-flag', user, false)
    logger.debug(@v)

    render json: @v.to_json
  end
end
