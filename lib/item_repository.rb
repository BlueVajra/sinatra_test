class ItemRepository
  def initialize
    @items = []
  end

  def add(item_to_add)
    @items << item_to_add
  end

  def items
    @items
  end

  def delete(item_to_delete)
    @items.delete(item_to_delete)
  end

  def edit(old_name, new_name)
    @items.each_with_index do |item, index|
      if item == old_name
        @items[index] = new_name
      end
    end
  end
end