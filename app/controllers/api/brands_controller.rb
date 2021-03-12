class Api::BrandsController < ApplicationController
    # GET	/api/brands =>  returns all brands
    # axios.get('/api/brands')
    def index
        render json: Brand.all
    end

    # GET	/api/brands/:id => return brand and all of brands beers
    # axios.get('/api/brands/1')
    def show
        brand = Brand.find(params[:id])
        render json: {brand: brand, beers:brand.beers}
    end

    #Post /api/brands
    # axios.post(`/api/brands`, {name:'value of name'}) => returns created brand or 422 error
    def create
        brand = Brand.new(brand_params)
        if(brand.save)
            render json: brand
        else
            # doing status 422 here will cause err in front (go to catch)
            render json: {errors: brand.errors}, status: 422
        end
    end

    #Put /api/brands/:id
    # axios.put(`/api/brands/1`, {name:'value of name'}) => returns updated brand or 422 error
    def update
        brand = Brand.find(params[:id])
        if(brand.update(brand_params))
            render json: brand
        else
            # doing status 422 here will cause err in front (go to catch)
            render json: {errors: brand.errors}, status: 422
        end
    end

    # DELETE '/api/brands/:id'
    # axios.delete(`/api/brands/1`) => returns deleted brand
    def destroy
      render json: Brand.find(params[:id]).destroy
    end

    private

    def brand_params
      params.require(:brand).permit(:name)
    end
end
