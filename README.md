# SolutionNet (spacechem.net)

This is the source code for [SolutionNet](http://spacechem.net), a site for sharing and comparing solutions for the game [SpaceChem](http://www.spacechemthegame.com).

## Disclaimers/Warnings

I have not actively maintained SolutionNet in years. I am willing to merge in pull requests with fixes/enhancements if they are implemented in a reasonable way and have been tested.

All image files in the `static/` directory except the SolutionNet logo were extracted from the game's assets and are the property of [Zachtronics Industries](http://www.zachtronics.com/).

SolutionNet was one of my first projects using multiple technologies, including Python, Flask, and SQLAlchemy. There are many things in it that I would do differently now that I have more experience, so I apologize for the messiness/ugliness/etc.

## Getting a dev instance running

The most basic need will be to remove the `.example` extension from the `spacechem.cfg.example` and `spacechem.wsgi.example`, and edit them to contain appropriate values for your environment. See [the Flask documentation](http://flask.pocoo.org/docs/) for information about how to set it up, if necessary.

SolutionNet itself uses a PostgreSQL database, but it should be possible to use MySQL, SQLite, or other databases supported by SQLAlchemy as well. An Amazon Web Services account is not necessary unless you want to send the registration emails using SES.

Versions of relevant packages being used on SolutionNet at 2020.03 (other versions may not work without requiring modifications):

* boto - 2.49.0 
* Flask - 1.1.1
* Flask-SQLAlchemy - 2.4.1
* Flask-Uploads - 0.2.1
* Flask-WTF - 0.14.3
* bcrypt - 3.1.7
* SQLAlchemy - 1.3.15
* Werkzeug - 0.16 (!)
* WTForms - 2.2.1

## Sample setup steps with ubuntu vivid, postgres, uwsgi and nginx
Clone the SolutionNet repo
Edit spacechem.cfg.example as follows: 

  - **SECRET_KEY** - generate a secret key for session encryption and paste it here
  - **AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, FROM_EMAIL_ADDRESS,AWS_REGION** - these can be left as they are. If you want the system to send out a registration email via Amazon SES, fill these in
  - **SRV_NAME** - host header of the site for nginx to use
  - **GA_ID** - Google Analytics tracking id

```
Then:
```
cd SolutionNet
mv ./spacechem.cfg.example ./spacechem.cfg
mv ./spacechem.wsgi.example ./spacechem.wsgi
cd ..

# install the prerequisites
sudo apt-get update
sudo apt-get -y install postgresql-server-dev-all postgresql build-essential nginx wget gawk
sudo apt-get install python3-pip
sudo pip3 install boto && sudo pip3 install Flask && sudo pip3 install Flask-SQLAlchemy && sudo pip3 install Flask-Uploads && sudo pip3 install Flask-WTF && sudo pip3 install bcrypt && sudo pip3 install SQLAlchemy && sudo pip3 install WTForms && sudo pip3 install psycopg2 && sudo pip3 install uwsgi
sudo pip3 uninstall werkzeug
sudo pip3 install werkzeug==0.16.1

# Configure nginx
gawk -f SolutionNet/config/servername.awk SolutionNet/spacechem.cfg SolutionNet/config/spacechem.nginx > nginx.conf
sudo rm /etc/nginx/sites-enabled/default
sudo mv nginx.conf /etc/nginx/sites-enabled/spacechem

# Configure systemd for uwsgi startup
sudo mv SolutionNet/config/spacechem.service /etc/systemd/system
mkdir /home/USERNAME/upload

# Set up the database
sudo -u postgres createdb spacechem
sudo -u postgres createuser spacechem
# Populated reference data in the database
sudo -u rx psql spacechem < SolutionNet/levels.sql
sudo -u rx psql spacechem < SolutionNet/leaderboards.sql

---
# Configure user, if you need
adduser spacechem --disabled-password --gecos ,
usermod -a -G spacechem www-data
chmod 710 /home/spacechem
# Copy the application and make the upload directory
cp -r SolutionNet /home/spacechem
chown spacechem:spacechem /home/spacechem/SolutionNet
mkdir /home/spacechem/upload
chown spacechem:spacechem /home/spacechem/upload
---

# Start the app
systemctl enable spacechem
systemctl enable nginx
systemctl start spacechem
systemctl start nginx


# Configure daily statistics update
echo "0 0 * * * python /home/spacechem/SolutionNet/update_scores.py" > cronline
sudo -u spacechem crontab cronline
rm cronline


# Populate the current high scores
sudo -u spacechem python /home/USERNAME/SolutionNet/update_scores.py
# If scores servers down, you can use last collected stats for 2020.03 

# And now we are up and running
systemctl restart nginx
systemctl restart spacechem
```
