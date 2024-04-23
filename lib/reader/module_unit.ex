defmodule ExPlain.Reader.ModuleUnit do
  @doc """
  Struct for module unit
  """
  @type t() :: %__MODULE__{}
  defstruct [:name, :public_functions, :private_functions]

  def new(name, public_functions \\ [], private_functions \\ []) do
    %__MODULE__{
      name: name,
      public_functions: public_functions,
      private_functions: private_functions
    }
  end
end
