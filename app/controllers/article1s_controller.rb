class Article1sController < ApplicationController
	def index
		@article1s=Article1.preload(:comments)
	end

	def new
		@article1=Article1.new
	end
	def show
		@article1 = Article1.find(params[:id])
		@comment =Comment.new
		@comment.article1_id=@article1.id
	end

	def edit
		@article1 = Article1.find(params[:id])
	end
	def create
		@article1 = Article1.new(article1_params)
		respond_to do |format|
			if @article1.save
    			format.html { redirect_to article1s_path }
    		else
    			format.html { render :new }
    		end
  		end
	end

	def update
		@article1 = Article1.find(params[:id])
		p @article1
		puts "before update"
		@article1.update(title: params[:article1][:title],
    		body: params[:article1][:body])
		p @article1
		redirect_to article1s_path
	end
	def destroy
		puts "delete this object"
		Article1.destroy(params[:id])
		redirect_to article1s_path
	end

	def article1_params
		params.require(:article1).permit(:title, :body, :tag_list)
	end
	def comments

	end

end