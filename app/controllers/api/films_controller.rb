class Api::FilmsController < JSONAPI::ResourceController
  respond_to :json

  def index
    @films = Film.all
    respond_to do |format|
    format.json { render :json => @films }
    end
  end

  def show
    @film = Film.find(params[:id])
    render json: @film
  end

  private
  def find_film
    @film = Film.find_by_name(params[:title])
    render nothing: true, status: :not_found unless @film.present?
  end
end
