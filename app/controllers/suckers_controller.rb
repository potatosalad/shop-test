class SuckersController < ApplicationController
  # GET /suckers
  # GET /suckers.xml
  def index
    @suckers = Sucker.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @suckers }
    end
  end

  # GET /suckers/1
  # GET /suckers/1.xml
  def show
    @sucker = Sucker.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sucker }
    end
  end

  # GET /suckers/new
  # GET /suckers/new.xml
  def new
    @sucker = Sucker.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sucker }
    end
  end

  # GET /suckers/1/edit
  def edit
    @sucker = Sucker.find(params[:id])
  end

  # POST /suckers
  # POST /suckers.xml
  def create
    @sucker = Sucker.new(params[:sucker])

    respond_to do |format|
      if @sucker.save
        format.html { redirect_to(@sucker, :notice => 'Sucker was successfully created.') }
        format.xml  { render :xml => @sucker, :status => :created, :location => @sucker }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sucker.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /suckers/1
  # PUT /suckers/1.xml
  def update
    @sucker = Sucker.find(params[:id])

    respond_to do |format|
      if @sucker.update_attributes(params[:sucker])
        format.html { redirect_to(@sucker, :notice => 'Sucker was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sucker.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /suckers/1
  # DELETE /suckers/1.xml
  def destroy
    @sucker = Sucker.find(params[:id])
    @sucker.destroy

    respond_to do |format|
      format.html { redirect_to(suckers_url) }
      format.xml  { head :ok }
    end
  end
end
