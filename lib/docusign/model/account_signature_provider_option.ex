# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.AccountSignatureProviderOption do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :signatureProviderOptionDisplayName,
    :signatureProviderOptionId,
    :signatureProviderOptionName
  ]

  @type t :: %__MODULE__{
    :signatureProviderOptionDisplayName => String.t,
    :signatureProviderOptionId => String.t,
    :signatureProviderOptionName => String.t
  }
end

defimpl Poison.Decoder, for: DocuSign.Model.AccountSignatureProviderOption do
  def decode(value, _options) do
    value
  end
end