class Search < ApplicationRecord

    def search_job
      jobs = Joboffer.all

      jobs= jobs.where(['job_title LIKE ?',"%#{keywords}%"]) if keywords.present?
      jobs= jobs.where(["minimum_japaneseskill LIKE ?",minimum_japanese]) if minimum_japanese.present?
      jobs= jobs.where(["salary >= ?", min_salary]) if min_salary.present?
      jobs= jobs.where(["salary <= ?",max_salary]) if max_salary.present?

      return jobs

    end

end
