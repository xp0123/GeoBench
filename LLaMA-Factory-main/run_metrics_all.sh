save_dir=$1

# bash run_metrics_one_model.sh llava-1.5-7b-hf $save_dir
# bash run_metrics_one_model.sh llava-1.5-13b-hf $save_dir
# bash run_metrics_one_model.sh llava-onevision-qwen2-7b-ov-hf $save_dir

bash run_metrics_one_model.sh Qwen2-VL-7B-Instruct $save_dir
# bash run_metrics_one_model.sh Qwen2-VL-72B-Instruct $save_dir
# bash run_metrics_one_model.sh Qwen2.5-VL-7B-Instruct $save_dir
# bash run_metrics_one_model.sh Qwen2.5-VL-72B-Instruct $save_dir
# bash run_metrics_one_model.sh QVQ-72B-Preview $save_dir