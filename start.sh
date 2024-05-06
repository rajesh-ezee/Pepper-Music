echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/rajesh-ezee/Pepper-Music /Pepper-Music
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/rajesh-ezee/Pepper-Music -b $BRANCH /Pepper-Music
fi
cd /Pepper-Music
pip install --upgrade pip
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
