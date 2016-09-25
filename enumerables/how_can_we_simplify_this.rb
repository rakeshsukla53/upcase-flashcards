# How can we simplify this?


def all_are_admins?(users)
  all_admins = true

  users.each do |user|
    all_admins = all_admins && user.admin?
  end

  all_admins
end

# either you can use inject
users.inject(true) { |acc, user| acc && user.admin? }

# the best way will be to use all? or any?

def all_are_admins?(users)
  users.all?(&:admin?)
end

# You might also be interested all?'s cousin, any?.
