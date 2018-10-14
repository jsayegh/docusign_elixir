# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.BillingPlanPreview do
  @moduledoc """
  Contains information about a preview billing plan.
  """

  @derive [Poison.Encoder]
  defstruct [
    :currencyCode,
    :invoice,
    :isProrated,
    :subtotalAmount,
    :taxAmount,
    :totalAmount
  ]

  @type t :: %__MODULE__{
    :currencyCode => String.t,
    :invoice => Invoices,
    :isProrated => String.t,
    :subtotalAmount => String.t,
    :taxAmount => String.t,
    :totalAmount => String.t
  }
end

defimpl Poison.Decoder, for: DocuSign.Model.BillingPlanPreview do
  import DocuSign.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:invoice, :struct, DocuSign.Model.Invoices, options)
  end
end