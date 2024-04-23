defmodule ExPlain.D2.Backbone do
  alias ExPlain.Reader.ModuleUnit

  @spec create_diagram(ModuleUnit.t()) :: String.t()
  def create_diagram(%ModuleUnit{
        name: module_name,
        public_functions: public_functions,
        private_functions: private_functions
      }) do
    classes = get_backbone_class()
    header = get_header_title(module_name)
    public_functions_boxes = get_public_functions_boxes(public_functions)
    private_functions_boxes = get_private_functions_boxes(private_functions)

    classes <> header <> public_functions_boxes <> private_functions_boxes
  end

  defp get_public_functions_boxes(public_functions) do
    for fun <- public_functions, into: "", do: "#{fun}.class: public \n"
  end

  defp get_private_functions_boxes(private_functions) do
    for fun <- private_functions, into: "", do: "#{fun}.class: private\n"
  end

  defp get_header_title(module_name) do
    """
    explanation: |md
      # #{module_name}
    |
    grid-columns: 3
    """
  end

  defp get_backbone_class do
    """
      classes: {
        public: {
          style: {
            stroke-width: 0
            fill: "#85b4ff"
            shadow: true
            border-radius: 5
          }
        }

        private: {
          style: {
            fill: "#fff585"
            stroke: "#F69E03"
          }
        }
      }
    """
  end
end
