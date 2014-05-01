module CurrentCommitRails
  class Railtie < Rails::Railtie
    config.after_initialize do
      CurrentCommitRails::CommitBuilder.build(Rails.root.to_s)
    end
  end
end
