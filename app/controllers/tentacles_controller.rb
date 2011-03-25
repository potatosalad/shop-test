class TentaclesController < ApplicationController
  # GET /tentacles
  # GET /tentacles.xml
  def index
    @tentacles = Tentacle.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tentacles }
    end
  end

  # GET /tentacles/1
  # GET /tentacles/1.xml
  def show
    @tentacle = Tentacle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tentacle }
    end
  end

  # GET /tentacles/new
  # GET /tentacles/new.xml
  def new
    @tentacle = Tentacle.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tentacle }
    end
  end

  # GET /tentacles/1/edit
  def edit
    @tentacle = Tentacle.find(params[:id])
  end

  # POST /tentacles
  # POST /tentacles.xml
  def create
    @tentacle = Tentacle.new(params[:tentacle])

    respond_to do |format|
      if @tentacle.save
        format.html { redirect_to(@tentacle, :notice => 'Tentacle was successfully created.') }
        format.xml  { render :xml => @tentacle, :status => :created, :location => @tentacle }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tentacle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tentacles/1
  # PUT /tentacles/1.xml
  def update
    @tentacle = Tentacle.find(params[:id])

    respond_to do |format|
      if @tentacle.update_attributes(params[:tentacle])
        format.html { redirect_to(@tentacle, :notice => 'Tentacle was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tentacle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tentacles/1
  # DELETE /tentacles/1.xml
  def destroy
    @tentacle = Tentacle.find(params[:id])
    @tentacle.destroy

    respond_to do |format|
      format.html { redirect_to(tentacles_url) }
      format.xml  { head :ok }
    end
  end
end
