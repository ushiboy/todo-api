class Api::TodosController < ApplicationController

  before_action :set_todo, only: [:show, :update, :destroy]

  # GET /api/todos
  def index
    @todos = Todo.all
    render json: {
      :todos => @todos
    }
  end

  # GET /api/todos/1
  def show
      render json: @todo
  end

  # POST /api/todos
  def create
      @todo = Todo.new(todo_params)

      if @todo.save
          render json: @todo, status: :created
      else
          render json: @todo.errors, status: :unprocessable_entity
      end
  end

  # PUT /api/todos/1
  def update
    if @todo.update(todo_params)
      render json: @todo
    else
      render json: @todo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/todos/1
  def destroy
    @todo.destroy
  end

  private

    def set_todo
        @todo = Todo.find(params[:id])
    end

    def todo_params
        params.permit(:title, :completed)
    end

end
