
C
generator/g_bn_e4/scaleConst*
valueB	�*
dtype0
C
generator/g_bn_e3/scaleConst*
valueB	�*
dtype0
C
generator/g_bn_e2/scaleConst*
valueB	�*
dtype0
8
generator/mul_2/xConst*
valueB *
dtype0
B
generator/g_bn_e1/scaleConst*
value
B@*
dtype0
>
generator/g_bn_e1/add/yConst*
valueB *
dtype0
R
generator/g_e1_conv/weightsConst*
valueB@*
dtype0
S
generator/g_e2_conv/weightsConst* 
valueB@�*
dtype0
T
generator/g_e3_conv/weightsConst*!
valueB��*
dtype0
T
generator/g_e4_conv/weightsConst*!
valueB��*
dtype0
[
0generator/g_bn_e1/moments/mean/reduction_indicesConst*
value
B*
dtype0
O
train_picture_directPlaceholder*
dtype0*
shape:��
�
generator/g_e1_conv/Conv2DConv2Dtrain_picture_directgenerator/g_e1_conv/weights*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*
use_cudnn_on_gpu(
�
generator/g_bn_e1/moments/meanMeangenerator/g_e1_conv/Conv2D0generator/g_bn_e1/moments/mean/reduction_indices*
	keep_dims(*
T0*

Tidx0
�
+generator/g_bn_e1/moments/SquaredDifferenceSquaredDifferencegenerator/g_e1_conv/Conv2Dgenerator/g_bn_e1/moments/mean*
T0
a
generator/g_bn_e1/subSubgenerator/g_e1_conv/Conv2Dgenerator/g_bn_e1/moments/mean*
T0
�
"generator/g_bn_e1/moments/varianceMean+generator/g_bn_e1/moments/SquaredDifference0generator/g_bn_e1/moments/mean/reduction_indices*
	keep_dims(*
T0*

Tidx0
b
generator/g_bn_e1/addAdd"generator/g_bn_e1/moments/variancegenerator/g_bn_e1/add/y*
T0
@
generator/g_bn_e1/RsqrtRsqrtgenerator/g_bn_e1/add*
T0
�
generator/g_bn_e1/mulMulgenerator/g_bn_e1/scalegenerator/g_bn_e1/Rsqrt*
T0*6
0_grappler:ArithmeticOptimizer:MinimizeBroadcasts(
�
generator/g_bn_e1/mul_1Mulgenerator/g_bn_e1/mulgenerator/g_bn_e1/sub*
T0*6
0_grappler:ArithmeticOptimizer:MinimizeBroadcasts(
I
generator/mulMulgenerator/mul_2/xgenerator/g_bn_e1/mul_1*
T0
M
generator/MaximumMaximumgenerator/g_bn_e1/mul_1generator/mul*
T0
�
generator/g_e2_conv/Conv2DConv2Dgenerator/Maximumgenerator/g_e2_conv/weights*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*
use_cudnn_on_gpu(
�
generator/g_bn_e2/moments/meanMeangenerator/g_e2_conv/Conv2D0generator/g_bn_e1/moments/mean/reduction_indices*
	keep_dims(*
T0*

Tidx0
�
+generator/g_bn_e2/moments/SquaredDifferenceSquaredDifferencegenerator/g_e2_conv/Conv2Dgenerator/g_bn_e2/moments/mean*
T0
a
generator/g_bn_e2/subSubgenerator/g_e2_conv/Conv2Dgenerator/g_bn_e2/moments/mean*
T0
�
"generator/g_bn_e2/moments/varianceMean+generator/g_bn_e2/moments/SquaredDifference0generator/g_bn_e1/moments/mean/reduction_indices*
	keep_dims(*
T0*

Tidx0
b
generator/g_bn_e2/addAdd"generator/g_bn_e2/moments/variancegenerator/g_bn_e1/add/y*
T0
@
generator/g_bn_e2/RsqrtRsqrtgenerator/g_bn_e2/add*
T0
�
generator/g_bn_e2/mulMulgenerator/g_bn_e2/scalegenerator/g_bn_e2/Rsqrt*
T0*6
0_grappler:ArithmeticOptimizer:MinimizeBroadcasts(
�
generator/g_bn_e2/mul_1Mulgenerator/g_bn_e2/mulgenerator/g_bn_e2/sub*
T0*6
0_grappler:ArithmeticOptimizer:MinimizeBroadcasts(
K
generator/mul_1Mulgenerator/mul_2/xgenerator/g_bn_e2/mul_1*
T0
Q
generator/Maximum_1Maximumgenerator/g_bn_e2/mul_1generator/mul_1*
T0
�
generator/g_e3_conv/Conv2DConv2Dgenerator/Maximum_1generator/g_e3_conv/weights*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*
use_cudnn_on_gpu(
�
generator/g_bn_e3/moments/meanMeangenerator/g_e3_conv/Conv2D0generator/g_bn_e1/moments/mean/reduction_indices*
	keep_dims(*
T0*

Tidx0
�
+generator/g_bn_e3/moments/SquaredDifferenceSquaredDifferencegenerator/g_e3_conv/Conv2Dgenerator/g_bn_e3/moments/mean*
T0
a
generator/g_bn_e3/subSubgenerator/g_e3_conv/Conv2Dgenerator/g_bn_e3/moments/mean*
T0
�
"generator/g_bn_e3/moments/varianceMean+generator/g_bn_e3/moments/SquaredDifference0generator/g_bn_e1/moments/mean/reduction_indices*
	keep_dims(*
T0*

Tidx0
b
generator/g_bn_e3/addAdd"generator/g_bn_e3/moments/variancegenerator/g_bn_e1/add/y*
T0
@
generator/g_bn_e3/RsqrtRsqrtgenerator/g_bn_e3/add*
T0
�
generator/g_bn_e3/mulMulgenerator/g_bn_e3/scalegenerator/g_bn_e3/Rsqrt*
T0*6
0_grappler:ArithmeticOptimizer:MinimizeBroadcasts(
�
generator/g_bn_e3/mul_1Mulgenerator/g_bn_e3/mulgenerator/g_bn_e3/sub*
T0*6
0_grappler:ArithmeticOptimizer:MinimizeBroadcasts(
K
generator/mul_2Mulgenerator/mul_2/xgenerator/g_bn_e3/mul_1*
T0
Q
generator/Maximum_2Maximumgenerator/g_bn_e3/mul_1generator/mul_2*
T0
�
generator/g_e4_conv/Conv2DConv2Dgenerator/Maximum_2generator/g_e4_conv/weights*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*
use_cudnn_on_gpu(
�
generator/g_bn_e4/moments/meanMeangenerator/g_e4_conv/Conv2D0generator/g_bn_e1/moments/mean/reduction_indices*
	keep_dims(*
T0*

Tidx0
�
+generator/g_bn_e4/moments/SquaredDifferenceSquaredDifferencegenerator/g_e4_conv/Conv2Dgenerator/g_bn_e4/moments/mean*
T0
a
generator/g_bn_e4/subSubgenerator/g_e4_conv/Conv2Dgenerator/g_bn_e4/moments/mean*
T0
�
"generator/g_bn_e4/moments/varianceMean+generator/g_bn_e4/moments/SquaredDifference0generator/g_bn_e1/moments/mean/reduction_indices*
	keep_dims(*
T0*

Tidx0
b
generator/g_bn_e4/addAdd"generator/g_bn_e4/moments/variancegenerator/g_bn_e1/add/y*
T0
@
generator/g_bn_e4/RsqrtRsqrtgenerator/g_bn_e4/add*
T0
�
generator/g_bn_e4/mulMulgenerator/g_bn_e4/scalegenerator/g_bn_e4/Rsqrt*
T0*6
0_grappler:ArithmeticOptimizer:MinimizeBroadcasts(
�
generator/g_bn_e4/mul_1Mulgenerator/g_bn_e4/mulgenerator/g_bn_e4/sub*
T0*6
0_grappler:ArithmeticOptimizer:MinimizeBroadcasts(
8
generator/TanhTanhgenerator/g_bn_e4/mul_1*
T0 " 