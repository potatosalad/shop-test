class KrakensController < ApplicationController
  # GET /krakens
  # GET /krakens.xml
  def index
    @krakens = Kraken.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @krakens }
    end
  end

  # GET /krakens/1
  # GET /krakens/1.xml
  def show
    @kraken = Kraken.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @kraken }
    end
  end

  # GET /krakens/new
  # GET /krakens/new.xml
  def new
    @kraken = Kraken.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @kraken }
    end
  end

  # GET /krakens/1/edit
  def edit
    @kraken = Kraken.find(params[:id])
  end

  # POST /krakens
  # POST /krakens.xml
  def create
    @kraken = Kraken.new(params[:kraken])

    respond_to do |format|
      if @kraken.save
        format.html { redirect_to(@kraken, :notice => 'Kraken was successfully created.') }
        format.xml  { render :xml => @kraken, :status => :created, :location => @kraken }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @kraken.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /krakens/1
  # PUT /krakens/1.xml
  def update
    @kraken = Kraken.find(params[:id])

    respond_to do |format|
      if @kraken.update_attributes(params[:kraken])
        format.html { redirect_to(@kraken, :notice => 'Kraken was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @kraken.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /krakens/1
  # DELETE /krakens/1.xml
  def destroy
    @kraken = Kraken.find(params[:id])
    @kraken.destroy

    respond_to do |format|
      format.html { redirect_to(krakens_url) }
      format.xml  { head :ok }
    end
  end
end
