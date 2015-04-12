class ParentsController < ApplicationController
  
  before_action :find_parent, only: [:show, :edit, :update, :destroy]
  
  before_action :authenticate_user!
 
  before_action :ensure_parent_ownership, only: [:edit, :update, :destroy]

   def index
      
   end

   def show

   end
     
   def new
     @parent = current_user.create_parent
   end

   def create 
     @parent = current_user.create_parent(parent_params)
     if @parent.save
       redirect_to @parent, notice: "Parent has been created!"
      else
        render "new"
      end
   end
   
 	def edit

	end

	def update
    if @parent.update(parent_params)
      redirect_to @parent
		else
			render 'edit'
		end
	end
   
	def destroy
    @parent.destroy
    redirect_to root_path, notice: "Successfully deleted parent"
	end
  
  private
  def parent_params
    params.require(:parent).permit(:parent_name, :family_name, :image, kids_attributes: [:id, :kid_name, :kid_age, :kid_gender, :_destroy])
  end
  
  def find_parent
    @parent = Parent.find(params[:id])
  end
  
  
  def ensure_parent_ownership
    if current_user != Parent.find(params[:id]).user
      redirect_to root_path, "You do not have access to do perform that action"
    end
  end
  

 end