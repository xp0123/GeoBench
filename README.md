# GeoBench

## Inference

To perform inference on large models, add the following commands to the `run_all.sh` script:  

```
bash run_<qwen/llava>_one_model.sh <model_name_1> $current_time  
bash run_<qwen/llava>_one_model.sh <model_name_2> $current_time  
...  
```  

Then execute:  
```bash  
cd LLaMa_Factory-main  
bash run_all.sh  
```  

We can find the log file in the directory `/final_saves/<current_time>/logs/` and the inference results in `/final_saves/<current_time>/<model_name>/`.  

## Evaluation  

To evaluate the accuracy of the inference results, add the following command to the `run_metrics_all.sh` script:  

```
bash run_metrics_one_model.sh <model_name_1> $save_dir
bash run_metrics_one_model.sh <model_name_2> $save_dir
...
```  

Then execute:  
```bash  
cd LLaMa_Factory-main  
bash run_metrics_all.sh <save_dir>  
```  
Here, `save_dir` refers to the directory `/final_saves/<current_time>/`.  

We can find the results file in the directory `/final_saves/<current_time>/<model_name>/`.
