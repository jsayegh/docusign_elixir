# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.GroupBrands do
  @moduledoc """
  Brand management for groups
  """

  @derive [Poison.Encoder]
  defstruct [
    :brands,
    :recipientBrandIdDefault,
    :senderBrandIdDefault
  ]

  @type t :: %__MODULE__{
    :brands => [Brand],
    :recipientBrandIdDefault => String.t,
    :senderBrandIdDefault => String.t
  }
end

defimpl Poison.Decoder, for: DocuSign.Model.GroupBrands do
  import DocuSign.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:brands, :list, DocuSign.Model.Brand, options)
  end
end