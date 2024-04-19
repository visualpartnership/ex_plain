defmodule ExPlainTest do
  use ExUnit.Case
  alias ExPlain.ModuleUnit

  test "create a module unit struct" do
    assert %ModuleUnit{name: "MyModule"} = ModuleUnit.new("MyModule")
  end
end
