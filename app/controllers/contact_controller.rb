#Created (Adam Prater, 11/29/16): Created initial controller code.
#Updated (Andrew Fox, 11/27/16): Bug fixes, as well as added edit functionality.
#Updated (Cole Albers, 11/27/16): Added the find function with functionality.
#Updated (Andrew Fox, 11/28/16): Bug fixes, find function updates, edit function additional functionality, and destroy function.
#Updated (David Sinchok, 12/01/16): Bug fix on show so edit page doesn't crash.
#Updated (Sam Yinger, 12/01/16): Implemented filter method to return specific results.
#Updated (David Sinchokk, 12/01/16): Bug fix on show so edit page doesn't crash.
#Updated (Cole Albers, 12/1/16): Fixed redirects.
#Updated (Adam Prater, 12/01/2016): added pagination, del_prayer, del_comment
#Updated (David Sinchok, 12/01/2016): Created Show route
#Updated (Andrew Fox, 12/01/2016): Fixed back buttons by using javascript.
#Updated (Andrew Fox, 12/02/2016): Bug fix for redirect crash.
class ContactController < ApplicationController
  include Helpers

  #Devise authentication
  before_action :authenticate_user!

  #Created (Sam Yinger, 12/1/2016): Get route for collection
  def index
    @contacts = Contact.all
  end

  #Updated (Andrew Fox, 11/27/2016): Simplified code and added return_to for back functionality.
  #Created (Sam Yinger, 12/1/2016): Function returning new page to user.
  def new
    session[:return_to] ||= request.referer
    @contact = Contact.new
    @contact.event = Event.new
    @contact.personality = Personality.new
    @contact.prayer = Prayer.new
    @contact.service = Service.new
  end

  #Updated (Andrew Fox, 11/27/2016): Simplified code and added return_to for back functionality.
  #Created (Sam Yinger, 12/1/2016): Function returning create page to user.
  def create
    if session[:return_to] == nil
      session[:return_to] = '/'
    end
    @contact = Contact.new
    @contact.event = Event.new
    @contact.personality = Personality.new
    @contact.prayer = Prayer.new
    @contact.service = Service.new
    contact_params
    event_params
    personality_params
    prayer_params
    service_params
    if @contact.save
      redirect_to session.delete(:return_to)
    else
      render :action => 'new'
    end
  end

  #Created (Andrew Fox, 11/27/2016): Function returning edit page to user.
  def edit
    session[:return_to] ||= request.referer
    @contact = Contact.find(params[:id])
  end

  #Updated (Andrew Fox, 11/27/2016): Simplified code and added return_to for back functionality.
  #Created (Adam Prater, 12/1/2016): Function returning update page to user.
  def update
    if session[:return_to] == nil
      session[:return_to] = '/'
    end
    @contact = Contact.find(params[:id])
    contact_params
    event_params
    personality_params
    prayer_params
    service_params
    if @contact.save
      redirect_to session.delete(:return_to)
    else
      #Render same page, user must have cleared name.
      render :action => 'edit'
    end
  end

  #Created (Andrew Fox, 11/28/2016): AJAX function to delete contact and return js code to update screen.
  def destroy
    respond_to do |format|
      @contact = Contact.find(params[:id])
      @contact.destroy
      format.js {}
    end
  end

  #Created (Cole Albers, 11/27/16): Implemented and Created find method.
  #Updated (Andrew Fox, 11/28/2016): Changed the SQL query to better fit our generic searches.
  def find
    @contacts = Contact.where('name LIKE ?', "%#{params[:name]}%").page(params[:page]).per(10)
  end

  #Created (Sam Yinger, 12/1/2016): Made the query return specific items instead of all of them
  # Filter pulls the contacts from the table that matches the selected filter category and returns them
  #Updated (Sam Yinger, 12/1/2016): Fixed the queries for the non-empty strings
  def filter
    case
      when params[:filter] == '1'
        @contacts = Contact.joins(:event).where(:events => {:teams => true}).order('created_at ASC')
      when params[:filter] == '2'
        @contacts = Contact.joins(:event).where(:events => {:family => true}).order('created_at ASC')
      when params[:filter] == '3'
        @contacts = Contact.joins(:event).where(:events => {:international => true}).order('created_at ASC')
      when params[:filter] == '4'
        @contacts = Contact.joins(:event).where(:events => {:well => true}).order('created_at ASC')
      when params[:filter] == '5'
        @contacts = Contact.joins(:event).where(:events => {:mission => true}).order('created_at ASC')
      when params[:filter] == '6'
        @contacts = Contact.joins(:event).where(:events => {:leadership => true}).order('created_at ASC')
      when params[:filter] == '7'
        @contacts = Contact.joins(:event).where(:events => {:community => true}).order('created_at ASC')
      when params[:filter] == '8'
        @contacts = Contact.joins(:event).where(:events => {:baptisms => true}).order('created_at ASC')
      when params[:filter] == '9'
        @contacts = Contact.joins(:event).where(:events => {:journey => true}).order('created_at ASC')
      when params[:filter] == '10'
        @contacts = Contact.joins(:event).where.not(:events => {:other => ''}).order('created_at ASC')
      when params[:filter] == '11'
        @contacts = Contact.joins(:event).where(:events => {:email_list => true}).order('created_at ASC')
      when params[:filter] == '12'
        @contacts = Contact.joins(:service).where(:services => {:refreshments => true}).order('created_at ASC')
      when params[:filter] == '13'
        @contacts = Contact.joins(:service).where(:services => {:sound => true}).order('created_at ASC')
      when params[:filter] == '14'
        @contacts = Contact.joins(:service).where(:services => {:roadies => true}).order('created_at ASC')
      when params[:filter] == '15'
        @contacts = Contact.joins(:service).where(:services => {:lights => true}).order('created_at ASC')
      when params[:filter] == '16'
        @contacts = Contact.joins(:service).where(:services => {:website => true}).order('created_at ASC')
      when params[:filter] == '17'
        @contacts = Contact.joins(:service).where(:services => {:service_events => true}).order('created_at ASC')
      when params[:filter] == '18'
        @contacts = Contact.joins(:service).where(:services => {:usher => true}).order('created_at ASC')
      when params[:filter] == '19'
        @contacts = Contact.joins(:service).where(:services => {:kids => true}).order('created_at ASC')
      when params[:filter] == '20'
        @contacts = Contact.joins(:service).where(:services => {:slides => true}).order('created_at ASC')
      when params[:filter] == '21'
        @contacts = Contact.joins(:service).where(:services => {:service_slices => true}).order('created_at ASC')
      when params[:filter] == '22'
        @contacts = Contact.joins(:event).where.not(:events => {:music => ''}).order('created_at ASC')
      when params[:filter] == '23'
        @contacts = Contact.joins(:event).where.not(:events => {:other => ''}).order('created_at ASC')
      else
        @contacts = Contact.all.order('created_at ASC')
    end
  end

  # Created (Adam Prater 12/1/2016): deletes prayer
  def del_prayer
    respond_to do |format|
      @contact = Contact.find(params[:id])
      @contact.prayer.prayer = ''
      @contact.save
      format.js {render :action => 'show'}
    end
  end

  # Created (Adam Prater 12/1/2016): deletes comment
  def del_comment
    respond_to do |format|
      @contact = Contact.find(params[:id])
      @contact.prayer.comments = ''
      @contact.save
      format.js {render :action => 'show'}
    end
  end

  #Created (David Sinchok, 12/1/16): Created and implemented show method.
  def show
    redirect_to edit_contact_path(Contact.find(params[:id]))
  end
end
