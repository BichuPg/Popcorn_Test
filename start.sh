if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/BichuPg/Popcorn_Test/koyeb.git /Popcorn_Test
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Popcorn_Test
fi
cd /Popcorn_Test
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
