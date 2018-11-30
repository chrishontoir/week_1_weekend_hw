def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop,amount)
  shop[:admin][:total_cash] += amount
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop,amount)
  shop[:admin][:pets_sold] += amount
end

def stock_count(shop)
  return shop[:pets].length
end

def pets_by_breed(shop,breed)
  new = []
  for pet in shop[:pets]
    if pet[:breed] == breed
      new.push(breed)
    end
  end
  return new
end

def find_pet_by_name(shop,name)
  for pet in shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(shop,name)
  for pet in shop[:pets]
    if pet[:name] == name
      shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(shop,pet)
  shop[:pets].push(pet)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer,amount)
  return customer[:cash] -= amount
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer,pet)
  customer[:pets].push(pet)
end

def customer_can_afford_pet(customer,pet)
  if customer[:cash] >= pet[:price]
    return true
  end
  return false
end

def sell_pet_to_customer(shop,pet,customer)

  if pet == nil || customer[:cash] < pet[:price]
    customer[:pets].count
    shop[:admin][:pets_sold] += 0
    customer[:cash] -= 0
    shop[:admin][:total_cash] += 0
  else
    for animal in shop[:pets]
      if animal[:name] == pet[:name]
        customer[:pets].push(pet)
        customer[:pets].count
        shop[:admin][:pets_sold] += 1
        customer[:cash] -= pet[:price]
        shop[:admin][:total_cash] += pet[:price]
      end
    end
  end










    # customer[:pets].push(pet)
    # customer[:pets].count
    # shop[:admin][:pets_sold] += 1
    # customer[:cash] -= pet[:price]
    # shop[:admin][:total_cash] += pet[:price]


    # customer[:pets].count
    # shop[:admin][:pets_sold] += 0
    # customer[:cash] -= 0
    # shop[:admin][:total_cash] += 0


  end
