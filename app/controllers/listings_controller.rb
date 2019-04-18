class ListingsController < ApplicationController
    
    before_action :set_listing, only: [:show, :edit, :update, :destroy,]
    before_action :set_breeds_and_sexes [:new]


    def create
        #create new listing
        @listing = Listing.create(listing_params)

        if @listing.errors.any?
            set_breeds_and_sexes
            render "new"
        else
            redirect_to listings_path
        end
    end

    def update
        #updates the current listing
    end

    def index
        #shows all listings
        @listings = Listing.all
    end

    def edit
    end

    def destroy
    end

    def new
        #shows form for creating a new listing
        @listing = Listing.new
        
    end

    def show
        #show a single listing
    end


private

    def set_breeds_and_sexes
        @breeds = Breed.all
        @sexes = Listing.sexes.keys
    end

    def set_listing
        id = params[:id]
        @listing = Listing.find(id)
    end

    def listing_params
        params.require(:listing).permit(:title, :description, :breed_id, :sex, :deposit, :date_of_birth, :diet)
    end

end