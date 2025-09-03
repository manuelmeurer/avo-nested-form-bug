class Avo::MessagesController < Avo::ResourcesController
  def new
    super
    @record.build_delivery
  end
end
