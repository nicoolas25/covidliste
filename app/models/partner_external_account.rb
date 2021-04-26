class PartnerExternalAccount < ApplicationRecord
  belongs_to :partner

  encrypts :info, type: :json
  encrypts :sub
  blind_index :sub

  validates :sub, presence: true, uniqueness: {scope: :provider_id, message: " déjà lié à un espace professionnel Covidliste"}
  validates :provider_id, presence: true, inclusion: {in: PartnerExternalAccountProvider::Providers::ALL.keys.map(&:to_s)}
  validates :info, presence: true

  def service_name
    if info.present?
      info["service_name"].to_s
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def first_name
    if info.present?
      info["first_name"].to_s
    end
  end

  def last_name
    if info.present?
      info["last_name"].to_s
    end
  end

  def identifier
    if info.present?
      info["identifier"].to_s
    end
  end
end
