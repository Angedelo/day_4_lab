def get_name(person)
  return person[:name]
end

def fav_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat?(person, food)
  return person[:favourites][:snacks].include?(food)
end

def add_friend(person, friend)
  person[:friends].push(friend)
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
end

def total_money(people)
  total = 0
  for person in people
    total += person[:monies]
  end
  return total
end

def loan_money(lender, lendee, amount)
  lender[:monies] = lender[:monies]- (amount)
  lendee[:monies] += (amount)
end

def concatenate_food(people)
  all_food = []
  for person in people
    all_food.concat(person[:favourites][:snacks])
  end
  return all_food
end

def nae_pals(people)
  has_no_pals = []
  for person in people
    if person[:friends].length == 0
      has_no_pals.push(person[:name])
    end
  end
  return has_no_pals
end
