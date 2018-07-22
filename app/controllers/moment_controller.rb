class MomentController < ApplicationController
before_action :authenticate_user!, only: [:new, :create, :destroy, :edit, :update]
  def new
      
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
