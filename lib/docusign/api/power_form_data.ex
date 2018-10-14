# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.PowerFormData do
  @moduledoc """
  API calls for all endpoints tagged `PowerFormData`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder

  @doc """
  Returns the form data associated with the usage of a PowerForm.
  

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - power_form_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :data_layout (String.t): 
    - :from_date (String.t): Start of the search date range. Only returns templates created on or after this date/time. If no value is specified, there is no limit on the earliest date created.
    - :to_date (String.t): End of the search date range. Only returns templates created up to this date/time. If no value is provided, this defaults to the current date.

  ## Returns

  {:ok, %DocuSign.Model.PowerFormsFormDataResponse{}} on success
  {:error, info} on failure
  """
  @spec power_forms_get_power_form_form_data(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.PowerFormsFormDataResponse.t} | {:error, Tesla.Env.t}
  def power_forms_get_power_form_form_data(connection, account_id, power_form_id, opts \\ []) do
    optional_params = %{
      data_layout: :query,
      from_date: :query,
      to_date: :query
    }
    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/powerforms/#{power_form_id}/form_data")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.PowerFormsFormDataResponse{})
  end
end