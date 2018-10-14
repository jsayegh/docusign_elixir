# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.AccountSettingsInformation do
  @moduledoc """
  Contains account settings information.
  """

  @derive [Poison.Encoder]
  defstruct [
    :accountSettings
  ]

  @type t :: %__MODULE__{
    :accountSettings => [NameValue]
  }
end

defimpl Poison.Decoder, for: DocuSign.Model.AccountSettingsInformation do
  import DocuSign.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:accountSettings, :list, DocuSign.Model.NameValue, options)
  end
end