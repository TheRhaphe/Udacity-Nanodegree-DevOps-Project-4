[![TheRhaphe](https://circleci.com/gh/TheRhaphe/Udacity-Nanodegree-DevOps-Project-4.svg?style=svg)](https://app.circleci.com/pipelines/github/TheRhaphe/Udacity-Nanodegree-DevOps-Project-4)

# Udacity Cloud DevOps Nanodegree Project 4

---

## Summary of Project

This project contains a Microservice API for a house prediction service using a trained `sklearn` machine learning model.
Given various input values, the service returns the predicted price of the house.
You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing).

The application is built in `python` using the `flask` framework.
To ensure easy deployment, the aaplication has been containerized using a `Dockerfile`.
In addition, some scripts have been included upload it to Dockerhub and run it in a Kubernetes cluster.


This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

---

## Running the Application

### Setup the Environment

* Create a virtualenv with Python 3.7 and activate it.
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

---

## Description of files

```
.
├── .circleci
│   └── config.yml
├── model_data
│   ├── boston_housing_prediction.joblib
│   └── housing.csv
├── output_txt_files
│   ├── docker_out.txt
│   └── kubernetes_out.txt
├── app.py
├── Dockerfile
├── make_prediction.sh
├── Makefile
├── README.md
├── requirements.txt
├── run_docker.sh
├── run_kubernetes.sh
└── upload_docker.sh

```
* `.circleci/config.yml` contains the config file for Circle CI.
* `model_data/boston_housing_prediction.joblib` trained model
* `model_data/housing.csv` training data
* `output_txt_files` sample output files when invoking through docker and kubernetes
* `app.py` source code of the application
* `Dockerfile` contains the configuration for the docker container env. setup
* `Makefile` basically contains the summary instruction on deploying the app 
* `requirements.txt` contains the dependencies to install
* `run_docker.sh` script to run the app from docker image
* `run_kubernetes.sh` script to run app in kubernetes cluster
* `upload_docker.sh` script to upload image to Docker Hub


