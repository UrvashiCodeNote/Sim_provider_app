class ContactBook < ApplicationRecord
    belongs_to :customer, class_name:"Customer"
    belongs_to :serviceprovider,class_name:"ServiceProvider",foreign_key:"serviceprovider_id"

    enum :status, %i( pending  activated inactivated deactivated )


    validates :contact_number,   :presence => {:message => 'hello world, bad operation!'},
    :numericality => true,
    :length => { :minimum => 10, :maximum => 15 }
end
