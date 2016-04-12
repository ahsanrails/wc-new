class SearchesController < ApplicationController

  def index
    @search = Search.all
  end

def new
	@search = Search.new
	@ptypes = PListing.uniq.pluck(:property_type)
	@rooms = PListing.uniq.pluck(:room)
	@bathroom = PListing.uniq.pluck(:bathroom)
	@rent_price = PListing.uniq.pluck(:total_rent)
end

def create
	@search = Search.create(search_params)
	redirect_to @search
end

def show
 	@search = Search.find(params[:id])
end

private

def search_params
	params.require(:search).permit(:property_type, :bathroom, :bedroom, :rent)
end

end
