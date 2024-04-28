defmodule ExPlain.Reader.ModuleUnitTest do
  use ExUnit.Case
  alias ExPlain.Reader.ModuleUnit

  test "create a module unit struct" do
    assert %ModuleUnit{name: "MyModule"} = ModuleUnit.new("MyModule")
  end
end
