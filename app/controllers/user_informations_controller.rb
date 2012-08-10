class UserInformationsController < ApplicationController
  before_filter :logged_in?
  # GET /user_informations
  # GET /user_informations.json
  def index
    @user_informations = UserInformation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_informations }
    end
  end

  # GET /user_informations/1
  # GET /user_informations/1.json
  def show
    @user_information = UserInformation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_information }
    end
  end

  # GET /user_informations/new
  # GET /user_informations/new.json
  def new
    @user_information = UserInformation.new
    @user_information.user_id = session[:user]
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_information }
    end
  end

  # GET /user_informations/1/edit
  def edit
    @user_information = UserInformation.find(params[:id])
  end

  # POST /user_informations
  # POST /user_informations.json
  def create
    @user_information = UserInformation.new(params[:user_information])
    @user_information.user_id = session[:user].id
    respond_to do |format|
      if @user_information.save
        format.html { redirect_to new_tour_path, notice: 'User information was successfully created.' }
        format.json { render json: @user_information, status: :created, location: @user_information }
      else
        format.html { render action: "new" }
        format.json { render json: @user_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_informations/1
  # PUT /user_informations/1.json
  def update
    @user_information = UserInformation.find(params[:id])

    respond_to do |format|
      if @user_information.update_attributes(params[:user_information])
        format.html { redirect_to @user_information, notice: 'User information was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_informations/1
  # DELETE /user_informations/1.json
  def destroy
    @user_information = UserInformation.find(params[:id])
    @user_information.destroy

    respond_to do |format|
      format.html { redirect_to user_informations_url }
      format.json { head :no_content }
    end
  end
end
