class Api::BeersController < ApplicationController
    before_action :set_brand
    # GET	/api/brands/:brand_id/beers => {brand: brand, beers: [beer,beer]}
    # axios.get(`/api/brands/1/beers`)
    def index
       render json: {brand: @brand, beers: @brand.beers}
    end

    # POST	/api/brands/:brand_id/beers => return created beer or error
    # axios.post(`/api/brands/1/beers`,{name:'value here', style: 'value here'})
    def create
      beer = @brand.beers.new(beer_params)
      if(beer.save)
        render json: beer
      else
        render json: {errors: beer.errors}, status: 422
      end
    end

    # PUT	/api/brands/:brand_id/beers/:id => return updat beer or error
    # axios.put(`/api/brands/1/beers/1`,{name:'value here', style: 'value here'})
    def update
        beer = @brand.beers.find(params[:id])
        if(beer.update(beer_params))
          render json: beer
        else
          render json: {errors: beer.errors}, status: 422
        end
      end

    # DELETE	/api/brands/:brand_id/beers/:id
    # axios.delete(`/api/brands/1/beers/1`) => return deleted beer
    def destroy
      beer = @brand.beers.find(params[:id])
      render json: beer.destroy
    end

    private

    def set_brand
      @brand = Brand.find(params[:brand_id])
    end

    def beer_params
        params.require(:beer).permit(:name, :style)
    end
end
