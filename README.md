# Login with google in a rails app with a gem login\_with\_google

Set yours environment variables

	export G_CLIENT_ID='xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.apps.googleusercontent.com'
	export G_CLIENT_SECRET='xxxxxxxxxxxxxxxxxxxxxx-G'
	export G_REDIRECT_URI='http://localhost:3000/callback'

Run migrations

	rake db:migrate

Start app

	rails s

## Screen Shots

Root page

![Root page](https://live.staticflickr.com/65535/50497650803_5a5575199e_o_d.png)

Login

![Login](https://live.staticflickr.com/65535/50498364316_fc033c9589_o_d.png)

See data user logged

![](https://live.staticflickr.com/65535/50497651763_b5156e4488_o_d.png)
