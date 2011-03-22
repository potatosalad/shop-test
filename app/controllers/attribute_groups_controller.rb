class AttributeGroupsController < ApplicationController
  # GET /attribute_groups
  # GET /attribute_groups.xml
  def index
    @attribute_groups = AttributeGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @attribute_groups }
    end
  end

  # GET /attribute_groups/1
  # GET /attribute_groups/1.xml
  def show
    @attribute_group = AttributeGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @attribute_group }
    end
  end

  # GET /attribute_groups/new
  # GET /attribute_groups/new.xml
  def new
    @attribute_group = AttributeGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @attribute_group }
    end
  end

  # GET /attribute_groups/1/edit
  def edit
    @attribute_group = AttributeGroup.find(params[:id])
  end

  # POST /attribute_groups
  # POST /attribute_groups.xml
  def create
    @attribute_group = AttributeGroup.new(params[:attribute_group])

    respond_to do |format|
      if @attribute_group.save
        format.html { redirect_to(@attribute_group, :notice => 'Attribute group was successfully created.') }
        format.xml  { render :xml => @attribute_group, :status => :created, :location => @attribute_group }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @attribute_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /attribute_groups/1
  # PUT /attribute_groups/1.xml
  def update
    @attribute_group = AttributeGroup.find(params[:id])

    respond_to do |format|
      if @attribute_group.update_attributes(params[:attribute_group])
        format.html { redirect_to(@attribute_group, :notice => 'Attribute group was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @attribute_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /attribute_groups/1
  # DELETE /attribute_groups/1.xml
  def destroy
    @attribute_group = AttributeGroup.find(params[:id])
    @attribute_group.destroy

    respond_to do |format|
      format.html { redirect_to(attribute_groups_url) }
      format.xml  { head :ok }
    end
  end
end
