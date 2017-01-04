#Created (Cole Albers, 11/27/16): Controller for Static Pages.
class StaticPagesController < ApplicationController
  before_action :authenticate_user!, :except => [:home, :signed_out]
end
