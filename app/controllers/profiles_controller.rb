class ProfilesController < ApplicationController
  def show
    @user = User.find_by_profile_name(paramsp[:id])
    if @user
      render action: :show
    else
    render file: 'public/404', status: 404, format: [:html]
  end
  end
end
