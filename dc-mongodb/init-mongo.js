db.createUser(
	{
		user: "admin",
		password: "abcd1234",
		roles: [
			{
				role: "readWrite",
				db: "rototype"
			}
		]
	
	}
)
