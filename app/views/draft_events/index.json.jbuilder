json.array!(@draft_events) do |draft_event|
  json.extract! draft_event, :id, :destination_id, :due_date, :event_id
  json.url draft_event_url(draft_event, format: :json)
end
