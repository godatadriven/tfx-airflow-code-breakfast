import airflow.utils.dates
from airflow.models import DAG
from airflow.operators.bash import BashOperator
from airflow.operators.python import PythonOperator
import datetime as dt

dag = DAG(
    dag_id="hello_world",
    start_date=dt.datetime(year=2019, month=1, day=1),
    end_date=dt.datetime(year=2019, month=1, day=5),
    schedule_interval="@daily",
)

hello = BashOperator(task_id="hello", bash_command="echo 'hello'", dag=dag)
world = PythonOperator(task_id="world", python_callable=lambda: print("world"), dag=dag)

hello >> world
