# frozen_string_literal: true

class DirectionsSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :steps_count,
             :finished_steps_count, :percents_result, :updated_at, :slug

  delegate :percents_result, to: :object
end
