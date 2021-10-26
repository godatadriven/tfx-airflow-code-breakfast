# TFX running on Airflow - Code Breakfast

This repository is for exploration of the TFX functionality and its ability to run on Airflow.  

Setup includes: 
 - Airflow web & scheduler
 - TFX dags and utilities
 - JupyterLab 

## Setting up your environment

### Build Docker images

Builds Airflow and JupyterLab images with TFX/TensorFlow libraries in you need to customize.  
If you just want to start the application, build is not needed, by default images are pulled from GCR.

```
make build
```

### Start application

Starts docker-compose setup in a detached mode.

```
make up
```

### Stop application

Starts docker-compose setup in a detached mode.

```
make down
```

## Accessing application

Access Web-UIs when docker-compose application is started 
                                                        
- Landing page [http://localhost](http://localhost:80)
- Airflow [http://localhost:8081](http://localhost:8081), credentials: admin/admin 
- JupyterLab [http://localhost:8888](http://localhost:8888) 

## Doing the exercises

1. Enable `taxi_solution` dag
2. Trigger the dag 2-3 times
3. Change data in data/taxi_data/ and trigger the dag one
4. Observe `tfx/pipelines/taxi_solution/Evaluator/blessing` folder to see which model was blessed
5. Open JupyterLab and explore notebooks
6. Implement Inference DAG

## References
                            
* TFX [User Guide](https://www.tensorflow.org/tfx/guide)
* This project is inspired by the [TFX Airflow workshop](https://www.tensorflow.org/tfx/tutorials/tfx/airflow_workshop)
* TensorFlow Data Validation [TFDV](https://www.tensorflow.org/tfx/tutorials/data_validation/tfdv_basic)
* TensorFlow Model Analysis [TFMA](https://www.tensorflow.org/tfx/tutorials/model_analysis/tfma_basic)
* ML Metadata [MLMD](https://www.tensorflow.org/tfx/guide/mlmd)
* ML in Production Specialization [Coursera](https://www.coursera.org/specializations/machine-learning-engineering-for-production-mlops/) 
                                                     
## TFX Case Studies
* Spotify [TFX on Kubeflow](https://engineering.atspotify.com/2019/12/13/the-winding-road-to-better-machine-learning-infrastructure-through-tensorflow-extended-and-kubeflow/)
* Twitter [From Tourch to TF/TFX](https://blog.tensorflow.org/2019/03/ranking-tweets-with-tensorflow.html)
* [Other](https://www.tensorflow.org/about/case-studies)