#Created (Andrew Fox, 11/28/2016): Moved these methods into this module to keep controller code cleaner.
module Helpers
  def contact_params
    @contact.name = params[:contact][:name]
    @contact.email = params[:contact][:email]
    @contact.phone = params[:contact][:phone]
    @contact.address = params[:contact][:address]
  end

  def event_params
    e = @contact.event
    e.email_list = params[:contact][:event][:email_list]
    e.teams = params[:contact][:event][:teams]
    e.family = params[:contact][:event][:family]
    e.international = params[:contact][:event][:international]
    e.well = params[:contact][:event][:well]
    e.mission = params[:contact][:event][:mission]
    e.leadership = params[:contact][:event][:leadership]
    e.community = params[:contact][:event][:community]
    e.baptisms= params[:contact][:event][:baptisms]
    e.other = params[:contact][:event][:other]
    e.journey = params[:contact][:event][:journey]
  end

  def personality_params
    p = @contact.personality
    p.gender = params[:contact][:personality][:gender]
    p.greek = params[:contact][:personality][:greek]
    p.year = params[:contact][:personality][:year]
    p.international = params[:contact][:personality][:international]
    p.member = params[:contact][:personality][:member]
    p.groups = params[:contact][:personality][:groups]
    p.source = params[:contact][:personality][:source]
  end

  def prayer_params
    p = @contact.prayer
    p.prayer = params[:contact][:prayer][:prayer]
    p.comments = params[:contact][:prayer][:comments]
  end

  def service_params
    s = @contact.service
    s.refreshments = params[:contact][:service][:refreshments]
    s.sound = params[:contact][:service][:sound]
    s.roadies = params[:contact][:service][:roadies]
    s.lights = params[:contact][:service][:lights]
    s.website = params[:contact][:service][:website]
    s.service_events = params[:contact][:service][:service_events]
    s.usher = params[:contact][:service][:usher]
    s.kids = params[:contact][:service][:kids]
    s.slides = params[:contact][:service][:slides]
    s.service_slices = params[:contact][:service][:service_slices]
    s.music = params[:contact][:service][:music]
    s.other = params[:contact][:service][:other]
  end
end