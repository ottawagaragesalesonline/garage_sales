

class SalesInfo7sController < ApplicationController
  # GET /sales_info7s
  # GET /sales_info7s.xml
  def index
  # render(:template => "shared/welcome_top")
    @sales_info7s = SalesInfo7.all
    @sales_info7s = SalesInfo7.paginate :page => params[:page]
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sales_info7s }
    end
  end

  # GET /sales_info7s/1
  # GET /sales_info7s/1.xml
  def show
   @sales_info7 = SalesInfo7.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sales_info7 }
    end
  end

  # GET /sales_info7s/new
  # GET /sales_info7s/new.xml
  def new
    @sales_info7 = SalesInfo7.new
    @sales_info7.sales_location = "Ottawa"
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sales_info7 }
    end
  end

  # GET /sales_info7s/1/edit
  def edit
    @sales_info7 = SalesInfo7.find(params[:id])
  end

  # POST /sales_info7s
  # POST /sales_info7s.xml
  def create
    @sales_info7 = SalesInfo7.new(params[:sales_info7])

    respond_to do |format|
      if @sales_info7.save
        format.html { redirect_to(@sales_info7, :notice => 'Sales info7 was successfully created.') }
        format.xml  { render :xml => @sales_info7, :status => :created, :location => @sales_info7 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sales_info7.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sales_info7s/1
  # PUT /sales_info7s/1.xml
  def update
    @sales_info7 = SalesInfo7.find(params[:id])

    respond_to do |format|
      if @sales_info7.update_attributes(params[:sales_info7])
        format.html { redirect_to(@sales_info7, :notice => 'Sales info7 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sales_info7.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sales_info7s/1
  # DELETE /sales_info7s/1.xml
  def destroy
    @sales_info7 = SalesInfo7.find(params[:id])
    @sales_info7.destroy

    respond_to do |format|
      format.html { redirect_to(sales_info7s_url) }
      format.xml  { head :ok }
    end
  end
end
