require 'require_all'

require_rel 'transfers'

class TransfersFactory
  attr_reader :transfer_product

  HEADINGS = %w(Player Age Left Joined Position Fee)

  def initialize(sport)
    @transfer_product = Module.const_get "#{sport.capitalize}Transfer"
  end

  def top(number)
    table = Terminal::Table.new title:    transfer_product.name,
                                headings: HEADINGS,
                                rows:     rows(number)

    puts table
  end

  private

  def rows(number)
    Array.new(number).map { transfer_product.new.generate.values }
  end
end