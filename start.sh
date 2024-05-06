echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/rajeshrakis/Pepper-VC /Pepper-VC
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/rajeshrakis/Pepper-VC -b $BRANCH /Pepper-VC
fi
cd /Pepper-VC
pip install --upgrade pip
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
