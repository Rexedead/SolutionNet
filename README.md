# SolutionNet (spacechem.net)

This is the source code for [SolutionNet](http://spacechem.net), a site for sharing and comparing solutions for the game [SpaceChem](http://www.spacechemthegame.com).

## Disclaimers/Warnings

I have not actively maintained SolutionNet in years. I am willing to merge in pull requests with fixes/enhancements if they are implemented in a reasonable way and have been tested.

All image files in the `static/` directory except the SolutionNet logo were extracted from the game's assets and are the property of [Zachtronics Industries](http://www.zachtronics.com/).

SolutionNet was one of my first projects using multiple technologies, including Python, Flask, and SQLAlchemy. There are many things in it that I would do differently now that I have more experience, so I apologize for the messiness/ugliness/etc.

## Getting a dev instance running

The most basic need will be to remove the `.example` extension from the `spacechem.cfg.example` and `spacechem.wsgi.example`, and edit them to contain appropriate values for your environment. See [the Flask documentation](http://flask.pocoo.org/docs/) for information about how to set it up, if necessary.

SolutionNet itself uses a PostgreSQL database, but it should be possible to use MySQL, SQLite, or other databases supported by SQLAlchemy as well. An Amazon Web Services account is not necessary unless you want to send the registration emails using SES.

Versions of relevant packages being used on SolutionNet (other versions may not work without requiring modifications):

* boto - 2.0b4
* Flask - 0.6.1
* Flask-SQLAlchemy - 0.11
* Flask-Uploads - 0.1.2
* Flask-WTF - 0.5.2
* py-bcrypt - 0.2
* SQLAlchemy - 0.6.6
* WTForms - 0.6.3

## Sample setup steps with ubuntu vivid, postgres, uwsgi and nginx
Clone the SolutionNet repo. Then:
```
cd SolutionNet
cp ./config/* .
mv ./spacechem.cfg.example ./spacechem.cfg
rm ./spacechem.wsgi.example
cd ..
```
Now update spacechem.cfg as follows:

  - **SECRET_KEY** - generate a secret key for session encryption and paste it here
  - **AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, FROM_EMAIL_ADDRESS,AWS_REGION** - these can be left as they are. If you want the system to send out a registration email via Amazon SES, fill these in
  - **SRV_NAME** - host header of the site for nginx to use
  - **GA_ID** - Google Analytics tracking id


```
# install the prerequisites
apt-get update
apt-get -y install python-dev postgresql-server-dev-all postgresql build-essential nginx wget gawk

# pip that comes with vivid as of the time of writing is broken. 
# unistall it first if it's already installed and then continue
# install pip and the dependencies
wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py
ln -s /usr/local/bin/pip /usr/bin/pip
pip install -U boto
pip install -U Flask
pip install -U Flask-SQLAlchemy
pip install -U Flask-Uploads
pip install -U Flask-WTF
pip install -U py-bcrypt
pip install -U SQLAlchemy
pip install -U WTForms
pip install -U psycopg2
pip install -U uwsgi

# Configure nginx
gawk -f SolutionNet/servername.awk SolutionNet/spacechem.cfg SolutionNet/spacechem.nginx > nginx.conf
rm /etc/nginx/sites-enabled/default
mv nginx.conf /etc/nginx/sites-enabled/spacechem
adduser spacechem --disabled-password --gecos ,
usermod -a -G spacechem www-data
chmod 710 /home/spacechem

# Configure systemd for uwsgi startup
mv SolutionNet/spacechem.service /etc/systemd/system

# Copy the application and make the upload directory
cp -r SolutionNet /home/spacechem
chown spacechem:spacechem /home/spacechem/SolutionNet
mkdir /home/spacechem/upload
chown spacechem:spacechem /home/spacechem/upload

# Set up the database
sudo -u postgres createdb spacechem
sudo -u postgres createuser spacechem

create table if not exists levels
(
	"level_id " integer not null
		constraint levels_pk
			primary key,
	"name " text,
	internal_name text,
	number text,
	slug text,
	order1 integer,
	order2 integer,
	category text,
	outside_view boolean default false
);
alter table levels owner to spacechem;


create table leaderboards
(
	slug text,
	description text
);
alter table leaderboards owner to spacechem;




#Start the app
systemctl start spacechem
systemctl enable spacechem
systemctl start nginx
systemctl enable nginx

# Configure daily statistics update
echo "0 0 * * * python /home/spacechem/SolutionNet/update_scores.py" > cronline
sudo -u spacechem crontab cronline
rm cronline

# Restart spacechem so that we can be sure that database schema is created
systemctl restart spacechem

# Populated reference data in the database
sudo -u spacechem psql spacechem < SolutionNet/levels.sql
sudo -u spacechem psql spacechem < SolutionNet/leaderboards.sql

# Populate the current high scores
sudo -u spacechem python /home/spacechem/SolutionNet/update_scores.py

# And now we are up and running
systemctl restart nginx
```
