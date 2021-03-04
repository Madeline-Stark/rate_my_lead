User
has many created_teachers
has many reviews
has many reviewed_teachers, through reviews


Review
belogns to teacher
nelongs to user

user id
teacher id


Teacher
belongs to user/creator
has many reviews
has many critics through reviews

user id

add css