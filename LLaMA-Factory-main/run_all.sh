current_time=$(date +"%Y%m%d_%H%M%S")

# bash run_llava_one_model.sh llava-1.5-7b-hf $current_time
# bash run_llava_one_model.sh llava-1.5-13b-hf $current_time
# bash run_llava_one_model.sh llava-onevision-qwen2-7b-ov-hf $current_time

bash run_qwen_one_model.sh Qwen2-VL-7B-Instruct $current_time
# bash run_qwen_one_model.sh Qwen2-VL-72B-Instruct $current_time
# bash run_qwen_one_model.sh Qwen2.5-VL-7B-Instruct $current_time
# bash run_qwen_one_model.sh Qwen2.5-VL-72B-Instruct $current_time
# bash run_qwen_one_model.sh QVQ-72B-Preview $current_time