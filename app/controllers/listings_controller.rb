class ListingsController < ApplicationController
    
    before_action :set_listing, only: [:show, :edit, :update, :destroy]


    def create
        #create new listing
        #a=1
        #byebug
        #a += 2
        #byebug
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
    @breeds = Breed.all
    @sexes = Listing.sexes.keys
    end

    def show
        #show a single listing
    end


private
    
    def set_listing
        id = params[:id]
        @listing = Listing.find(id)
    end

end