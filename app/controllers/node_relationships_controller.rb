class NodeRelationshipsController < ApplicationController
  before_action :set_node_relationship, only: [:show, :update, :destroy]

  # GET /node_relationships
  def index
    @node_relationships = NodeRelationship.all

    render json: @node_relationships
  end

  # GET /node_relationships/1
  def show
    render json: @node_relationship
  end

  # POST /node_relationships
  def create
    @node_relationship = NodeRelationship.new(node_relationship_params)

    if @node_relationship.save
      render json: @node_relationship, status: :created, location: @node_relationship
    else
      render json: @node_relationship.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /node_relationships/1
  def update
    if @node_relationship.update(node_relationship_params)
      render json: @node_relationship
    else
      render json: @node_relationship.errors, status: :unprocessable_entity
    end
  end

  # DELETE /node_relationships/1
  def destroy
    @node_relationship.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_node_relationship
      @node_relationship = NodeRelationship.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def node_relationship_params
      params.fetch(:node_relationship, {})
    end
end
