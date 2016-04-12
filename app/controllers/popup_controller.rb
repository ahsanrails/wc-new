class PopupController < ApplicationController
  def signup
    respond_to do |format|
      format.js
    end
  end

  def login
    respond_to do |format|
      format.js
    end
  end

  def forget_password

  end

  def change_password

  end

  def edit_profile

  end
end