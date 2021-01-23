defmodule ExMonApiWeb.FallbackController do
  use ExMonApiWeb, :controller

  def call(conn, {:error, changeset}) do
    conn
    |> put_status(:bad_request)
    |> put_view(ExMonApiWeb.ErrorView)
    |> render("400.json", result: changeset)
  end
end
