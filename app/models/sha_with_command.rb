class ShaWithCommand
  attr_reader :id
  attr_accessor :sha, :command_digest

  NotFoundError = Class.new StandardError

  def self.create(**attrs)
    new(**attrs).save
  end

  def self.find_by!(**attrs)
    find_by(**attrs) || raise(NotFoundError, "Could not find ShaWithCommand: #{attrs}")
  end

  def self.find_by(**attrs)
    Rails.cache.read(generate_id(**attrs))
  end

  def self.generate_id(**attrs)
    attrs.values_at(:sha, :command_digest).join '/'
  end

  def initialize(sha:, command_digest:)
    @id = self.class.generate_id sha: sha, command_digest: command_digest
  end

  def save
    Rails.cache.write id, self
  end
end
