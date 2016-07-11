class RegisteredApplicationsController < ApplicationController
  def index
    @registered_applications = RegisteredApplication.all
  end

  def show
  end

  def new
    @registered_application = RegisteredApplication.new
  end

  def edit
  end

  def create
    @registered_application = RegisteredApplication.new(registered_application_params)

    if registered_application.save
      redirect_to @registered_application, notice: 'Registered application was created'
    else
      render :new
    end
  end

  def update
    if registered_application.update(registered_application_params)
      redirect_to @registered_application, notice: 'Registered application was updated'
    else
      render :edit
    end
  end

  def destroy
    @registered_application.destroy
    redirect_to registered_applications_url, notice: 'Registered application was destroyed'
  end

  private

  def registered_application_params
    params.require(:registered_application).premit(:name, :url, :user_id)
  end
end
