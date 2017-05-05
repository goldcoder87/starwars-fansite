class Api::FilmResource < JSONAPI::Resource
  attributes :title, :episode_id, :director, :characters
end
