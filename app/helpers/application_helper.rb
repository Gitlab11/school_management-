module ApplicationHelper
  def main_menu(controllers)
    render partial: "layouts/main_menu", locals: {itens: controllers}
  end
end
