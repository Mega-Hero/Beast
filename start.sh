if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Mega-Hero/Beast.git /Beast
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Beast
fi
cd /Beast
pip3 install -U -r requirements.txt
echo "Starting MHBeast....🔥"
python3 bot.py
