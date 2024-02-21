defmodule RentCars.Categories do
  alias __MODULE__.Category
  alias RentCars.Repo

  def list_categories do
    # [%{description: "Category Description", id: "123123", name: "SPOT"}]
    Repo.all(Category)
  end
end
