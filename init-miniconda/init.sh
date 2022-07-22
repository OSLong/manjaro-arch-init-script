echo "================ Init Python Minicoda ===================="

curl -o /tmp/miniconda.sh "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.12.0-Linux-x86_64.sh" 

bash /tmp/miniconda.sh 

$HOME/miniconda3/bin/conda init

$HOME/miniconda3/bin/conda config --set auto_activate_base false
 
