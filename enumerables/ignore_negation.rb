
# is there a way to avoid negation here

users = %w(A B C)

users.select { |user| !user.admin? }
# is there a way to avoid negation? yes use `Reject`
users.reject { |user| !user.admin? }

