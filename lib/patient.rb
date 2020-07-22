class Patient
  
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(date, doctor)
    appt = Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointment.all.map do |appt|
      appt.patient
    end
  end
    
    
  
end

