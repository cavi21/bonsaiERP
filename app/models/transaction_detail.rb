# encoding: utf-8
# author: Boris Barroso
# email: boriscyber@gmail.com
class TransactionDetail < ActiveRecord::Base
  acts_as_org

  belongs_to :transaction
  belongs_to :item

  # scopes
  default_scope where(:organisation_id => OrganisationSession.organisation_id )
end