class TagsController < ApplicationController
	def new
	 @tag = Tag.new
	 @story = Story.find(params[:id])
	 @tag.story_id = @story.id
	end

	def create 
		@tag = Tag.new(tag_params)
	 	@story = Story.find(params[:id])
    @tag.story_id = @story.id

    respond_to do |format|
      if @tag.save
        format.html { redirect_to @tag, notice: 'Tag was successfully created.' }
        format.json { render :show, status: :created, location: @tag }

      else
        format.html { render :new }
        format.json { render json: @tag.errors, status: :unprocessable_entity }
      end
    end
	end

	def show 
		@tag = Tag.find(params[:id])
	end

	private
    # Never trust parameters from the scary internet, only allow the white list through.
    def tag_params
      params.require(:tag).permit(:name)
    end
end
