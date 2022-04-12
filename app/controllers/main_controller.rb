# frozen_string_literal: false

# Main Controller
class MainController < ApplicationController
  def index
    flash.now[:notice] = 'Logged in Successfully!'
    flash.now[:alert] = 'Invalid Email or Password'
  end
end
