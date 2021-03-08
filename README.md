-------  rasa setup ------------------------------
0.  cd ~/py-envs/
1.  python3.7 -m venv env379-rasa1.10.3
2.  source env379-rasa1.10.3/bin/activate
3.  cd ~/Acac
4.  git clone https://github.com/RasaHQ/rasa-demo.git Acac
5.  cd Acac
6.  pip3 install rasa==1.10.3
//  if you get errors while executing above step 'ERROR: tensorflow 2.1.2 has requirement gast==0.2.2, but you'll have gast 0.4.0 which is incompatible.ERROR: tensorflow 2.1.2 has requirement numpy<1.19.0,>=1.16.0, but you'll have numpy 1.19.2 which is incompatible........ then install proper versions using pip3 install command'
8.  pip3 install gast==0.2.2
9.  pip3 install numpy==1.18.5
//  open setup.py file and update requests version from 2.21.0 to 2.23.0 and open config.yml file remove convertRT tokenizer, covertRTfeaturizer and add Whitespace tokenizer
10.  pip3 install -e .
11.  rasa train --augmentation 0
12.  pip3 install spacy
13.  python3 -m spacy download en

-------  docker clean up------------------------

1. sudo docker ps -a
2. sudo docker container ls -a
3. sudo docker container ls -aq
4. sudo docker container stop $(sudo docker container ls -aq)
5. sudo docker container rm $(sudo docker container ls -aq)

------- test rasa assistent---------------------

1. sudo docker run -p 8000:8000 rasa/duckling &
2. rasa run actions --actions actions &
3. rasa shell
// once you are getting the proper response in shell then stop the processes.


------ voice interface -------------------------------------


1. cd ~/Acac/
2. cd rasa-voice-interface
4. npm install
5. npm run serve


-----rasa connectorio file----------------
1. copy socketio_connector.py file in rasa project directory.
2. copy credentials.yml into sara project


---- run all servers---------

1. rasa run --enable-api -p 5005
2. rasa run actions --actions actions
3. sudo docker run -p 8000:8000 rasa/duckling
4. python3 -m http.server 8888


