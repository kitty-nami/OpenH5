conda activate t5
python ../../src/src_t5/main.py --datasets Taobao --distributed 1 --gpu 4,5,6,7 --tasks sequential,straightforward --item_indexing collaborative --epochs 10 --batch_size 64 --master_port 1996 --prompt_file ../../prompt.txt --sample_prompt 1 --eval_batch_size 20 --dist_sampler 0 --max_his 20  --sample_num 3,3 --train 1 --test_prompt seen:0 --lr 1e-3 --test_before_train 0 --test_epoch 0 --collaborative_token_size 100 --collaborative_cluster 10 --test_filtered 0 --model_name Taobao_collaborative.pt

python ../../src/src_t5/main.py --datasets Taobao --distributed 1 --gpu 4,5,6,7 --tasks sequential,straightforward --item_indexing collaborative --epochs 10 --batch_size 64 --master_port 1996 --prompt_file ../../prompt.txt --sample_prompt 1 --eval_batch_size 20 --dist_sampler 0 --max_his 20  --sample_num 3,3 --train 0 --test_prompt unseen:0 --lr 1e-3 --test_before_train 0 --test_epoch 0 --collaborative_token_size 100 --collaborative_cluster 10 --test_filtered 0 --model_name Taobao_collaborative.pt