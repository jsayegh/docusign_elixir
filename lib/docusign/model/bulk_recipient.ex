# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.BulkRecipient do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :accessCode,
    :email,
    :errorDetails,
    :identification,
    :name,
    :note,
    :phoneNumber,
    :recipientSignatureProviderInfo,
    :rowNumber,
    :tabLabels
  ]

  @type t :: %__MODULE__{
    :accessCode => String.t,
    :email => String.t,
    :errorDetails => [ErrorDetails],
    :identification => String.t,
    :name => String.t,
    :note => String.t,
    :phoneNumber => String.t,
    :recipientSignatureProviderInfo => [BulkRecipientSignatureProvider],
    :rowNumber => String.t,
    :tabLabels => [BulkRecipientTabLabel]
  }
end

defimpl Poison.Decoder, for: DocuSign.Model.BulkRecipient do
  import DocuSign.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:errorDetails, :list, DocuSign.Model.ErrorDetails, options)
    |> deserialize(:recipientSignatureProviderInfo, :list, DocuSign.Model.BulkRecipientSignatureProvider, options)
    |> deserialize(:tabLabels, :list, DocuSign.Model.BulkRecipientTabLabel, options)
  end
end