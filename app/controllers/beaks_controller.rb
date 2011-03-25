class BeaksController < ApplicationController
  # GET /beaks
  # GET /beaks.xml
  def index
    @beaks = Beak.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @beaks }
    end
  end

  # GET /beaks/1
  # GET /beaks/1.xml
  def show
    @beak = Beak.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @beak }
    end
  end

  # GET /beaks/new
  # GET /beaks/new.xml
  def new
    @beak = Beak.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @beak }
    end
  end

  # GET /beaks/1/edit
  def edit
    @beak = Beak.find(params[:id])
  end

  # POST /beaks
  # POST /beaks.xml
  def create
    @beak = Beak.new(params[:beak])

    respond_to do |format|
      if @beak.save
        format.html { redirect_to(@beak, :notice => 'Beak was successfully created.') }
        format.xml  { render :xml => @beak, :status => :created, :location => @beak }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @beak.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /beaks/1
  # PUT /beaks/1.xml
  def update
    @beak = Beak.find(params[:id])

    respond_to do |format|
      if @beak.update_attributes(params[:beak])
        format.html { redirect_to(@beak, :notice => 'Beak was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @beak.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /beaks/1
  # DELETE /beaks/1.xml
  def destroy
    @beak = Beak.find(params[:id])
    @beak.destroy

    respond_to do |format|
      format.html { redirect_to(beaks_url) }
      format.xml  { head :ok }
    end
  end
end
