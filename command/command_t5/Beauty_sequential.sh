conda activate t5
python ../../src/src_t5/main.py --datasets Beauty --distributed 1 --gpu 2,3 --tasks sequential,straightforward --item_indexing sequential --epochs 20 --batch_size 64 --master_port 2000 --prompt_file ../prompt.txt --sample_prompt 1 --eval_batch_size 1 --dist_sampler 0 --max_his 20  --sample_num 3,3 --train 1 --test_prompt seen:0 --lr 1e-3 --test_before_train 0 --test_epoch 0
