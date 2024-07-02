defmodule ExTwilio.Recording do
  @moduledoc """
  Represents a Recording resource in the Twilio API.

  - [Twilio docs](https://www.twilio.com/docs/voice/api/recording)
  """

  defstruct sid: nil,
            date_created: nil,
            date_updated: nil,
            account_sid: nil,
            call_sid: nil,
            duration: nil,
            api_version: nil,
            uri: nil

  use ExTwilio.Resource, import: [:stream, :all, :find, :destroy, :update]

  def parents, do: [:account, :call, :recording]
end
