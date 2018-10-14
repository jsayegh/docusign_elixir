# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.SignHere do
  @moduledoc """
  A tab that allows the recipient to sign a document. May be optional. 
  """

  @derive [Poison.Encoder]
  defstruct [
    :anchorCaseSensitive,
    :anchorHorizontalAlignment,
    :anchorIgnoreIfNotPresent,
    :anchorMatchWholeWord,
    :anchorString,
    :anchorUnits,
    :anchorXOffset,
    :anchorYOffset,
    :conditionalParentLabel,
    :conditionalParentValue,
    :customTabId,
    :documentId,
    :errorDetails,
    :mergeField,
    :name,
    :optional,
    :pageNumber,
    :recipientId,
    :scaleValue,
    :stampType,
    :stampTypeMetadata,
    :status,
    :tabId,
    :tabLabel,
    :tabOrder,
    :templateLocked,
    :templateRequired,
    :xPosition,
    :yPosition
  ]

  @type t :: %__MODULE__{
    :anchorCaseSensitive => String.t,
    :anchorHorizontalAlignment => String.t,
    :anchorIgnoreIfNotPresent => String.t,
    :anchorMatchWholeWord => String.t,
    :anchorString => String.t,
    :anchorUnits => String.t,
    :anchorXOffset => String.t,
    :anchorYOffset => String.t,
    :conditionalParentLabel => String.t,
    :conditionalParentValue => String.t,
    :customTabId => String.t,
    :documentId => String.t,
    :errorDetails => ErrorDetails,
    :mergeField => MergeField,
    :name => String.t,
    :optional => String.t,
    :pageNumber => String.t,
    :recipientId => String.t,
    :scaleValue => float(),
    :stampType => String.t,
    :stampTypeMetadata => PropertyMetadata,
    :status => String.t,
    :tabId => String.t,
    :tabLabel => String.t,
    :tabOrder => String.t,
    :templateLocked => String.t,
    :templateRequired => String.t,
    :xPosition => String.t,
    :yPosition => String.t
  }
end

defimpl Poison.Decoder, for: DocuSign.Model.SignHere do
  import DocuSign.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:errorDetails, :struct, DocuSign.Model.ErrorDetails, options)
    |> deserialize(:mergeField, :struct, DocuSign.Model.MergeField, options)
    |> deserialize(:stampTypeMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
  end
end