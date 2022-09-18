echo [$(date)] : "START"
echo [$(date)] : "creating environment with python 3.8 version"
conda create --prefix ./env python=3.8 -y
echo [$(date)] : "Activating the environment"
source activate ./env
echo [$(date)] : "installing the dev requirements"
pip install -r requirements_dev.txt
echo [$(date)] : "installing dvc"
pip3 install dvc --user
echo [$(date)] : "END"