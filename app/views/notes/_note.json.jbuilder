json.extract! note, :id, :body, :noteable_type, :noteable_id, :created_at, :updated_at
json.url note_url(note, format: :json)
