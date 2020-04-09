class Mailer < ApplicationMailer
    default from: "mod5projecttest@gmail.com"

    def sample_email(admin)
        @admin = Admin.first
        mail(to: @admin.email, subject: 'Sample Email')
    end

    def gig_email(gig, admin)
      @admin = admin
      @gig = gig
      mail(to: @admin.email, subject: 'New Gig Request')
    end

    def lesson_email(lesson, admin)
      @admin = admin
      @lesson = lesson
      mail(to: @admin.email, subject: 'New Lesson Request')
    end

end
