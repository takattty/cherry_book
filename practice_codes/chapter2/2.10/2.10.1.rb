user = find_user('Alice') || find_user('Bob') || find_user('Carol')
#例

user.valid? && send_email_to(user)
#左辺が技であれば右辺のメール送信は実行されない。