module Article1sHelper
	def article1_params
		params.require(:article1).permit(:title, :body, :tag_list)
	end
end
