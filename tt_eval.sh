TESTPATH="/mnt/sdb/khang/tanksandtemples/intermediate/"
CKPT_FILE="pretrained/cds_mvsnet.ckpt"
echo Family > lists/tanksandtemples/subset.txt && python test.py --dataset tt --batch_size 1 --testpath $TESTPATH --testlist lists/tanksandtemples/subset.txt --resume $CKPT_FILE --outdir tt_outputs --interval_scale 1.0 --num_view 10 --numdepth 256 --max_h 1088 --max_w 1920 --no_refinement --filter_method gipuma --prob_threshold 0.8,0.8,0.8 --disp_threshold 0.4 --num_consistent 5 && cp tt_outputs/Family/points_mvsnet/con*/final3d_model.ply tt_outputs/Family.ply
echo Francis > lists/tanksandtemples/subset.txt && python test.py --dataset tt --batch_size 1 --testpath $TESTPATH --testlist lists/tanksandtemples/subset.txt --resume $CKPT_FILE --outdir tt_outputs --interval_scale 1.0 --num_view 10 --numdepth 256 --ndepths 64,32,8 --max_h 1088 --max_w 1920 --no_refinement --conf 0.8,0.8,0.8 --thres_disp 0.6 --thres_view 5 #&& mv tt_outputs/Francis/points_mvsnet/con*/final*.ply tt_outputs/Francis.ply
echo Horse > lists/tanksandtemples/subset.txt && python test.py --dataset tt --batch_size 1 --testpath $TESTPATH --testlist lists/tanksandtemples/subset.txt --resume $CKPT_FILE --outdir tt_outputs --interval_scale 1.0 --num_view 10 --numdepth 256 --ndepths 64,32,8 --max_h 1088 --max_w 1920 --no_refinement --conf 0.7,0.7,0.7 --thres_view 4 --thres_disp 0.8
echo Lighthouse > lists/tanksandtemples/subset.txt && python test.py --dataset tt --batch_size 1 --testpath $TESTPATH --testlist lists/tanksandtemples/subset.txt --resume $CKPT_FILE --outdir tt_outputs --interval_scale 1.0 --num_view 10 --numdepth 256 --max_h 544 --max_w 1024 --no_refinement --conf 0.8,0.8,0.8 --thres_view 5 --thres_disp 0.8
echo M60 > lists/tanksandtemples/subset.txt && python test.py --dataset tt --batch_size 1 --testpath $TESTPATH --testlist lists/tanksandtemples/subset.txt --resume $CKPT_FILE --outdir tt_outputs --interval_scale 1.0 --num_view 10 --numdepth 256 --max_h 544 --max_w 1024 --no_refinement --conf 0.8,0.8,0.8 --thres_view 4 --thres_disp 0.6
echo Train > lists/tanksandtemples/subset.txt && python test.py --dataset tt --batch_size 1 --testpath $TESTPATH --testlist lists/tanksandtemples/subset.txt --resume $CKPT_FILE --outdir tt_outputs --interval_scale 1.0 --num_view 10 --numdepth 256 --max_h 544 --max_w 960 --no_refinement --filter_method gipuma --prob_threshold 0.8,0.8,0.8 --disp_threshold 0.3 --num_consistent 6 && cp tt_outputs/Train/points_mvsnet/con*/final3d_model.ply tt_outputs/Train.ply
echo Panther > lists/tanksandtemples/subset.txt && python test.py --dataset tt --batch_size 1 --testpath $TESTPATH --testlist lists/tanksandtemples/subset.txt --resume $CKPT_FILE --outdir tt_outputs --interval_scale 1.0 --num_view 10 --numdepth 256 --max_h 544 --max_w 1024 --no_refinement --filter_method gipuma --prob_threshold 0.8,0.8,0.8 --disp_threshold 0.2 --num_consistent 3 && cp tt_outputs/Panther/points_mvsnet/con*/final3d_model.ply tt_outputs/Panther.ply
echo Playground > lists/tanksandtemples/subset.txt && python test.py --dataset tt --batch_size 1 --testpath $TESTPATH --testlist lists/tanksandtemples/subset.txt --resume $CKPT_FILE --outdir tt_outputs --interval_scale 1.0 --num_view 10 --numdepth 256 --max_h 544 --max_w 960 --no_refinement --filter_method gipuma --prob_threshold 0.8,0.8,0.8 --disp_threshold 0.3 --num_consistent 5 && cp tt_outputs/Playground/points_mvsnet/con*/final3d_model.ply tt_outputs/Playground.ply
