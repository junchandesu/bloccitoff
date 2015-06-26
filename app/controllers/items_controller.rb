class ItemsController < ApplicationController

	def new
		@user = User.find(current_user.id)
		@item = Item.new
	end

	def create
		@user = User.find(current_user.id)
		@item = @user.items.build(params.require(:item).permit(:name))
		
		if @item.save
			flash[:notice] = "New item name was saved."
			redirect_to [@user]
		else
			flash[:error] = "There was an error saving the new item. Please try again."
			redirect_to [@user]
		end
	end

	def destroy
				
		@item = current_user.items.find(params[:id])

		if @item.destroy
			flash[:notice] = "New item name was deleted."
			redirect_to [current_user, @item]
		else
			flash[:error] = "There was an error deleting this item."
			redirect_to [current_user, @item]
		end


	end
end
