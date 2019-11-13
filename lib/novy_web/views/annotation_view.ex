defmodule NovyWeb.AnnotationView do
  use NovyWeb, :view

  def render("annotation.json", %{annotation: annotation}) do
    %{
      id: annotation.id,
      body: annotation.body,
      at: annotation.at,
      user: render_one(annotation.user, NovyWeb.UserView, "user.json")
    }
  end
end
