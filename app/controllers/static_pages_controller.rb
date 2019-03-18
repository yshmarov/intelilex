class StaticPagesController < ApplicationController
  def cancel
  end

  def completed
  end

  def welcome
  end

  def faq
  end

  def for_press
    @links = Link.all
  end
end
