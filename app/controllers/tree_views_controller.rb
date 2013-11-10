class TreeViewsController < ApplicationController
  # GET /tree_views
  # GET /tree_views.json
  def index
    @tree_views = TreeView.all


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tree_views }
    end
  end

  # GET /tree_views/1
  # GET /tree_views/1.json
  def show
    @tree_view = TreeView.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tree_view }
    end
  end

  # GET /tree_views/new
  # GET /tree_views/new.json
  def new
    @tree_view = TreeView.new
    @tree_view.parent_id = params[:prev_node]
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tree_view }
    end
  end

  # GET /tree_views/1/edit
  def edit
    @tree_view = TreeView.find(params[:id])
  end

  # POST /tree_views
  # POST /tree_views.json
  def create
    @tree_view = TreeView.new(params[:tree_view])
    puts('helllpkpokpoj=---------------------------------------------------------------------------------------')
    puts(params[:prev_node])
    respond_to do |format|
      if @tree_view.save
        format.html { redirect_to @tree_view, notice: 'Tree view was successfully created.' }
        format.json { render json: @tree_view, status: :created, location: @tree_view }
      else
        format.html { render action: "new" }
        format.json { render json: @tree_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tree_views/1
  # PUT /tree_views/1.json
  def update
    @tree_view = TreeView.find(params[:id])

    respond_to do |format|
      if @tree_view.update_attributes(params[:tree_view])
        format.html { redirect_to @tree_view, notice: 'Tree view was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tree_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tree_views/1
  # DELETE /tree_views/1.json
  def destroy
    @tree_view = TreeView.find(params[:id])
    @tree_view.destroy

    respond_to do |format|
      format.html { redirect_to tree_views_url }
      format.json { head :no_content }
    end
  end
end
