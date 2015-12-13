class HomeController < ApiController
  def index
    render json: { hi: 'there' }
  end
end
