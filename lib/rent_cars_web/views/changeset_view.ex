defmodule RentCarsWeb.ChangesetView do
  use RentCarsWeb, :view

  def render("error.json", %{changeset: changeset}) do
    %{errors: Ecto.Changeset.traverse_errors(changeset, &translate_error/1)}
  end
end

# %{errors: Ecto.Changeset.transverse_errors(changeset, &translate_error/1)}
