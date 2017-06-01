class UserController < ApplicationController
  

  def new
  end

  def create
    attributes = user_attributes.merge({user_id: auth_user.id})
    @rental_unit = RentalUnit.new(attributes)

    if @rental_unit.save
      render json: @rental_unit, status: :created, location: @rental_unit
    else
      respond_with_errors(@rental_unit)
    end
  end

  def index
  end

  def edit
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
