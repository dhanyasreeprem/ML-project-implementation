# Mitigating Gender Bias with Semantic Information Preservation 

Name: Dhanyasree Prem Sankar 

### Python Version Requirements
- python==3.7.2
- gensim==3.7.1
- numpy==1.16.2
- pandas==0.24.2
- torch==1.1.0  


## 1) There are three necessary datasets that needs to be downloaded. 
- Trained glove and gn-glove 
- SemBias dataset 
- Female and male word lists 
```
./download.sh
```
## 2) In order to run the code, you will need to use the following command: 
```
./run.sh 
```

## 3) Once you run the command, you will be asked the following: 
```
Which dataset do you want to debias (glove or gn): 
Which method do you want your autoencoder to use: (cnn or linear):
```
You will have to enter the words EXACTLY without spaces to run the program and not throw an error. 

There are two options for datasets: 
- glove
- gn

There are two options for the autoencoder-style: 
- linear
- cnn

PLEASE TYPE THE COMMANDS EXACTLY. 

## Implementation Details 
a) The following was implemented from the GitHub Repository. 
- hyperparama_glove.py 
- hyperparams_gn.py 
- optim.py 
- pre_train_autoencoder.py 
- pre_train_classifier.py 

b) The following were implemented by me. 
- model_cnn.py 
- model.py 

c) The following were slightly modified by me
- train.py [Slightly modified to ask for what model and dataset to run on]
- eval.py [Slightly modified to ask for what model and dataset to run on]

## Datasets 
The datasets used were trained glove and gn-glove for pre-training and training, SemBias dataset for evaluation, and Female and male word lists. I obtained them through the download.sh file which downloaded the datasets from the respective Google Drives. 

## Citations
- [Author's Github Repository](https://github.com/kanekomasahiro/gp_debias)
- [Author's Paper](https://arxiv.org/abs/1906.00742)
