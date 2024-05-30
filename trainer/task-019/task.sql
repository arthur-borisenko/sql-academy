select distinct status
from Payments
	join Goods on good = good_id
	join FamilyMembers on family_member = member_id
where good_name = "potato"