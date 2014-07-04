class CandidatesController < ApplicationController
  def index
    @job        = Job.get_job
    @candidates = @job.candidates
  end

  # Simulate modle calls
  class Job
    def self.get_job
      self.new
    end

    def other_jobs
    end

    def candidates
      Candidates.all
    end

    def title
      "XXXX " * rand(3..6)
    end

    def id
      1
    end

    def status
      "Data added"
    end

    def user_position
      "Hiring Manager"
    end

    def other_jobs
      Array.new 10, self.class.new
    end
  end

  class Candidates
    def self.all
      Array.new 5, self.new
    end

    def job
      Job.get_job
    end
  end
end
