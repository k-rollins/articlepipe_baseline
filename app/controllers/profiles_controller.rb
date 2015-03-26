class ProfilesController < ApplicationController
#  before_action :set_profile, only: [:show, :edit, :update]
  load_and_authorize_resource
#  before_action :redirect_if_not_logged_in
#  before_action :redirect_if_wrong_credentials, only: [:edit, :update]
  # GET /profiles
  # GET /profiles.json
  def index
   @profiles = Profile.all
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
   
  end


  # GET /profiles/1/edit
  def edit
 #   redirect_to(:controller => 'pages', :action => 'home') unless edit_credentials
    
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update

    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        #format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        #format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end


  private

    def redirect_if_not_logged_in
        redirect_to new_user_session_path unless current_user
    end

    def redirect_if_wrong_credentials
        redirect_to(:controller => 'pages', :action => 'home') unless edit_credentials
    end
    # Use callbacks to share common setup or constraints between actions.
    def edit_credentials
       return false unless (current_user.access_level.user_level >= 100) && (current_user.id == @profile.user_id)
       true
    end

    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit( :display_name, :tagline, :bio, :twitter, :personal_url)
    end
end
