# frozen_string_literal: true

module GraphqlDevise
  module AdditionalModelMethods
    extend ActiveSupport::Concern

    class_methods do
      def reconfirmable
        devise_modules.include?(:confirmable) && column_names.include?('unconfirmed_email')
      end
    end

    def update_with_email(attributes = {})
      GraphqlDevise::Model::WithEmailUpdater.new(self, attributes).call
    end
  end
end
