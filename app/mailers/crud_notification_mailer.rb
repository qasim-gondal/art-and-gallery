class CrudNotificationMailer < ApplicationMailer
  def welcome
    
  def create_notification(object)
    @object=object
    @object_count=object.class.count

    mail to: 'user@example.com',subject: "A new entery for #{object.class} has been created"
   
  end

  def update_notification
    
  end

  def delete_notification
   
  end
end
