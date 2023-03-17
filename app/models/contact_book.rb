class ContactBook < ApplicationRecord
    belongs_to :customer, class_name:"Customer"
    belongs_to :service_provider,class_name:"ServiceProvider",
    foreign_key:"service_provider_id"

    enum :status, %i( pending  activated inactivated deactivated )


    validates :contact_number,   :presence => {:message => ' bad operation!'},
    :numericality => true,
    :length => { :minimum => 10, :maximum => 15 }
end
