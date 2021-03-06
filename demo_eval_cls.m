%this script demos the usage of evaluation routines
% the result file 'demo.val.pred.txt' on validation data is evaluated
% against the ground truth

fprintf('PLACES365 SCENE CLASSIFICATION TASK\n');

pred_file='.\data\pred.txt';
ground_truth_file='./data/val_mosque.txt';
num_predictions_per_image=5;

fprintf('pred_file: %s\n', pred_file);
fprintf('ground_truth_file: %s\n', ground_truth_file);

error_cls = eval_cls(pred_file,ground_truth_file,1:num_predictions_per_image);

disp('# guesses vs cls error');
disp([(1:num_predictions_per_image)',error_cls']);


