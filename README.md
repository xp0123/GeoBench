<div align="center">
    <h1> GeoBench: Rethinking Multimodal Geometric Problem-Solving via Hierarchical Evaluation</a></h2>

  <p align="center">
    <a href="https://huggingface.co/xp0123/GeoBench">🤗Data</a>
  </p>
  <br>
  <img width="95%" src=./assets/teaser.png>
</div>



## 🚩 News

- [2025/5/16] Initialize thr project. Release the the evaluation code and data for GeoBench. See [here](https://huggingface.co/xp0123/GeoBench).


## 🏃 Intro GeoBench


**GeoBench** is a hierarchical geometric problem-solving benchmark featuring four reasoning levels: Visual Perception, Goal-Oriented Planning, Rigorous Theorem Application, and Self-Reflective Backtracking. 



## ⚡ Requirement

| Mandatory    | Minimum | Recommend |
| ------------ | ------- | --------- |
| python       | 3.9     | 3.10      |
| torch        | 2.0.0   | 2.6.0     |
| transformers | 4.45.0  | 4.50.0    |
| datasets     | 2.16.0  | 3.2.0     |
| accelerate   | 0.34.0  | 1.2.1     |
| peft         | 0.14.0  | 0.15.1    |
| trl          | 0.8.6   | 0.9.6     |

| Optional     | Minimum | Recommend |
| ------------ | ------- | --------- |
| CUDA         | 11.6    | 12.2      |
| deepspeed    | 0.10.0  | 0.16.4    |
| bitsandbytes | 0.39.0  | 0.43.1    |
| vllm         | 0.4.3   | 0.8.2     |
| flash-attn   | 2.5.6   | 2.7.2     |

### Hardware Requirement

\* *estimated*

| Method                          | Bits |   7B  |  14B  |  30B  |   70B  |   `x`B  |
| ------------------------------- | ---- | ----- | ----- | ----- | ------ | ------- |
| Full (`bf16` or `fp16`)         |  32  | 120GB | 240GB | 600GB | 1200GB | `18x`GB |
| Full (`pure_bf16`)              |  16  |  60GB | 120GB | 300GB |  600GB |  `8x`GB |
| Freeze/LoRA/GaLore/APOLLO/BAdam |  16  |  16GB |  32GB |  64GB |  160GB |  `2x`GB |
| QLoRA                           |   8  |  10GB |  20GB |  40GB |   80GB |   `x`GB |
| QLoRA                           |   4  |   6GB |  12GB |  24GB |   48GB | `x/2`GB |
| QLoRA                           |   2  |   4GB |   8GB |  16GB |   24GB | `x/4`GB |


## 📁 Installation

```
cd LLaMA-Factory-main
pip install -e ".[torch,metrics]"
```

## 💻 Inference

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

## 📖 Evaluation  

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


## Acknowledgments

Thanks to [LLaMA-Factory]([https://github.com/haotian-liu/LLaVA](https://github.com/hiyouga/LLaMA-Factory)), which we utilized as the evaluation codebase.



## License

This code is distributed under an [Apache-2.0 license](LICENSE). If there are any problems regarding our project, please open an issue.
