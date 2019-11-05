class SitesController < ApplicationController
	before_action :set_site, only: [:show, :edit, :update, :destroy]

	def index
		@sites = Site.all
	end


	def settings
	end



	def new
		@site = Site.new
	end

	def create
		@site = Site.new(site_params)

		respond_to do |format|
      if @site.save
        format.html { redirect_to @site, notice: 'Site was successfully created.' }
        format.json { render :show, status: :created, location: @site }
      else
        format.html { render :new }
        format.json { render json: @site.errors, status: :unprocessable_entity }
      end
    end	end

	private

	def set_site
      @site = Site.find(params[:id])
      #authorize @site
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def site_params
      params.require(:site).permit(:name, :theme)
    end
end
