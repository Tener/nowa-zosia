class Admin::SponsorsController < ApplicationController
  before_filter :authorize
  
  # GET /sponsors
  # GET /sponsors.xml
  def index
    @sponsors = Sponsor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sponsors }
    end
  end

  # GET /sponsors/1
  # GET /sponsors/1.xml
  def show
    @sponsor = Sponsor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sponsor }
    end
  end

  # GET /sponsors/new
  # GET /sponsors/new.xml
  def new
    @sponsor = Sponsor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sponsor }
    end
  end

  # GET /sponsors/1/edit
  def edit
    @sponsor = Sponsor.find(params[:id])
  end

  # POST /sponsors
  # POST /sponsors.xml
  def create
    @sponsor = Sponsor.new(params[:sponsor])

    respond_to do |format|
      if @sponsor.save
        format.html { redirect_to([:admin,@sponsor], :notice => 'Sponsor was successfully created.') }
        format.xml  { render :xml => @sponsor, :status => :created, :location => @sponsor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sponsor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sponsors/1
  # PUT /sponsors/1.xml
  def update
    @sponsor = Sponsor.find(params[:id])

    respond_to do |format|
      if @sponsor.update_attributes(params[:sponsor])
        format.html { redirect_to([:admin,@sponsor], :notice => 'Sponsor was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sponsor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sponsors/1
  # DELETE /sponsors/1.xml
  def destroy
    @sponsor = Sponsor.find(params[:id])
    @sponsor.destroy

    respond_to do |format|
      format.html { redirect_to(admin_sponsors_url) }
      format.xml  { head :ok }
    end
  end
end
