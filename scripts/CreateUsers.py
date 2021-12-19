
from faker import Faker
from datetime import date
import pyodbc


def main():
	fake = Faker()

	Pass = "1234"
	

	for i in range(0,6001):
		today = date.today()
		birthDate = fake.date_of_birth(minimum_age=16, maximum_age=60)

		age = (today.year - birthDate.year - ((today.month, today.day) < (birthDate.month, birthDate.day)))

		# password=getpass.getpass("Enter Password:"),
		connection = pyodbc.connect("Driver={SQL Server Native Client 11.0};"
                      "Server=MINADESKTOP\SQLEXPRESS;"
                      "Database=project;"
                      "Trusted_Connection=yes;")
		cur = connection.cursor()
		data = (
			fake.profile(fields=['username'])['username'][:10],
			Pass,
			fake.free_email(),
			age,
			birthDate,
			0,
			0
			)
		cur.execute(
			"INSERT INTO users(userName,pass,Email,age,DOB,isAdmin,UserBlocked) VALUES( ?,?,?,?,?,?,? )" 
			, data 
			)
		# Confirm
		connection.commit()
		print("Done! Number:" + str(i))

if __name__ == '__main__':
	main()