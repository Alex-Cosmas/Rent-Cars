defmodule RentCars.Categories do
  alias __MODULE__.Category
  alias RentCars.Repo

  def list_categories do
    # [%{description: "Category Description", id: "123123", name: "SPOT"}]
    Repo.all(Category)
  end

  def create_category(attrs) do
    attrs
    |> Category.changeset()
    |> Repo.insert()
  end

  def get_category(id) do
    Repo.get(Category, id)
  end

  def update_category(category, attrs) do
    category
    |> Category.changeset(attrs)
    |> Repo.update()
  end

  def delete_category(category) do
    Repo.delete(category)
  end
end
