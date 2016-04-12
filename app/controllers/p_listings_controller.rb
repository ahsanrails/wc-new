class PListingsController < ApplicationController
  before_action :set_p_listing, only: [:show, :edit, :update, :destroy]

  # GET /p_listings
  # GET /p_listings.json
  def index

    @property_images = PListing.__id__

    @p_listings = PListing.search(params[:search])
    @search = Search.new
    @ptypes = PListing.uniq.pluck(:property_type)
    @rooms = PListing.uniq.pluck(:room)
    @bathroom = PListing.uniq.pluck(:bathroom)
    @rent_price = PListing.uniq.pluck(:total_rent)
  
 
  @hash = Gmaps4rails.build_markers(@p_listings) do |plisting, marker|
  marker.lat plisting.latitude
  marker.lng plisting.longitude
  marker.infowindow plisting.street

       #  marker.picture({
       # "url" => "marker-logo.png",
       # "width" =>  32,
       # "height" => 32})

  marker.json({title: plisting.title})


end

  end
  
def show
  @property_images = @p_listing.property_images.all
  # @p_listings_parameters = PListing.find(params[:id]).parameters
  # @p_listing = PListing.find params[:id]
  
  @hash = Gmaps4rails.build_markers(@p_listing) do |plisting, marker|
    marker.lat plisting.latitude
    marker.lng plisting.longitude
    marker.infowindow plisting.street
    #marker.json({title: plisting.title})
  end
end
  # GET /p_listings/1
  # GET /p_listings/1.json


  # GET /p_listings/new
  def new
    @p_listing = PListing.new
    @property_image = @p_listing.property_images.build
    @search = Search.new
  end

  # GET /p_listings/1/edit
  def edit
    @property_image = @p_listing.property_images.build
  end

  # POST /p_listings
  # POST /p_listings.json
  def create
    @p_listing = PListing.new(p_listing_params)
    respond_to do |format|
      if @p_listing.save
        params[:property_images]['image_file'].each do |a|
          @property_image = @p_listing.property_images.create!(:image_file => a)
        end
        format.html { redirect_to @p_listing, notice: 'P listing was successfully created.' }
        format.json { render :show, status: :created, location: @p_listing }
      else
        format.html { render :new }
        format.json { render json: @p_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /p_listings/1
  # PATCH/PUT /p_listings/1.json
  def update
    respond_to do |format|
      if @p_listing.update(p_listing_params)
        format.html { redirect_to @p_listing, notice: 'P listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @p_listing }
      else
        format.html { render :edit }
        format.json { render json: @p_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /p_listings/1
  # DELETE /p_listings/1.json
  def destroy
    @p_listing.destroy
    respond_to do |format|
      format.html { redirect_to p_listings_url, notice: 'P listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_p_listing
      @p_listing = PListing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def p_listing_params
      params.require(:p_listing).permit(:display_type, :use_type, :property_type, :title, :street, :house_no, :city_place, :zip_code, :flat_size, :room, :bathroom, :total_rent, :date, :description, :longitude, :latitude , property_images_attributes: [:id, :p_listing_id, :image_file])
    end
end
