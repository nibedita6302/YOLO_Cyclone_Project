��#
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resource�
�
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%��8"&
exponential_avg_factorfloat%  �?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628��
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
�
 Adam/v/Output_Layer_Dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/v/Output_Layer_Dense_7/bias
�
4Adam/v/Output_Layer_Dense_7/bias/Read/ReadVariableOpReadVariableOp Adam/v/Output_Layer_Dense_7/bias*
_output_shapes
:*
dtype0
�
 Adam/m/Output_Layer_Dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/m/Output_Layer_Dense_7/bias
�
4Adam/m/Output_Layer_Dense_7/bias/Read/ReadVariableOpReadVariableOp Adam/m/Output_Layer_Dense_7/bias*
_output_shapes
:*
dtype0
�
"Adam/v/Output_Layer_Dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*3
shared_name$"Adam/v/Output_Layer_Dense_7/kernel
�
6Adam/v/Output_Layer_Dense_7/kernel/Read/ReadVariableOpReadVariableOp"Adam/v/Output_Layer_Dense_7/kernel*
_output_shapes
:	�*
dtype0
�
"Adam/m/Output_Layer_Dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*3
shared_name$"Adam/m/Output_Layer_Dense_7/kernel
�
6Adam/m/Output_Layer_Dense_7/kernel/Read/ReadVariableOpReadVariableOp"Adam/m/Output_Layer_Dense_7/kernel*
_output_shapes
:	�*
dtype0
�
"Adam/v/batch_normalization_27/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/v/batch_normalization_27/beta
�
6Adam/v/batch_normalization_27/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_27/beta*
_output_shapes	
:�*
dtype0
�
"Adam/m/batch_normalization_27/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/m/batch_normalization_27/beta
�
6Adam/m/batch_normalization_27/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_27/beta*
_output_shapes	
:�*
dtype0
�
#Adam/v/batch_normalization_27/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*4
shared_name%#Adam/v/batch_normalization_27/gamma
�
7Adam/v/batch_normalization_27/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_27/gamma*
_output_shapes	
:�*
dtype0
�
#Adam/m/batch_normalization_27/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*4
shared_name%#Adam/m/batch_normalization_27/gamma
�
7Adam/m/batch_normalization_27/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_27/gamma*
_output_shapes	
:�*
dtype0
�
Adam/v/Dense_128/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/v/Dense_128/bias
|
)Adam/v/Dense_128/bias/Read/ReadVariableOpReadVariableOpAdam/v/Dense_128/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/Dense_128/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/m/Dense_128/bias
|
)Adam/m/Dense_128/bias/Read/ReadVariableOpReadVariableOpAdam/m/Dense_128/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/Dense_128/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*(
shared_nameAdam/v/Dense_128/kernel
�
+Adam/v/Dense_128/kernel/Read/ReadVariableOpReadVariableOpAdam/v/Dense_128/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/m/Dense_128/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*(
shared_nameAdam/m/Dense_128/kernel
�
+Adam/m/Dense_128/kernel/Read/ReadVariableOpReadVariableOpAdam/m/Dense_128/kernel* 
_output_shapes
:
��*
dtype0
�
"Adam/v/batch_normalization_26/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/v/batch_normalization_26/beta
�
6Adam/v/batch_normalization_26/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_26/beta*
_output_shapes	
:�*
dtype0
�
"Adam/m/batch_normalization_26/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/m/batch_normalization_26/beta
�
6Adam/m/batch_normalization_26/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_26/beta*
_output_shapes	
:�*
dtype0
�
#Adam/v/batch_normalization_26/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*4
shared_name%#Adam/v/batch_normalization_26/gamma
�
7Adam/v/batch_normalization_26/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_26/gamma*
_output_shapes	
:�*
dtype0
�
#Adam/m/batch_normalization_26/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*4
shared_name%#Adam/m/batch_normalization_26/gamma
�
7Adam/m/batch_normalization_26/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_26/gamma*
_output_shapes	
:�*
dtype0
�
Adam/v/Dense_256/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/v/Dense_256/bias
|
)Adam/v/Dense_256/bias/Read/ReadVariableOpReadVariableOpAdam/v/Dense_256/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/Dense_256/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/m/Dense_256/bias
|
)Adam/m/Dense_256/bias/Read/ReadVariableOpReadVariableOpAdam/m/Dense_256/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/Dense_256/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*(
shared_nameAdam/v/Dense_256/kernel
�
+Adam/v/Dense_256/kernel/Read/ReadVariableOpReadVariableOpAdam/v/Dense_256/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/m/Dense_256/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*(
shared_nameAdam/m/Dense_256/kernel
�
+Adam/m/Dense_256/kernel/Read/ReadVariableOpReadVariableOpAdam/m/Dense_256/kernel* 
_output_shapes
:
��*
dtype0
�
"Adam/v/batch_normalization_25/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/v/batch_normalization_25/beta
�
6Adam/v/batch_normalization_25/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_25/beta*
_output_shapes	
:�*
dtype0
�
"Adam/m/batch_normalization_25/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/m/batch_normalization_25/beta
�
6Adam/m/batch_normalization_25/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_25/beta*
_output_shapes	
:�*
dtype0
�
#Adam/v/batch_normalization_25/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*4
shared_name%#Adam/v/batch_normalization_25/gamma
�
7Adam/v/batch_normalization_25/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_25/gamma*
_output_shapes	
:�*
dtype0
�
#Adam/m/batch_normalization_25/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*4
shared_name%#Adam/m/batch_normalization_25/gamma
�
7Adam/m/batch_normalization_25/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_25/gamma*
_output_shapes	
:�*
dtype0
�
Adam/v/Dense_512/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/v/Dense_512/bias
|
)Adam/v/Dense_512/bias/Read/ReadVariableOpReadVariableOpAdam/v/Dense_512/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/Dense_512/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/m/Dense_512/bias
|
)Adam/m/Dense_512/bias/Read/ReadVariableOpReadVariableOpAdam/m/Dense_512/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/Dense_512/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*(
shared_nameAdam/v/Dense_512/kernel
�
+Adam/v/Dense_512/kernel/Read/ReadVariableOpReadVariableOpAdam/v/Dense_512/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/m/Dense_512/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*(
shared_nameAdam/m/Dense_512/kernel
�
+Adam/m/Dense_512/kernel/Read/ReadVariableOpReadVariableOpAdam/m/Dense_512/kernel* 
_output_shapes
:
��*
dtype0
�
"Adam/v/batch_normalization_24/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/v/batch_normalization_24/beta
�
6Adam/v/batch_normalization_24/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_24/beta*
_output_shapes	
:�*
dtype0
�
"Adam/m/batch_normalization_24/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/m/batch_normalization_24/beta
�
6Adam/m/batch_normalization_24/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_24/beta*
_output_shapes	
:�*
dtype0
�
#Adam/v/batch_normalization_24/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*4
shared_name%#Adam/v/batch_normalization_24/gamma
�
7Adam/v/batch_normalization_24/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_24/gamma*
_output_shapes	
:�*
dtype0
�
#Adam/m/batch_normalization_24/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*4
shared_name%#Adam/m/batch_normalization_24/gamma
�
7Adam/m/batch_normalization_24/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_24/gamma*
_output_shapes	
:�*
dtype0
�
Adam/v/Dense_1024/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*'
shared_nameAdam/v/Dense_1024/bias
~
*Adam/v/Dense_1024/bias/Read/ReadVariableOpReadVariableOpAdam/v/Dense_1024/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/Dense_1024/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*'
shared_nameAdam/m/Dense_1024/bias
~
*Adam/m/Dense_1024/bias/Read/ReadVariableOpReadVariableOpAdam/m/Dense_1024/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/Dense_1024/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*)
shared_nameAdam/v/Dense_1024/kernel
�
,Adam/v/Dense_1024/kernel/Read/ReadVariableOpReadVariableOpAdam/v/Dense_1024/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/m/Dense_1024/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*)
shared_nameAdam/m/Dense_1024/kernel
�
,Adam/m/Dense_1024/kernel/Read/ReadVariableOpReadVariableOpAdam/m/Dense_1024/kernel* 
_output_shapes
:
��*
dtype0
�
"Adam/v/batch_normalization_23/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/v/batch_normalization_23/beta
�
6Adam/v/batch_normalization_23/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_23/beta*
_output_shapes	
:�*
dtype0
�
"Adam/m/batch_normalization_23/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/m/batch_normalization_23/beta
�
6Adam/m/batch_normalization_23/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_23/beta*
_output_shapes	
:�*
dtype0
�
#Adam/v/batch_normalization_23/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*4
shared_name%#Adam/v/batch_normalization_23/gamma
�
7Adam/v/batch_normalization_23/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_23/gamma*
_output_shapes	
:�*
dtype0
�
#Adam/m/batch_normalization_23/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*4
shared_name%#Adam/m/batch_normalization_23/gamma
�
7Adam/m/batch_normalization_23/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_23/gamma*
_output_shapes	
:�*
dtype0
�
Adam/v/Conv2D_128/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*'
shared_nameAdam/v/Conv2D_128/bias
~
*Adam/v/Conv2D_128/bias/Read/ReadVariableOpReadVariableOpAdam/v/Conv2D_128/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/Conv2D_128/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*'
shared_nameAdam/m/Conv2D_128/bias
~
*Adam/m/Conv2D_128/bias/Read/ReadVariableOpReadVariableOpAdam/m/Conv2D_128/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/Conv2D_128/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*)
shared_nameAdam/v/Conv2D_128/kernel
�
,Adam/v/Conv2D_128/kernel/Read/ReadVariableOpReadVariableOpAdam/v/Conv2D_128/kernel*'
_output_shapes
:@�*
dtype0
�
Adam/m/Conv2D_128/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*)
shared_nameAdam/m/Conv2D_128/kernel
�
,Adam/m/Conv2D_128/kernel/Read/ReadVariableOpReadVariableOpAdam/m/Conv2D_128/kernel*'
_output_shapes
:@�*
dtype0
�
"Adam/v/batch_normalization_22/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/v/batch_normalization_22/beta
�
6Adam/v/batch_normalization_22/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_22/beta*
_output_shapes
:@*
dtype0
�
"Adam/m/batch_normalization_22/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/m/batch_normalization_22/beta
�
6Adam/m/batch_normalization_22/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_22/beta*
_output_shapes
:@*
dtype0
�
#Adam/v/batch_normalization_22/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/v/batch_normalization_22/gamma
�
7Adam/v/batch_normalization_22/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_22/gamma*
_output_shapes
:@*
dtype0
�
#Adam/m/batch_normalization_22/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/m/batch_normalization_22/gamma
�
7Adam/m/batch_normalization_22/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_22/gamma*
_output_shapes
:@*
dtype0
�
Adam/v/Conv2D_64/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/v/Conv2D_64/bias
{
)Adam/v/Conv2D_64/bias/Read/ReadVariableOpReadVariableOpAdam/v/Conv2D_64/bias*
_output_shapes
:@*
dtype0
�
Adam/m/Conv2D_64/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/m/Conv2D_64/bias
{
)Adam/m/Conv2D_64/bias/Read/ReadVariableOpReadVariableOpAdam/m/Conv2D_64/bias*
_output_shapes
:@*
dtype0
�
Adam/v/Conv2D_64/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/v/Conv2D_64/kernel
�
+Adam/v/Conv2D_64/kernel/Read/ReadVariableOpReadVariableOpAdam/v/Conv2D_64/kernel*&
_output_shapes
: @*
dtype0
�
Adam/m/Conv2D_64/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/m/Conv2D_64/kernel
�
+Adam/m/Conv2D_64/kernel/Read/ReadVariableOpReadVariableOpAdam/m/Conv2D_64/kernel*&
_output_shapes
: @*
dtype0
�
"Adam/v/batch_normalization_21/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/v/batch_normalization_21/beta
�
6Adam/v/batch_normalization_21/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_21/beta*
_output_shapes
: *
dtype0
�
"Adam/m/batch_normalization_21/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/m/batch_normalization_21/beta
�
6Adam/m/batch_normalization_21/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_21/beta*
_output_shapes
: *
dtype0
�
#Adam/v/batch_normalization_21/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/v/batch_normalization_21/gamma
�
7Adam/v/batch_normalization_21/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_21/gamma*
_output_shapes
: *
dtype0
�
#Adam/m/batch_normalization_21/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/m/batch_normalization_21/gamma
�
7Adam/m/batch_normalization_21/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_21/gamma*
_output_shapes
: *
dtype0
�
Adam/v/Conv2D_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/v/Conv2D_32/bias
{
)Adam/v/Conv2D_32/bias/Read/ReadVariableOpReadVariableOpAdam/v/Conv2D_32/bias*
_output_shapes
: *
dtype0
�
Adam/m/Conv2D_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/m/Conv2D_32/bias
{
)Adam/m/Conv2D_32/bias/Read/ReadVariableOpReadVariableOpAdam/m/Conv2D_32/bias*
_output_shapes
: *
dtype0
�
Adam/v/Conv2D_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/v/Conv2D_32/kernel
�
+Adam/v/Conv2D_32/kernel/Read/ReadVariableOpReadVariableOpAdam/v/Conv2D_32/kernel*&
_output_shapes
: *
dtype0
�
Adam/m/Conv2D_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/m/Conv2D_32/kernel
�
+Adam/m/Conv2D_32/kernel/Read/ReadVariableOpReadVariableOpAdam/m/Conv2D_32/kernel*&
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
�
Output_Layer_Dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameOutput_Layer_Dense_7/bias
�
-Output_Layer_Dense_7/bias/Read/ReadVariableOpReadVariableOpOutput_Layer_Dense_7/bias*
_output_shapes
:*
dtype0
�
Output_Layer_Dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*,
shared_nameOutput_Layer_Dense_7/kernel
�
/Output_Layer_Dense_7/kernel/Read/ReadVariableOpReadVariableOpOutput_Layer_Dense_7/kernel*
_output_shapes
:	�*
dtype0
�
&batch_normalization_27/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*7
shared_name(&batch_normalization_27/moving_variance
�
:batch_normalization_27/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_27/moving_variance*
_output_shapes	
:�*
dtype0
�
"batch_normalization_27/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"batch_normalization_27/moving_mean
�
6batch_normalization_27/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_27/moving_mean*
_output_shapes	
:�*
dtype0
�
batch_normalization_27/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namebatch_normalization_27/beta
�
/batch_normalization_27/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_27/beta*
_output_shapes	
:�*
dtype0
�
batch_normalization_27/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*-
shared_namebatch_normalization_27/gamma
�
0batch_normalization_27/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_27/gamma*
_output_shapes	
:�*
dtype0
u
Dense_128/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameDense_128/bias
n
"Dense_128/bias/Read/ReadVariableOpReadVariableOpDense_128/bias*
_output_shapes	
:�*
dtype0
~
Dense_128/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*!
shared_nameDense_128/kernel
w
$Dense_128/kernel/Read/ReadVariableOpReadVariableOpDense_128/kernel* 
_output_shapes
:
��*
dtype0
�
&batch_normalization_26/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*7
shared_name(&batch_normalization_26/moving_variance
�
:batch_normalization_26/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_26/moving_variance*
_output_shapes	
:�*
dtype0
�
"batch_normalization_26/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"batch_normalization_26/moving_mean
�
6batch_normalization_26/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_26/moving_mean*
_output_shapes	
:�*
dtype0
�
batch_normalization_26/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namebatch_normalization_26/beta
�
/batch_normalization_26/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_26/beta*
_output_shapes	
:�*
dtype0
�
batch_normalization_26/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*-
shared_namebatch_normalization_26/gamma
�
0batch_normalization_26/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_26/gamma*
_output_shapes	
:�*
dtype0
u
Dense_256/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameDense_256/bias
n
"Dense_256/bias/Read/ReadVariableOpReadVariableOpDense_256/bias*
_output_shapes	
:�*
dtype0
~
Dense_256/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*!
shared_nameDense_256/kernel
w
$Dense_256/kernel/Read/ReadVariableOpReadVariableOpDense_256/kernel* 
_output_shapes
:
��*
dtype0
�
&batch_normalization_25/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*7
shared_name(&batch_normalization_25/moving_variance
�
:batch_normalization_25/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_25/moving_variance*
_output_shapes	
:�*
dtype0
�
"batch_normalization_25/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"batch_normalization_25/moving_mean
�
6batch_normalization_25/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_25/moving_mean*
_output_shapes	
:�*
dtype0
�
batch_normalization_25/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namebatch_normalization_25/beta
�
/batch_normalization_25/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_25/beta*
_output_shapes	
:�*
dtype0
�
batch_normalization_25/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*-
shared_namebatch_normalization_25/gamma
�
0batch_normalization_25/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_25/gamma*
_output_shapes	
:�*
dtype0
u
Dense_512/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameDense_512/bias
n
"Dense_512/bias/Read/ReadVariableOpReadVariableOpDense_512/bias*
_output_shapes	
:�*
dtype0
~
Dense_512/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*!
shared_nameDense_512/kernel
w
$Dense_512/kernel/Read/ReadVariableOpReadVariableOpDense_512/kernel* 
_output_shapes
:
��*
dtype0
�
&batch_normalization_24/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*7
shared_name(&batch_normalization_24/moving_variance
�
:batch_normalization_24/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_24/moving_variance*
_output_shapes	
:�*
dtype0
�
"batch_normalization_24/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"batch_normalization_24/moving_mean
�
6batch_normalization_24/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_24/moving_mean*
_output_shapes	
:�*
dtype0
�
batch_normalization_24/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namebatch_normalization_24/beta
�
/batch_normalization_24/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_24/beta*
_output_shapes	
:�*
dtype0
�
batch_normalization_24/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*-
shared_namebatch_normalization_24/gamma
�
0batch_normalization_24/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_24/gamma*
_output_shapes	
:�*
dtype0
w
Dense_1024/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�* 
shared_nameDense_1024/bias
p
#Dense_1024/bias/Read/ReadVariableOpReadVariableOpDense_1024/bias*
_output_shapes	
:�*
dtype0
�
Dense_1024/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*"
shared_nameDense_1024/kernel
y
%Dense_1024/kernel/Read/ReadVariableOpReadVariableOpDense_1024/kernel* 
_output_shapes
:
��*
dtype0
�
&batch_normalization_23/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*7
shared_name(&batch_normalization_23/moving_variance
�
:batch_normalization_23/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_23/moving_variance*
_output_shapes	
:�*
dtype0
�
"batch_normalization_23/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"batch_normalization_23/moving_mean
�
6batch_normalization_23/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_23/moving_mean*
_output_shapes	
:�*
dtype0
�
batch_normalization_23/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namebatch_normalization_23/beta
�
/batch_normalization_23/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_23/beta*
_output_shapes	
:�*
dtype0
�
batch_normalization_23/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*-
shared_namebatch_normalization_23/gamma
�
0batch_normalization_23/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_23/gamma*
_output_shapes	
:�*
dtype0
w
Conv2D_128/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�* 
shared_nameConv2D_128/bias
p
#Conv2D_128/bias/Read/ReadVariableOpReadVariableOpConv2D_128/bias*
_output_shapes	
:�*
dtype0
�
Conv2D_128/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*"
shared_nameConv2D_128/kernel
�
%Conv2D_128/kernel/Read/ReadVariableOpReadVariableOpConv2D_128/kernel*'
_output_shapes
:@�*
dtype0
�
&batch_normalization_22/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_22/moving_variance
�
:batch_normalization_22/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_22/moving_variance*
_output_shapes
:@*
dtype0
�
"batch_normalization_22/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_22/moving_mean
�
6batch_normalization_22/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_22/moving_mean*
_output_shapes
:@*
dtype0
�
batch_normalization_22/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_22/beta
�
/batch_normalization_22/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_22/beta*
_output_shapes
:@*
dtype0
�
batch_normalization_22/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_22/gamma
�
0batch_normalization_22/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_22/gamma*
_output_shapes
:@*
dtype0
t
Conv2D_64/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameConv2D_64/bias
m
"Conv2D_64/bias/Read/ReadVariableOpReadVariableOpConv2D_64/bias*
_output_shapes
:@*
dtype0
�
Conv2D_64/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameConv2D_64/kernel
}
$Conv2D_64/kernel/Read/ReadVariableOpReadVariableOpConv2D_64/kernel*&
_output_shapes
: @*
dtype0
�
&batch_normalization_21/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&batch_normalization_21/moving_variance
�
:batch_normalization_21/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_21/moving_variance*
_output_shapes
: *
dtype0
�
"batch_normalization_21/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"batch_normalization_21/moving_mean
�
6batch_normalization_21/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_21/moving_mean*
_output_shapes
: *
dtype0
�
batch_normalization_21/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_21/beta
�
/batch_normalization_21/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_21/beta*
_output_shapes
: *
dtype0
�
batch_normalization_21/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_21/gamma
�
0batch_normalization_21/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_21/gamma*
_output_shapes
: *
dtype0
t
Conv2D_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameConv2D_32/bias
m
"Conv2D_32/bias/Read/ReadVariableOpReadVariableOpConv2D_32/bias*
_output_shapes
: *
dtype0
�
Conv2D_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameConv2D_32/kernel
}
$Conv2D_32/kernel/Read/ReadVariableOpReadVariableOpConv2D_32/kernel*&
_output_shapes
: *
dtype0
�
serving_default_Conv2D_32_inputPlaceholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_Conv2D_32_inputConv2D_32/kernelConv2D_32/biasbatch_normalization_21/gammabatch_normalization_21/beta"batch_normalization_21/moving_mean&batch_normalization_21/moving_varianceConv2D_64/kernelConv2D_64/biasbatch_normalization_22/gammabatch_normalization_22/beta"batch_normalization_22/moving_mean&batch_normalization_22/moving_varianceConv2D_128/kernelConv2D_128/biasbatch_normalization_23/gammabatch_normalization_23/beta"batch_normalization_23/moving_mean&batch_normalization_23/moving_varianceDense_1024/kernelDense_1024/bias&batch_normalization_24/moving_variancebatch_normalization_24/gamma"batch_normalization_24/moving_meanbatch_normalization_24/betaDense_512/kernelDense_512/bias&batch_normalization_25/moving_variancebatch_normalization_25/gamma"batch_normalization_25/moving_meanbatch_normalization_25/betaDense_256/kernelDense_256/bias&batch_normalization_26/moving_variancebatch_normalization_26/gamma"batch_normalization_26/moving_meanbatch_normalization_26/betaDense_128/kernelDense_128/bias&batch_normalization_27/moving_variancebatch_normalization_27/gamma"batch_normalization_27/moving_meanbatch_normalization_27/betaOutput_Layer_Dense_7/kernelOutput_Layer_Dense_7/bias*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*N
_read_only_resource_inputs0
.,	
 !"#$%&'()*+,*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_653433

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B��
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer-9
layer_with_weights-6
layer-10
layer_with_weights-7
layer-11
layer-12
layer_with_weights-8
layer-13
layer_with_weights-9
layer-14
layer-15
layer_with_weights-10
layer-16
layer_with_weights-11
layer-17
layer-18
layer_with_weights-12
layer-19
layer_with_weights-13
layer-20
layer-21
layer_with_weights-14
layer-22
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
 
signatures*
�
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses

'kernel
(bias
 )_jit_compiled_convolution_op*
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
0axis
	1gamma
2beta
3moving_mean
4moving_variance*
�
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses* 
�
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses

Akernel
Bbias
 C_jit_compiled_convolution_op*
�
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses
Jaxis
	Kgamma
Lbeta
Mmoving_mean
Nmoving_variance*
�
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses* 
�
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses

[kernel
\bias
 ]_jit_compiled_convolution_op*
�
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses
daxis
	egamma
fbeta
gmoving_mean
hmoving_variance*
�
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses* 
�
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses* 
�
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
y__call__
*z&call_and_return_all_conditional_losses

{kernel
|bias*
�
}	variables
~trainable_variables
regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
'0
(1
12
23
34
45
A6
B7
K8
L9
M10
N11
[12
\13
e14
f15
g16
h17
{18
|19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43*
�
'0
(1
12
23
A4
B5
K6
L7
[8
\9
e10
f11
{12
|13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
�
�
_variables
�_iterations
�_learning_rate
�_index_dict
�
_momentums
�_velocities
�_update_step_xla*

�serving_default* 

'0
(1*

'0
(1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEConv2D_32/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEConv2D_32/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
10
21
32
43*

10
21*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_21/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_21/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_21/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_21/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

A0
B1*

A0
B1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEConv2D_64/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEConv2D_64/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
K0
L1
M2
N3*

K0
L1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_22/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_22/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_22/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_22/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

[0
\1*

[0
\1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEConv2D_128/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEConv2D_128/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
e0
f1
g2
h3*

e0
f1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_23/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_23/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_23/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_23/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

{0
|1*

{0
|1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
u	variables
vtrainable_variables
wregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEDense_1024/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEDense_1024/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
}	variables
~trainable_variables
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_24/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_24/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_24/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_24/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEDense_512/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEDense_512/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_25/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_25/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_25/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_25/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEDense_256/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEDense_256/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
lf
VARIABLE_VALUEbatch_normalization_26/gamma6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_26/beta5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE"batch_normalization_26/moving_mean<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE&batch_normalization_26/moving_variance@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEDense_128/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEDense_128/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
lf
VARIABLE_VALUEbatch_normalization_27/gamma6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_27/beta5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE"batch_normalization_27/moving_mean<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE&batch_normalization_27/moving_variance@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
lf
VARIABLE_VALUEOutput_Layer_Dense_7/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEOutput_Layer_Dense_7/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE*
r
30
41
M2
N3
g4
h5
�6
�7
�8
�9
�10
�11
�12
�13*
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22*

�0
�1
�2*
* 
* 
* 
* 
* 
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53
�54
�55
�56
�57
�58
�59
�60*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29*
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29*
* 
* 
* 
* 
* 
* 
* 
* 
* 

30
41*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

M0
N1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

g0
h1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
b\
VARIABLE_VALUEAdam/m/Conv2D_32/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/Conv2D_32/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/Conv2D_32/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/Conv2D_32/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE#Adam/m/batch_normalization_21/gamma1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE#Adam/v/batch_normalization_21/gamma1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/m/batch_normalization_21/beta1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/v/batch_normalization_21/beta1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/Conv2D_64/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/Conv2D_64/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/Conv2D_64/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/Conv2D_64/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_22/gamma2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_22/gamma2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_22/beta2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_22/beta2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/m/Conv2D_128/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/v/Conv2D_128/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/Conv2D_128/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/Conv2D_128/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_23/gamma2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_23/gamma2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_23/beta2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_23/beta2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/m/Dense_1024/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/v/Dense_1024/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/Dense_1024/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/Dense_1024/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_24/gamma2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_24/gamma2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_24/beta2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_24/beta2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/Dense_512/kernel2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/Dense_512/kernel2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/Dense_512/bias2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/Dense_512/bias2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_25/gamma2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_25/gamma2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_25/beta2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_25/beta2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/Dense_256/kernel2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/Dense_256/kernel2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/Dense_256/bias2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/Dense_256/bias2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_26/gamma2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_26/gamma2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_26/beta2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_26/beta2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/Dense_128/kernel2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/Dense_128/kernel2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/Dense_128/bias2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/Dense_128/bias2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_27/gamma2optimizer/_variables/53/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_27/gamma2optimizer/_variables/54/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_27/beta2optimizer/_variables/55/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_27/beta2optimizer/_variables/56/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/Output_Layer_Dense_7/kernel2optimizer/_variables/57/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/Output_Layer_Dense_7/kernel2optimizer/_variables/58/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE Adam/m/Output_Layer_Dense_7/bias2optimizer/_variables/59/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE Adam/v/Output_Layer_Dense_7/bias2optimizer/_variables/60/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameConv2D_32/kernelConv2D_32/biasbatch_normalization_21/gammabatch_normalization_21/beta"batch_normalization_21/moving_mean&batch_normalization_21/moving_varianceConv2D_64/kernelConv2D_64/biasbatch_normalization_22/gammabatch_normalization_22/beta"batch_normalization_22/moving_mean&batch_normalization_22/moving_varianceConv2D_128/kernelConv2D_128/biasbatch_normalization_23/gammabatch_normalization_23/beta"batch_normalization_23/moving_mean&batch_normalization_23/moving_varianceDense_1024/kernelDense_1024/biasbatch_normalization_24/gammabatch_normalization_24/beta"batch_normalization_24/moving_mean&batch_normalization_24/moving_varianceDense_512/kernelDense_512/biasbatch_normalization_25/gammabatch_normalization_25/beta"batch_normalization_25/moving_mean&batch_normalization_25/moving_varianceDense_256/kernelDense_256/biasbatch_normalization_26/gammabatch_normalization_26/beta"batch_normalization_26/moving_mean&batch_normalization_26/moving_varianceDense_128/kernelDense_128/biasbatch_normalization_27/gammabatch_normalization_27/beta"batch_normalization_27/moving_mean&batch_normalization_27/moving_varianceOutput_Layer_Dense_7/kernelOutput_Layer_Dense_7/bias	iterationlearning_rateAdam/m/Conv2D_32/kernelAdam/v/Conv2D_32/kernelAdam/m/Conv2D_32/biasAdam/v/Conv2D_32/bias#Adam/m/batch_normalization_21/gamma#Adam/v/batch_normalization_21/gamma"Adam/m/batch_normalization_21/beta"Adam/v/batch_normalization_21/betaAdam/m/Conv2D_64/kernelAdam/v/Conv2D_64/kernelAdam/m/Conv2D_64/biasAdam/v/Conv2D_64/bias#Adam/m/batch_normalization_22/gamma#Adam/v/batch_normalization_22/gamma"Adam/m/batch_normalization_22/beta"Adam/v/batch_normalization_22/betaAdam/m/Conv2D_128/kernelAdam/v/Conv2D_128/kernelAdam/m/Conv2D_128/biasAdam/v/Conv2D_128/bias#Adam/m/batch_normalization_23/gamma#Adam/v/batch_normalization_23/gamma"Adam/m/batch_normalization_23/beta"Adam/v/batch_normalization_23/betaAdam/m/Dense_1024/kernelAdam/v/Dense_1024/kernelAdam/m/Dense_1024/biasAdam/v/Dense_1024/bias#Adam/m/batch_normalization_24/gamma#Adam/v/batch_normalization_24/gamma"Adam/m/batch_normalization_24/beta"Adam/v/batch_normalization_24/betaAdam/m/Dense_512/kernelAdam/v/Dense_512/kernelAdam/m/Dense_512/biasAdam/v/Dense_512/bias#Adam/m/batch_normalization_25/gamma#Adam/v/batch_normalization_25/gamma"Adam/m/batch_normalization_25/beta"Adam/v/batch_normalization_25/betaAdam/m/Dense_256/kernelAdam/v/Dense_256/kernelAdam/m/Dense_256/biasAdam/v/Dense_256/bias#Adam/m/batch_normalization_26/gamma#Adam/v/batch_normalization_26/gamma"Adam/m/batch_normalization_26/beta"Adam/v/batch_normalization_26/betaAdam/m/Dense_128/kernelAdam/v/Dense_128/kernelAdam/m/Dense_128/biasAdam/v/Dense_128/bias#Adam/m/batch_normalization_27/gamma#Adam/v/batch_normalization_27/gamma"Adam/m/batch_normalization_27/beta"Adam/v/batch_normalization_27/beta"Adam/m/Output_Layer_Dense_7/kernel"Adam/v/Output_Layer_Dense_7/kernel Adam/m/Output_Layer_Dense_7/bias Adam/v/Output_Layer_Dense_7/biastotal_2count_2total_1count_1totalcountConst*}
Tinv
t2r*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference__traced_save_654942
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameConv2D_32/kernelConv2D_32/biasbatch_normalization_21/gammabatch_normalization_21/beta"batch_normalization_21/moving_mean&batch_normalization_21/moving_varianceConv2D_64/kernelConv2D_64/biasbatch_normalization_22/gammabatch_normalization_22/beta"batch_normalization_22/moving_mean&batch_normalization_22/moving_varianceConv2D_128/kernelConv2D_128/biasbatch_normalization_23/gammabatch_normalization_23/beta"batch_normalization_23/moving_mean&batch_normalization_23/moving_varianceDense_1024/kernelDense_1024/biasbatch_normalization_24/gammabatch_normalization_24/beta"batch_normalization_24/moving_mean&batch_normalization_24/moving_varianceDense_512/kernelDense_512/biasbatch_normalization_25/gammabatch_normalization_25/beta"batch_normalization_25/moving_mean&batch_normalization_25/moving_varianceDense_256/kernelDense_256/biasbatch_normalization_26/gammabatch_normalization_26/beta"batch_normalization_26/moving_mean&batch_normalization_26/moving_varianceDense_128/kernelDense_128/biasbatch_normalization_27/gammabatch_normalization_27/beta"batch_normalization_27/moving_mean&batch_normalization_27/moving_varianceOutput_Layer_Dense_7/kernelOutput_Layer_Dense_7/bias	iterationlearning_rateAdam/m/Conv2D_32/kernelAdam/v/Conv2D_32/kernelAdam/m/Conv2D_32/biasAdam/v/Conv2D_32/bias#Adam/m/batch_normalization_21/gamma#Adam/v/batch_normalization_21/gamma"Adam/m/batch_normalization_21/beta"Adam/v/batch_normalization_21/betaAdam/m/Conv2D_64/kernelAdam/v/Conv2D_64/kernelAdam/m/Conv2D_64/biasAdam/v/Conv2D_64/bias#Adam/m/batch_normalization_22/gamma#Adam/v/batch_normalization_22/gamma"Adam/m/batch_normalization_22/beta"Adam/v/batch_normalization_22/betaAdam/m/Conv2D_128/kernelAdam/v/Conv2D_128/kernelAdam/m/Conv2D_128/biasAdam/v/Conv2D_128/bias#Adam/m/batch_normalization_23/gamma#Adam/v/batch_normalization_23/gamma"Adam/m/batch_normalization_23/beta"Adam/v/batch_normalization_23/betaAdam/m/Dense_1024/kernelAdam/v/Dense_1024/kernelAdam/m/Dense_1024/biasAdam/v/Dense_1024/bias#Adam/m/batch_normalization_24/gamma#Adam/v/batch_normalization_24/gamma"Adam/m/batch_normalization_24/beta"Adam/v/batch_normalization_24/betaAdam/m/Dense_512/kernelAdam/v/Dense_512/kernelAdam/m/Dense_512/biasAdam/v/Dense_512/bias#Adam/m/batch_normalization_25/gamma#Adam/v/batch_normalization_25/gamma"Adam/m/batch_normalization_25/beta"Adam/v/batch_normalization_25/betaAdam/m/Dense_256/kernelAdam/v/Dense_256/kernelAdam/m/Dense_256/biasAdam/v/Dense_256/bias#Adam/m/batch_normalization_26/gamma#Adam/v/batch_normalization_26/gamma"Adam/m/batch_normalization_26/beta"Adam/v/batch_normalization_26/betaAdam/m/Dense_128/kernelAdam/v/Dense_128/kernelAdam/m/Dense_128/biasAdam/v/Dense_128/bias#Adam/m/batch_normalization_27/gamma#Adam/v/batch_normalization_27/gamma"Adam/m/batch_normalization_27/beta"Adam/v/batch_normalization_27/beta"Adam/m/Output_Layer_Dense_7/kernel"Adam/v/Output_Layer_Dense_7/kernel Adam/m/Output_Layer_Dense_7/bias Adam/v/Output_Layer_Dense_7/biastotal_2count_2total_1count_1totalcount*|
Tinu
s2q*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__traced_restore_655287۱
�
�
*__inference_Dense_256_layer_call_fn_653983

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Dense_256_layer_call_and_return_conditional_losses_652821p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:&"
 
_user_specified_name653977:&"
 
_user_specified_name653979
�
�
R__inference_batch_normalization_24_layer_call_and_return_conditional_losses_652387

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_652142

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
+__inference_Conv2D_128_layer_call_fn_653626

inputs"
unknown:@�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_Conv2D_128_layer_call_and_return_conditional_losses_652718x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:&"
 
_user_specified_name653620:&"
 
_user_specified_name653622
�
G
+__inference_dropout_13_layer_call_fn_653957

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_13_layer_call_and_return_conditional_losses_652991a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

e
F__inference_dropout_15_layer_call_and_return_conditional_losses_652885

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�&
�
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_654181

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_653497

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
7__inference_batch_normalization_25_layer_call_fn_653880

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_25_layer_call_and_return_conditional_losses_652447p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:&"
 
_user_specified_name653870:&"
 
_user_specified_name653872:&"
 
_user_specified_name653874:&"
 
_user_specified_name653876
�#
�

$__inference_signature_wrapper_653433
conv2d_32_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@�

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:
��

unknown_18:	�

unknown_19:	�

unknown_20:	�

unknown_21:	�

unknown_22:	�

unknown_23:
��

unknown_24:	�

unknown_25:	�

unknown_26:	�

unknown_27:	�

unknown_28:	�

unknown_29:
��

unknown_30:	�

unknown_31:	�

unknown_32:	�

unknown_33:	�

unknown_34:	�

unknown_35:
��

unknown_36:	�

unknown_37:	�

unknown_38:	�

unknown_39:	�

unknown_40:	�

unknown_41:	�

unknown_42:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_32_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*N
_read_only_resource_inputs0
.,	
 !"#$%&'()*+,*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_652106o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesw
u:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:�����������
)
_user_specified_nameConv2D_32_input:&"
 
_user_specified_name653343:&"
 
_user_specified_name653345:&"
 
_user_specified_name653347:&"
 
_user_specified_name653349:&"
 
_user_specified_name653351:&"
 
_user_specified_name653353:&"
 
_user_specified_name653355:&"
 
_user_specified_name653357:&	"
 
_user_specified_name653359:&
"
 
_user_specified_name653361:&"
 
_user_specified_name653363:&"
 
_user_specified_name653365:&"
 
_user_specified_name653367:&"
 
_user_specified_name653369:&"
 
_user_specified_name653371:&"
 
_user_specified_name653373:&"
 
_user_specified_name653375:&"
 
_user_specified_name653377:&"
 
_user_specified_name653379:&"
 
_user_specified_name653381:&"
 
_user_specified_name653383:&"
 
_user_specified_name653385:&"
 
_user_specified_name653387:&"
 
_user_specified_name653389:&"
 
_user_specified_name653391:&"
 
_user_specified_name653393:&"
 
_user_specified_name653395:&"
 
_user_specified_name653397:&"
 
_user_specified_name653399:&"
 
_user_specified_name653401:&"
 
_user_specified_name653403:& "
 
_user_specified_name653405:&!"
 
_user_specified_name653407:&""
 
_user_specified_name653409:&#"
 
_user_specified_name653411:&$"
 
_user_specified_name653413:&%"
 
_user_specified_name653415:&&"
 
_user_specified_name653417:&'"
 
_user_specified_name653419:&("
 
_user_specified_name653421:&)"
 
_user_specified_name653423:&*"
 
_user_specified_name653425:&+"
 
_user_specified_name653427:&,"
 
_user_specified_name653429
�
�
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_654201

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
7__inference_batch_normalization_27_layer_call_fn_654147

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_652627p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:&"
 
_user_specified_name654137:&"
 
_user_specified_name654139:&"
 
_user_specified_name654141:&"
 
_user_specified_name654143
�
d
+__inference_dropout_12_layer_call_fn_653825

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_12_layer_call_and_return_conditional_losses_652771p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_653681

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
d
F__inference_dropout_13_layer_call_and_return_conditional_losses_652991

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�&
�
R__inference_batch_normalization_25_layer_call_and_return_conditional_losses_653927

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
G
+__inference_dropout_12_layer_call_fn_653830

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_12_layer_call_and_return_conditional_losses_652971a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_652317

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
F__inference_Conv2D_128_layer_call_and_return_conditional_losses_653637

inputs9
conv2d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�1
!__inference__wrapped_model_652106
conv2d_32_inputP
6cnn_model_1o4_conv2d_32_conv2d_readvariableop_resource: E
7cnn_model_1o4_conv2d_32_biasadd_readvariableop_resource: J
<cnn_model_1o4_batch_normalization_21_readvariableop_resource: L
>cnn_model_1o4_batch_normalization_21_readvariableop_1_resource: [
Mcnn_model_1o4_batch_normalization_21_fusedbatchnormv3_readvariableop_resource: ]
Ocnn_model_1o4_batch_normalization_21_fusedbatchnormv3_readvariableop_1_resource: P
6cnn_model_1o4_conv2d_64_conv2d_readvariableop_resource: @E
7cnn_model_1o4_conv2d_64_biasadd_readvariableop_resource:@J
<cnn_model_1o4_batch_normalization_22_readvariableop_resource:@L
>cnn_model_1o4_batch_normalization_22_readvariableop_1_resource:@[
Mcnn_model_1o4_batch_normalization_22_fusedbatchnormv3_readvariableop_resource:@]
Ocnn_model_1o4_batch_normalization_22_fusedbatchnormv3_readvariableop_1_resource:@R
7cnn_model_1o4_conv2d_128_conv2d_readvariableop_resource:@�G
8cnn_model_1o4_conv2d_128_biasadd_readvariableop_resource:	�K
<cnn_model_1o4_batch_normalization_23_readvariableop_resource:	�M
>cnn_model_1o4_batch_normalization_23_readvariableop_1_resource:	�\
Mcnn_model_1o4_batch_normalization_23_fusedbatchnormv3_readvariableop_resource:	�^
Ocnn_model_1o4_batch_normalization_23_fusedbatchnormv3_readvariableop_1_resource:	�K
7cnn_model_1o4_dense_1024_matmul_readvariableop_resource:
��G
8cnn_model_1o4_dense_1024_biasadd_readvariableop_resource:	�U
Fcnn_model_1o4_batch_normalization_24_batchnorm_readvariableop_resource:	�Y
Jcnn_model_1o4_batch_normalization_24_batchnorm_mul_readvariableop_resource:	�W
Hcnn_model_1o4_batch_normalization_24_batchnorm_readvariableop_1_resource:	�W
Hcnn_model_1o4_batch_normalization_24_batchnorm_readvariableop_2_resource:	�J
6cnn_model_1o4_dense_512_matmul_readvariableop_resource:
��F
7cnn_model_1o4_dense_512_biasadd_readvariableop_resource:	�U
Fcnn_model_1o4_batch_normalization_25_batchnorm_readvariableop_resource:	�Y
Jcnn_model_1o4_batch_normalization_25_batchnorm_mul_readvariableop_resource:	�W
Hcnn_model_1o4_batch_normalization_25_batchnorm_readvariableop_1_resource:	�W
Hcnn_model_1o4_batch_normalization_25_batchnorm_readvariableop_2_resource:	�J
6cnn_model_1o4_dense_256_matmul_readvariableop_resource:
��F
7cnn_model_1o4_dense_256_biasadd_readvariableop_resource:	�U
Fcnn_model_1o4_batch_normalization_26_batchnorm_readvariableop_resource:	�Y
Jcnn_model_1o4_batch_normalization_26_batchnorm_mul_readvariableop_resource:	�W
Hcnn_model_1o4_batch_normalization_26_batchnorm_readvariableop_1_resource:	�W
Hcnn_model_1o4_batch_normalization_26_batchnorm_readvariableop_2_resource:	�J
6cnn_model_1o4_dense_128_matmul_readvariableop_resource:
��F
7cnn_model_1o4_dense_128_biasadd_readvariableop_resource:	�U
Fcnn_model_1o4_batch_normalization_27_batchnorm_readvariableop_resource:	�Y
Jcnn_model_1o4_batch_normalization_27_batchnorm_mul_readvariableop_resource:	�W
Hcnn_model_1o4_batch_normalization_27_batchnorm_readvariableop_1_resource:	�W
Hcnn_model_1o4_batch_normalization_27_batchnorm_readvariableop_2_resource:	�T
Acnn_model_1o4_output_layer_dense_7_matmul_readvariableop_resource:	�P
Bcnn_model_1o4_output_layer_dense_7_biasadd_readvariableop_resource:
identity��/CNN_Model_1o4/Conv2D_128/BiasAdd/ReadVariableOp�.CNN_Model_1o4/Conv2D_128/Conv2D/ReadVariableOp�.CNN_Model_1o4/Conv2D_32/BiasAdd/ReadVariableOp�-CNN_Model_1o4/Conv2D_32/Conv2D/ReadVariableOp�.CNN_Model_1o4/Conv2D_64/BiasAdd/ReadVariableOp�-CNN_Model_1o4/Conv2D_64/Conv2D/ReadVariableOp�/CNN_Model_1o4/Dense_1024/BiasAdd/ReadVariableOp�.CNN_Model_1o4/Dense_1024/MatMul/ReadVariableOp�.CNN_Model_1o4/Dense_128/BiasAdd/ReadVariableOp�-CNN_Model_1o4/Dense_128/MatMul/ReadVariableOp�.CNN_Model_1o4/Dense_256/BiasAdd/ReadVariableOp�-CNN_Model_1o4/Dense_256/MatMul/ReadVariableOp�.CNN_Model_1o4/Dense_512/BiasAdd/ReadVariableOp�-CNN_Model_1o4/Dense_512/MatMul/ReadVariableOp�9CNN_Model_1o4/Output_Layer_Dense_7/BiasAdd/ReadVariableOp�8CNN_Model_1o4/Output_Layer_Dense_7/MatMul/ReadVariableOp�DCNN_Model_1o4/batch_normalization_21/FusedBatchNormV3/ReadVariableOp�FCNN_Model_1o4/batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1�3CNN_Model_1o4/batch_normalization_21/ReadVariableOp�5CNN_Model_1o4/batch_normalization_21/ReadVariableOp_1�DCNN_Model_1o4/batch_normalization_22/FusedBatchNormV3/ReadVariableOp�FCNN_Model_1o4/batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1�3CNN_Model_1o4/batch_normalization_22/ReadVariableOp�5CNN_Model_1o4/batch_normalization_22/ReadVariableOp_1�DCNN_Model_1o4/batch_normalization_23/FusedBatchNormV3/ReadVariableOp�FCNN_Model_1o4/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1�3CNN_Model_1o4/batch_normalization_23/ReadVariableOp�5CNN_Model_1o4/batch_normalization_23/ReadVariableOp_1�=CNN_Model_1o4/batch_normalization_24/batchnorm/ReadVariableOp�?CNN_Model_1o4/batch_normalization_24/batchnorm/ReadVariableOp_1�?CNN_Model_1o4/batch_normalization_24/batchnorm/ReadVariableOp_2�ACNN_Model_1o4/batch_normalization_24/batchnorm/mul/ReadVariableOp�=CNN_Model_1o4/batch_normalization_25/batchnorm/ReadVariableOp�?CNN_Model_1o4/batch_normalization_25/batchnorm/ReadVariableOp_1�?CNN_Model_1o4/batch_normalization_25/batchnorm/ReadVariableOp_2�ACNN_Model_1o4/batch_normalization_25/batchnorm/mul/ReadVariableOp�=CNN_Model_1o4/batch_normalization_26/batchnorm/ReadVariableOp�?CNN_Model_1o4/batch_normalization_26/batchnorm/ReadVariableOp_1�?CNN_Model_1o4/batch_normalization_26/batchnorm/ReadVariableOp_2�ACNN_Model_1o4/batch_normalization_26/batchnorm/mul/ReadVariableOp�=CNN_Model_1o4/batch_normalization_27/batchnorm/ReadVariableOp�?CNN_Model_1o4/batch_normalization_27/batchnorm/ReadVariableOp_1�?CNN_Model_1o4/batch_normalization_27/batchnorm/ReadVariableOp_2�ACNN_Model_1o4/batch_normalization_27/batchnorm/mul/ReadVariableOp�
-CNN_Model_1o4/Conv2D_32/Conv2D/ReadVariableOpReadVariableOp6cnn_model_1o4_conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
CNN_Model_1o4/Conv2D_32/Conv2DConv2Dconv2d_32_input5CNN_Model_1o4/Conv2D_32/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������~~ *
paddingVALID*
strides
�
.CNN_Model_1o4/Conv2D_32/BiasAdd/ReadVariableOpReadVariableOp7cnn_model_1o4_conv2d_32_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
CNN_Model_1o4/Conv2D_32/BiasAddBiasAdd'CNN_Model_1o4/Conv2D_32/Conv2D:output:06CNN_Model_1o4/Conv2D_32/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������~~ �
CNN_Model_1o4/Conv2D_32/ReluRelu(CNN_Model_1o4/Conv2D_32/BiasAdd:output:0*
T0*/
_output_shapes
:���������~~ �
3CNN_Model_1o4/batch_normalization_21/ReadVariableOpReadVariableOp<cnn_model_1o4_batch_normalization_21_readvariableop_resource*
_output_shapes
: *
dtype0�
5CNN_Model_1o4/batch_normalization_21/ReadVariableOp_1ReadVariableOp>cnn_model_1o4_batch_normalization_21_readvariableop_1_resource*
_output_shapes
: *
dtype0�
DCNN_Model_1o4/batch_normalization_21/FusedBatchNormV3/ReadVariableOpReadVariableOpMcnn_model_1o4_batch_normalization_21_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
FCNN_Model_1o4/batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOcnn_model_1o4_batch_normalization_21_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
5CNN_Model_1o4/batch_normalization_21/FusedBatchNormV3FusedBatchNormV3*CNN_Model_1o4/Conv2D_32/Relu:activations:0;CNN_Model_1o4/batch_normalization_21/ReadVariableOp:value:0=CNN_Model_1o4/batch_normalization_21/ReadVariableOp_1:value:0LCNN_Model_1o4/batch_normalization_21/FusedBatchNormV3/ReadVariableOp:value:0NCNN_Model_1o4/batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������~~ : : : : :*
epsilon%o�:*
is_training( �
%CNN_Model_1o4/max_pooling2d_9/MaxPoolMaxPool9CNN_Model_1o4/batch_normalization_21/FusedBatchNormV3:y:0*/
_output_shapes
:���������?? *
ksize
*
paddingVALID*
strides
�
-CNN_Model_1o4/Conv2D_64/Conv2D/ReadVariableOpReadVariableOp6cnn_model_1o4_conv2d_64_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
CNN_Model_1o4/Conv2D_64/Conv2DConv2D.CNN_Model_1o4/max_pooling2d_9/MaxPool:output:05CNN_Model_1o4/Conv2D_64/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������==@*
paddingVALID*
strides
�
.CNN_Model_1o4/Conv2D_64/BiasAdd/ReadVariableOpReadVariableOp7cnn_model_1o4_conv2d_64_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
CNN_Model_1o4/Conv2D_64/BiasAddBiasAdd'CNN_Model_1o4/Conv2D_64/Conv2D:output:06CNN_Model_1o4/Conv2D_64/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������==@�
CNN_Model_1o4/Conv2D_64/ReluRelu(CNN_Model_1o4/Conv2D_64/BiasAdd:output:0*
T0*/
_output_shapes
:���������==@�
3CNN_Model_1o4/batch_normalization_22/ReadVariableOpReadVariableOp<cnn_model_1o4_batch_normalization_22_readvariableop_resource*
_output_shapes
:@*
dtype0�
5CNN_Model_1o4/batch_normalization_22/ReadVariableOp_1ReadVariableOp>cnn_model_1o4_batch_normalization_22_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
DCNN_Model_1o4/batch_normalization_22/FusedBatchNormV3/ReadVariableOpReadVariableOpMcnn_model_1o4_batch_normalization_22_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
FCNN_Model_1o4/batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOcnn_model_1o4_batch_normalization_22_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
5CNN_Model_1o4/batch_normalization_22/FusedBatchNormV3FusedBatchNormV3*CNN_Model_1o4/Conv2D_64/Relu:activations:0;CNN_Model_1o4/batch_normalization_22/ReadVariableOp:value:0=CNN_Model_1o4/batch_normalization_22/ReadVariableOp_1:value:0LCNN_Model_1o4/batch_normalization_22/FusedBatchNormV3/ReadVariableOp:value:0NCNN_Model_1o4/batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������==@:@:@:@:@:*
epsilon%o�:*
is_training( �
&CNN_Model_1o4/max_pooling2d_10/MaxPoolMaxPool9CNN_Model_1o4/batch_normalization_22/FusedBatchNormV3:y:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
.CNN_Model_1o4/Conv2D_128/Conv2D/ReadVariableOpReadVariableOp7cnn_model_1o4_conv2d_128_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
CNN_Model_1o4/Conv2D_128/Conv2DConv2D/CNN_Model_1o4/max_pooling2d_10/MaxPool:output:06CNN_Model_1o4/Conv2D_128/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
/CNN_Model_1o4/Conv2D_128/BiasAdd/ReadVariableOpReadVariableOp8cnn_model_1o4_conv2d_128_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
 CNN_Model_1o4/Conv2D_128/BiasAddBiasAdd(CNN_Model_1o4/Conv2D_128/Conv2D:output:07CNN_Model_1o4/Conv2D_128/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
CNN_Model_1o4/Conv2D_128/ReluRelu)CNN_Model_1o4/Conv2D_128/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
3CNN_Model_1o4/batch_normalization_23/ReadVariableOpReadVariableOp<cnn_model_1o4_batch_normalization_23_readvariableop_resource*
_output_shapes	
:�*
dtype0�
5CNN_Model_1o4/batch_normalization_23/ReadVariableOp_1ReadVariableOp>cnn_model_1o4_batch_normalization_23_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
DCNN_Model_1o4/batch_normalization_23/FusedBatchNormV3/ReadVariableOpReadVariableOpMcnn_model_1o4_batch_normalization_23_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
FCNN_Model_1o4/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOcnn_model_1o4_batch_normalization_23_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
5CNN_Model_1o4/batch_normalization_23/FusedBatchNormV3FusedBatchNormV3+CNN_Model_1o4/Conv2D_128/Relu:activations:0;CNN_Model_1o4/batch_normalization_23/ReadVariableOp:value:0=CNN_Model_1o4/batch_normalization_23/ReadVariableOp_1:value:0LCNN_Model_1o4/batch_normalization_23/FusedBatchNormV3/ReadVariableOp:value:0NCNN_Model_1o4/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( �
&CNN_Model_1o4/max_pooling2d_11/MaxPoolMaxPool9CNN_Model_1o4/batch_normalization_23/FusedBatchNormV3:y:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
?CNN_Model_1o4/global_average_pooling2d_3/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
-CNN_Model_1o4/global_average_pooling2d_3/MeanMean/CNN_Model_1o4/max_pooling2d_11/MaxPool:output:0HCNN_Model_1o4/global_average_pooling2d_3/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:�����������
.CNN_Model_1o4/Dense_1024/MatMul/ReadVariableOpReadVariableOp7cnn_model_1o4_dense_1024_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
CNN_Model_1o4/Dense_1024/MatMulMatMul6CNN_Model_1o4/global_average_pooling2d_3/Mean:output:06CNN_Model_1o4/Dense_1024/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/CNN_Model_1o4/Dense_1024/BiasAdd/ReadVariableOpReadVariableOp8cnn_model_1o4_dense_1024_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
 CNN_Model_1o4/Dense_1024/BiasAddBiasAdd)CNN_Model_1o4/Dense_1024/MatMul:product:07CNN_Model_1o4/Dense_1024/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
CNN_Model_1o4/Dense_1024/ReluRelu)CNN_Model_1o4/Dense_1024/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
=CNN_Model_1o4/batch_normalization_24/batchnorm/ReadVariableOpReadVariableOpFcnn_model_1o4_batch_normalization_24_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0y
4CNN_Model_1o4/batch_normalization_24/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2CNN_Model_1o4/batch_normalization_24/batchnorm/addAddV2ECNN_Model_1o4/batch_normalization_24/batchnorm/ReadVariableOp:value:0=CNN_Model_1o4/batch_normalization_24/batchnorm/add/y:output:0*
T0*
_output_shapes	
:��
4CNN_Model_1o4/batch_normalization_24/batchnorm/RsqrtRsqrt6CNN_Model_1o4/batch_normalization_24/batchnorm/add:z:0*
T0*
_output_shapes	
:��
ACNN_Model_1o4/batch_normalization_24/batchnorm/mul/ReadVariableOpReadVariableOpJcnn_model_1o4_batch_normalization_24_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
2CNN_Model_1o4/batch_normalization_24/batchnorm/mulMul8CNN_Model_1o4/batch_normalization_24/batchnorm/Rsqrt:y:0ICNN_Model_1o4/batch_normalization_24/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
4CNN_Model_1o4/batch_normalization_24/batchnorm/mul_1Mul+CNN_Model_1o4/Dense_1024/Relu:activations:06CNN_Model_1o4/batch_normalization_24/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
?CNN_Model_1o4/batch_normalization_24/batchnorm/ReadVariableOp_1ReadVariableOpHcnn_model_1o4_batch_normalization_24_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
4CNN_Model_1o4/batch_normalization_24/batchnorm/mul_2MulGCNN_Model_1o4/batch_normalization_24/batchnorm/ReadVariableOp_1:value:06CNN_Model_1o4/batch_normalization_24/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
?CNN_Model_1o4/batch_normalization_24/batchnorm/ReadVariableOp_2ReadVariableOpHcnn_model_1o4_batch_normalization_24_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
2CNN_Model_1o4/batch_normalization_24/batchnorm/subSubGCNN_Model_1o4/batch_normalization_24/batchnorm/ReadVariableOp_2:value:08CNN_Model_1o4/batch_normalization_24/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
4CNN_Model_1o4/batch_normalization_24/batchnorm/add_1AddV28CNN_Model_1o4/batch_normalization_24/batchnorm/mul_1:z:06CNN_Model_1o4/batch_normalization_24/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
!CNN_Model_1o4/dropout_12/IdentityIdentity8CNN_Model_1o4/batch_normalization_24/batchnorm/add_1:z:0*
T0*(
_output_shapes
:�����������
-CNN_Model_1o4/Dense_512/MatMul/ReadVariableOpReadVariableOp6cnn_model_1o4_dense_512_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
CNN_Model_1o4/Dense_512/MatMulMatMul*CNN_Model_1o4/dropout_12/Identity:output:05CNN_Model_1o4/Dense_512/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.CNN_Model_1o4/Dense_512/BiasAdd/ReadVariableOpReadVariableOp7cnn_model_1o4_dense_512_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
CNN_Model_1o4/Dense_512/BiasAddBiasAdd(CNN_Model_1o4/Dense_512/MatMul:product:06CNN_Model_1o4/Dense_512/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
CNN_Model_1o4/Dense_512/ReluRelu(CNN_Model_1o4/Dense_512/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
=CNN_Model_1o4/batch_normalization_25/batchnorm/ReadVariableOpReadVariableOpFcnn_model_1o4_batch_normalization_25_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0y
4CNN_Model_1o4/batch_normalization_25/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2CNN_Model_1o4/batch_normalization_25/batchnorm/addAddV2ECNN_Model_1o4/batch_normalization_25/batchnorm/ReadVariableOp:value:0=CNN_Model_1o4/batch_normalization_25/batchnorm/add/y:output:0*
T0*
_output_shapes	
:��
4CNN_Model_1o4/batch_normalization_25/batchnorm/RsqrtRsqrt6CNN_Model_1o4/batch_normalization_25/batchnorm/add:z:0*
T0*
_output_shapes	
:��
ACNN_Model_1o4/batch_normalization_25/batchnorm/mul/ReadVariableOpReadVariableOpJcnn_model_1o4_batch_normalization_25_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
2CNN_Model_1o4/batch_normalization_25/batchnorm/mulMul8CNN_Model_1o4/batch_normalization_25/batchnorm/Rsqrt:y:0ICNN_Model_1o4/batch_normalization_25/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
4CNN_Model_1o4/batch_normalization_25/batchnorm/mul_1Mul*CNN_Model_1o4/Dense_512/Relu:activations:06CNN_Model_1o4/batch_normalization_25/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
?CNN_Model_1o4/batch_normalization_25/batchnorm/ReadVariableOp_1ReadVariableOpHcnn_model_1o4_batch_normalization_25_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
4CNN_Model_1o4/batch_normalization_25/batchnorm/mul_2MulGCNN_Model_1o4/batch_normalization_25/batchnorm/ReadVariableOp_1:value:06CNN_Model_1o4/batch_normalization_25/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
?CNN_Model_1o4/batch_normalization_25/batchnorm/ReadVariableOp_2ReadVariableOpHcnn_model_1o4_batch_normalization_25_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
2CNN_Model_1o4/batch_normalization_25/batchnorm/subSubGCNN_Model_1o4/batch_normalization_25/batchnorm/ReadVariableOp_2:value:08CNN_Model_1o4/batch_normalization_25/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
4CNN_Model_1o4/batch_normalization_25/batchnorm/add_1AddV28CNN_Model_1o4/batch_normalization_25/batchnorm/mul_1:z:06CNN_Model_1o4/batch_normalization_25/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
!CNN_Model_1o4/dropout_13/IdentityIdentity8CNN_Model_1o4/batch_normalization_25/batchnorm/add_1:z:0*
T0*(
_output_shapes
:�����������
-CNN_Model_1o4/Dense_256/MatMul/ReadVariableOpReadVariableOp6cnn_model_1o4_dense_256_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
CNN_Model_1o4/Dense_256/MatMulMatMul*CNN_Model_1o4/dropout_13/Identity:output:05CNN_Model_1o4/Dense_256/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.CNN_Model_1o4/Dense_256/BiasAdd/ReadVariableOpReadVariableOp7cnn_model_1o4_dense_256_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
CNN_Model_1o4/Dense_256/BiasAddBiasAdd(CNN_Model_1o4/Dense_256/MatMul:product:06CNN_Model_1o4/Dense_256/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
CNN_Model_1o4/Dense_256/ReluRelu(CNN_Model_1o4/Dense_256/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
=CNN_Model_1o4/batch_normalization_26/batchnorm/ReadVariableOpReadVariableOpFcnn_model_1o4_batch_normalization_26_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0y
4CNN_Model_1o4/batch_normalization_26/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2CNN_Model_1o4/batch_normalization_26/batchnorm/addAddV2ECNN_Model_1o4/batch_normalization_26/batchnorm/ReadVariableOp:value:0=CNN_Model_1o4/batch_normalization_26/batchnorm/add/y:output:0*
T0*
_output_shapes	
:��
4CNN_Model_1o4/batch_normalization_26/batchnorm/RsqrtRsqrt6CNN_Model_1o4/batch_normalization_26/batchnorm/add:z:0*
T0*
_output_shapes	
:��
ACNN_Model_1o4/batch_normalization_26/batchnorm/mul/ReadVariableOpReadVariableOpJcnn_model_1o4_batch_normalization_26_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
2CNN_Model_1o4/batch_normalization_26/batchnorm/mulMul8CNN_Model_1o4/batch_normalization_26/batchnorm/Rsqrt:y:0ICNN_Model_1o4/batch_normalization_26/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
4CNN_Model_1o4/batch_normalization_26/batchnorm/mul_1Mul*CNN_Model_1o4/Dense_256/Relu:activations:06CNN_Model_1o4/batch_normalization_26/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
?CNN_Model_1o4/batch_normalization_26/batchnorm/ReadVariableOp_1ReadVariableOpHcnn_model_1o4_batch_normalization_26_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
4CNN_Model_1o4/batch_normalization_26/batchnorm/mul_2MulGCNN_Model_1o4/batch_normalization_26/batchnorm/ReadVariableOp_1:value:06CNN_Model_1o4/batch_normalization_26/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
?CNN_Model_1o4/batch_normalization_26/batchnorm/ReadVariableOp_2ReadVariableOpHcnn_model_1o4_batch_normalization_26_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
2CNN_Model_1o4/batch_normalization_26/batchnorm/subSubGCNN_Model_1o4/batch_normalization_26/batchnorm/ReadVariableOp_2:value:08CNN_Model_1o4/batch_normalization_26/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
4CNN_Model_1o4/batch_normalization_26/batchnorm/add_1AddV28CNN_Model_1o4/batch_normalization_26/batchnorm/mul_1:z:06CNN_Model_1o4/batch_normalization_26/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
!CNN_Model_1o4/dropout_14/IdentityIdentity8CNN_Model_1o4/batch_normalization_26/batchnorm/add_1:z:0*
T0*(
_output_shapes
:�����������
-CNN_Model_1o4/Dense_128/MatMul/ReadVariableOpReadVariableOp6cnn_model_1o4_dense_128_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
CNN_Model_1o4/Dense_128/MatMulMatMul*CNN_Model_1o4/dropout_14/Identity:output:05CNN_Model_1o4/Dense_128/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.CNN_Model_1o4/Dense_128/BiasAdd/ReadVariableOpReadVariableOp7cnn_model_1o4_dense_128_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
CNN_Model_1o4/Dense_128/BiasAddBiasAdd(CNN_Model_1o4/Dense_128/MatMul:product:06CNN_Model_1o4/Dense_128/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
CNN_Model_1o4/Dense_128/ReluRelu(CNN_Model_1o4/Dense_128/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
=CNN_Model_1o4/batch_normalization_27/batchnorm/ReadVariableOpReadVariableOpFcnn_model_1o4_batch_normalization_27_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0y
4CNN_Model_1o4/batch_normalization_27/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2CNN_Model_1o4/batch_normalization_27/batchnorm/addAddV2ECNN_Model_1o4/batch_normalization_27/batchnorm/ReadVariableOp:value:0=CNN_Model_1o4/batch_normalization_27/batchnorm/add/y:output:0*
T0*
_output_shapes	
:��
4CNN_Model_1o4/batch_normalization_27/batchnorm/RsqrtRsqrt6CNN_Model_1o4/batch_normalization_27/batchnorm/add:z:0*
T0*
_output_shapes	
:��
ACNN_Model_1o4/batch_normalization_27/batchnorm/mul/ReadVariableOpReadVariableOpJcnn_model_1o4_batch_normalization_27_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
2CNN_Model_1o4/batch_normalization_27/batchnorm/mulMul8CNN_Model_1o4/batch_normalization_27/batchnorm/Rsqrt:y:0ICNN_Model_1o4/batch_normalization_27/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
4CNN_Model_1o4/batch_normalization_27/batchnorm/mul_1Mul*CNN_Model_1o4/Dense_128/Relu:activations:06CNN_Model_1o4/batch_normalization_27/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
?CNN_Model_1o4/batch_normalization_27/batchnorm/ReadVariableOp_1ReadVariableOpHcnn_model_1o4_batch_normalization_27_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
4CNN_Model_1o4/batch_normalization_27/batchnorm/mul_2MulGCNN_Model_1o4/batch_normalization_27/batchnorm/ReadVariableOp_1:value:06CNN_Model_1o4/batch_normalization_27/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
?CNN_Model_1o4/batch_normalization_27/batchnorm/ReadVariableOp_2ReadVariableOpHcnn_model_1o4_batch_normalization_27_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
2CNN_Model_1o4/batch_normalization_27/batchnorm/subSubGCNN_Model_1o4/batch_normalization_27/batchnorm/ReadVariableOp_2:value:08CNN_Model_1o4/batch_normalization_27/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
4CNN_Model_1o4/batch_normalization_27/batchnorm/add_1AddV28CNN_Model_1o4/batch_normalization_27/batchnorm/mul_1:z:06CNN_Model_1o4/batch_normalization_27/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
!CNN_Model_1o4/dropout_15/IdentityIdentity8CNN_Model_1o4/batch_normalization_27/batchnorm/add_1:z:0*
T0*(
_output_shapes
:�����������
8CNN_Model_1o4/Output_Layer_Dense_7/MatMul/ReadVariableOpReadVariableOpAcnn_model_1o4_output_layer_dense_7_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
)CNN_Model_1o4/Output_Layer_Dense_7/MatMulMatMul*CNN_Model_1o4/dropout_15/Identity:output:0@CNN_Model_1o4/Output_Layer_Dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
9CNN_Model_1o4/Output_Layer_Dense_7/BiasAdd/ReadVariableOpReadVariableOpBcnn_model_1o4_output_layer_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
*CNN_Model_1o4/Output_Layer_Dense_7/BiasAddBiasAdd3CNN_Model_1o4/Output_Layer_Dense_7/MatMul:product:0ACNN_Model_1o4/Output_Layer_Dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
*CNN_Model_1o4/Output_Layer_Dense_7/SoftmaxSoftmax3CNN_Model_1o4/Output_Layer_Dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:����������
IdentityIdentity4CNN_Model_1o4/Output_Layer_Dense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp0^CNN_Model_1o4/Conv2D_128/BiasAdd/ReadVariableOp/^CNN_Model_1o4/Conv2D_128/Conv2D/ReadVariableOp/^CNN_Model_1o4/Conv2D_32/BiasAdd/ReadVariableOp.^CNN_Model_1o4/Conv2D_32/Conv2D/ReadVariableOp/^CNN_Model_1o4/Conv2D_64/BiasAdd/ReadVariableOp.^CNN_Model_1o4/Conv2D_64/Conv2D/ReadVariableOp0^CNN_Model_1o4/Dense_1024/BiasAdd/ReadVariableOp/^CNN_Model_1o4/Dense_1024/MatMul/ReadVariableOp/^CNN_Model_1o4/Dense_128/BiasAdd/ReadVariableOp.^CNN_Model_1o4/Dense_128/MatMul/ReadVariableOp/^CNN_Model_1o4/Dense_256/BiasAdd/ReadVariableOp.^CNN_Model_1o4/Dense_256/MatMul/ReadVariableOp/^CNN_Model_1o4/Dense_512/BiasAdd/ReadVariableOp.^CNN_Model_1o4/Dense_512/MatMul/ReadVariableOp:^CNN_Model_1o4/Output_Layer_Dense_7/BiasAdd/ReadVariableOp9^CNN_Model_1o4/Output_Layer_Dense_7/MatMul/ReadVariableOpE^CNN_Model_1o4/batch_normalization_21/FusedBatchNormV3/ReadVariableOpG^CNN_Model_1o4/batch_normalization_21/FusedBatchNormV3/ReadVariableOp_14^CNN_Model_1o4/batch_normalization_21/ReadVariableOp6^CNN_Model_1o4/batch_normalization_21/ReadVariableOp_1E^CNN_Model_1o4/batch_normalization_22/FusedBatchNormV3/ReadVariableOpG^CNN_Model_1o4/batch_normalization_22/FusedBatchNormV3/ReadVariableOp_14^CNN_Model_1o4/batch_normalization_22/ReadVariableOp6^CNN_Model_1o4/batch_normalization_22/ReadVariableOp_1E^CNN_Model_1o4/batch_normalization_23/FusedBatchNormV3/ReadVariableOpG^CNN_Model_1o4/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_14^CNN_Model_1o4/batch_normalization_23/ReadVariableOp6^CNN_Model_1o4/batch_normalization_23/ReadVariableOp_1>^CNN_Model_1o4/batch_normalization_24/batchnorm/ReadVariableOp@^CNN_Model_1o4/batch_normalization_24/batchnorm/ReadVariableOp_1@^CNN_Model_1o4/batch_normalization_24/batchnorm/ReadVariableOp_2B^CNN_Model_1o4/batch_normalization_24/batchnorm/mul/ReadVariableOp>^CNN_Model_1o4/batch_normalization_25/batchnorm/ReadVariableOp@^CNN_Model_1o4/batch_normalization_25/batchnorm/ReadVariableOp_1@^CNN_Model_1o4/batch_normalization_25/batchnorm/ReadVariableOp_2B^CNN_Model_1o4/batch_normalization_25/batchnorm/mul/ReadVariableOp>^CNN_Model_1o4/batch_normalization_26/batchnorm/ReadVariableOp@^CNN_Model_1o4/batch_normalization_26/batchnorm/ReadVariableOp_1@^CNN_Model_1o4/batch_normalization_26/batchnorm/ReadVariableOp_2B^CNN_Model_1o4/batch_normalization_26/batchnorm/mul/ReadVariableOp>^CNN_Model_1o4/batch_normalization_27/batchnorm/ReadVariableOp@^CNN_Model_1o4/batch_normalization_27/batchnorm/ReadVariableOp_1@^CNN_Model_1o4/batch_normalization_27/batchnorm/ReadVariableOp_2B^CNN_Model_1o4/batch_normalization_27/batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesw
u:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/CNN_Model_1o4/Conv2D_128/BiasAdd/ReadVariableOp/CNN_Model_1o4/Conv2D_128/BiasAdd/ReadVariableOp2`
.CNN_Model_1o4/Conv2D_128/Conv2D/ReadVariableOp.CNN_Model_1o4/Conv2D_128/Conv2D/ReadVariableOp2`
.CNN_Model_1o4/Conv2D_32/BiasAdd/ReadVariableOp.CNN_Model_1o4/Conv2D_32/BiasAdd/ReadVariableOp2^
-CNN_Model_1o4/Conv2D_32/Conv2D/ReadVariableOp-CNN_Model_1o4/Conv2D_32/Conv2D/ReadVariableOp2`
.CNN_Model_1o4/Conv2D_64/BiasAdd/ReadVariableOp.CNN_Model_1o4/Conv2D_64/BiasAdd/ReadVariableOp2^
-CNN_Model_1o4/Conv2D_64/Conv2D/ReadVariableOp-CNN_Model_1o4/Conv2D_64/Conv2D/ReadVariableOp2b
/CNN_Model_1o4/Dense_1024/BiasAdd/ReadVariableOp/CNN_Model_1o4/Dense_1024/BiasAdd/ReadVariableOp2`
.CNN_Model_1o4/Dense_1024/MatMul/ReadVariableOp.CNN_Model_1o4/Dense_1024/MatMul/ReadVariableOp2`
.CNN_Model_1o4/Dense_128/BiasAdd/ReadVariableOp.CNN_Model_1o4/Dense_128/BiasAdd/ReadVariableOp2^
-CNN_Model_1o4/Dense_128/MatMul/ReadVariableOp-CNN_Model_1o4/Dense_128/MatMul/ReadVariableOp2`
.CNN_Model_1o4/Dense_256/BiasAdd/ReadVariableOp.CNN_Model_1o4/Dense_256/BiasAdd/ReadVariableOp2^
-CNN_Model_1o4/Dense_256/MatMul/ReadVariableOp-CNN_Model_1o4/Dense_256/MatMul/ReadVariableOp2`
.CNN_Model_1o4/Dense_512/BiasAdd/ReadVariableOp.CNN_Model_1o4/Dense_512/BiasAdd/ReadVariableOp2^
-CNN_Model_1o4/Dense_512/MatMul/ReadVariableOp-CNN_Model_1o4/Dense_512/MatMul/ReadVariableOp2v
9CNN_Model_1o4/Output_Layer_Dense_7/BiasAdd/ReadVariableOp9CNN_Model_1o4/Output_Layer_Dense_7/BiasAdd/ReadVariableOp2t
8CNN_Model_1o4/Output_Layer_Dense_7/MatMul/ReadVariableOp8CNN_Model_1o4/Output_Layer_Dense_7/MatMul/ReadVariableOp2�
DCNN_Model_1o4/batch_normalization_21/FusedBatchNormV3/ReadVariableOpDCNN_Model_1o4/batch_normalization_21/FusedBatchNormV3/ReadVariableOp2�
FCNN_Model_1o4/batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1FCNN_Model_1o4/batch_normalization_21/FusedBatchNormV3/ReadVariableOp_12j
3CNN_Model_1o4/batch_normalization_21/ReadVariableOp3CNN_Model_1o4/batch_normalization_21/ReadVariableOp2n
5CNN_Model_1o4/batch_normalization_21/ReadVariableOp_15CNN_Model_1o4/batch_normalization_21/ReadVariableOp_12�
DCNN_Model_1o4/batch_normalization_22/FusedBatchNormV3/ReadVariableOpDCNN_Model_1o4/batch_normalization_22/FusedBatchNormV3/ReadVariableOp2�
FCNN_Model_1o4/batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1FCNN_Model_1o4/batch_normalization_22/FusedBatchNormV3/ReadVariableOp_12j
3CNN_Model_1o4/batch_normalization_22/ReadVariableOp3CNN_Model_1o4/batch_normalization_22/ReadVariableOp2n
5CNN_Model_1o4/batch_normalization_22/ReadVariableOp_15CNN_Model_1o4/batch_normalization_22/ReadVariableOp_12�
DCNN_Model_1o4/batch_normalization_23/FusedBatchNormV3/ReadVariableOpDCNN_Model_1o4/batch_normalization_23/FusedBatchNormV3/ReadVariableOp2�
FCNN_Model_1o4/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1FCNN_Model_1o4/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_12j
3CNN_Model_1o4/batch_normalization_23/ReadVariableOp3CNN_Model_1o4/batch_normalization_23/ReadVariableOp2n
5CNN_Model_1o4/batch_normalization_23/ReadVariableOp_15CNN_Model_1o4/batch_normalization_23/ReadVariableOp_12~
=CNN_Model_1o4/batch_normalization_24/batchnorm/ReadVariableOp=CNN_Model_1o4/batch_normalization_24/batchnorm/ReadVariableOp2�
?CNN_Model_1o4/batch_normalization_24/batchnorm/ReadVariableOp_1?CNN_Model_1o4/batch_normalization_24/batchnorm/ReadVariableOp_12�
?CNN_Model_1o4/batch_normalization_24/batchnorm/ReadVariableOp_2?CNN_Model_1o4/batch_normalization_24/batchnorm/ReadVariableOp_22�
ACNN_Model_1o4/batch_normalization_24/batchnorm/mul/ReadVariableOpACNN_Model_1o4/batch_normalization_24/batchnorm/mul/ReadVariableOp2~
=CNN_Model_1o4/batch_normalization_25/batchnorm/ReadVariableOp=CNN_Model_1o4/batch_normalization_25/batchnorm/ReadVariableOp2�
?CNN_Model_1o4/batch_normalization_25/batchnorm/ReadVariableOp_1?CNN_Model_1o4/batch_normalization_25/batchnorm/ReadVariableOp_12�
?CNN_Model_1o4/batch_normalization_25/batchnorm/ReadVariableOp_2?CNN_Model_1o4/batch_normalization_25/batchnorm/ReadVariableOp_22�
ACNN_Model_1o4/batch_normalization_25/batchnorm/mul/ReadVariableOpACNN_Model_1o4/batch_normalization_25/batchnorm/mul/ReadVariableOp2~
=CNN_Model_1o4/batch_normalization_26/batchnorm/ReadVariableOp=CNN_Model_1o4/batch_normalization_26/batchnorm/ReadVariableOp2�
?CNN_Model_1o4/batch_normalization_26/batchnorm/ReadVariableOp_1?CNN_Model_1o4/batch_normalization_26/batchnorm/ReadVariableOp_12�
?CNN_Model_1o4/batch_normalization_26/batchnorm/ReadVariableOp_2?CNN_Model_1o4/batch_normalization_26/batchnorm/ReadVariableOp_22�
ACNN_Model_1o4/batch_normalization_26/batchnorm/mul/ReadVariableOpACNN_Model_1o4/batch_normalization_26/batchnorm/mul/ReadVariableOp2~
=CNN_Model_1o4/batch_normalization_27/batchnorm/ReadVariableOp=CNN_Model_1o4/batch_normalization_27/batchnorm/ReadVariableOp2�
?CNN_Model_1o4/batch_normalization_27/batchnorm/ReadVariableOp_1?CNN_Model_1o4/batch_normalization_27/batchnorm/ReadVariableOp_12�
?CNN_Model_1o4/batch_normalization_27/batchnorm/ReadVariableOp_2?CNN_Model_1o4/batch_normalization_27/batchnorm/ReadVariableOp_22�
ACNN_Model_1o4/batch_normalization_27/batchnorm/mul/ReadVariableOpACNN_Model_1o4/batch_normalization_27/batchnorm/mul/ReadVariableOp:b ^
1
_output_shapes
:�����������
)
_user_specified_nameConv2D_32_input:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:( $
"
_user_specified_name
resource:(!$
"
_user_specified_name
resource:("$
"
_user_specified_name
resource:(#$
"
_user_specified_name
resource:($$
"
_user_specified_name
resource:(%$
"
_user_specified_name
resource:(&$
"
_user_specified_name
resource:('$
"
_user_specified_name
resource:(($
"
_user_specified_name
resource:()$
"
_user_specified_name
resource:(*$
"
_user_specified_name
resource:(+$
"
_user_specified_name
resource:(,$
"
_user_specified_name
resource
�
�
R__inference_batch_normalization_26_layer_call_and_return_conditional_losses_652547

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
F__inference_Conv2D_128_layer_call_and_return_conditional_losses_652718

inputs9
conv2d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
F__inference_Dense_1024_layer_call_and_return_conditional_losses_652745

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
E__inference_Conv2D_32_layer_call_and_return_conditional_losses_652666

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������~~ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������~~ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������~~ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������~~ S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
��
�l
__inference__traced_save_654942
file_prefixA
'read_disablecopyonread_conv2d_32_kernel: 5
'read_1_disablecopyonread_conv2d_32_bias: C
5read_2_disablecopyonread_batch_normalization_21_gamma: B
4read_3_disablecopyonread_batch_normalization_21_beta: I
;read_4_disablecopyonread_batch_normalization_21_moving_mean: M
?read_5_disablecopyonread_batch_normalization_21_moving_variance: C
)read_6_disablecopyonread_conv2d_64_kernel: @5
'read_7_disablecopyonread_conv2d_64_bias:@C
5read_8_disablecopyonread_batch_normalization_22_gamma:@B
4read_9_disablecopyonread_batch_normalization_22_beta:@J
<read_10_disablecopyonread_batch_normalization_22_moving_mean:@N
@read_11_disablecopyonread_batch_normalization_22_moving_variance:@F
+read_12_disablecopyonread_conv2d_128_kernel:@�8
)read_13_disablecopyonread_conv2d_128_bias:	�E
6read_14_disablecopyonread_batch_normalization_23_gamma:	�D
5read_15_disablecopyonread_batch_normalization_23_beta:	�K
<read_16_disablecopyonread_batch_normalization_23_moving_mean:	�O
@read_17_disablecopyonread_batch_normalization_23_moving_variance:	�?
+read_18_disablecopyonread_dense_1024_kernel:
��8
)read_19_disablecopyonread_dense_1024_bias:	�E
6read_20_disablecopyonread_batch_normalization_24_gamma:	�D
5read_21_disablecopyonread_batch_normalization_24_beta:	�K
<read_22_disablecopyonread_batch_normalization_24_moving_mean:	�O
@read_23_disablecopyonread_batch_normalization_24_moving_variance:	�>
*read_24_disablecopyonread_dense_512_kernel:
��7
(read_25_disablecopyonread_dense_512_bias:	�E
6read_26_disablecopyonread_batch_normalization_25_gamma:	�D
5read_27_disablecopyonread_batch_normalization_25_beta:	�K
<read_28_disablecopyonread_batch_normalization_25_moving_mean:	�O
@read_29_disablecopyonread_batch_normalization_25_moving_variance:	�>
*read_30_disablecopyonread_dense_256_kernel:
��7
(read_31_disablecopyonread_dense_256_bias:	�E
6read_32_disablecopyonread_batch_normalization_26_gamma:	�D
5read_33_disablecopyonread_batch_normalization_26_beta:	�K
<read_34_disablecopyonread_batch_normalization_26_moving_mean:	�O
@read_35_disablecopyonread_batch_normalization_26_moving_variance:	�>
*read_36_disablecopyonread_dense_128_kernel:
��7
(read_37_disablecopyonread_dense_128_bias:	�E
6read_38_disablecopyonread_batch_normalization_27_gamma:	�D
5read_39_disablecopyonread_batch_normalization_27_beta:	�K
<read_40_disablecopyonread_batch_normalization_27_moving_mean:	�O
@read_41_disablecopyonread_batch_normalization_27_moving_variance:	�H
5read_42_disablecopyonread_output_layer_dense_7_kernel:	�A
3read_43_disablecopyonread_output_layer_dense_7_bias:-
#read_44_disablecopyonread_iteration:	 1
'read_45_disablecopyonread_learning_rate: K
1read_46_disablecopyonread_adam_m_conv2d_32_kernel: K
1read_47_disablecopyonread_adam_v_conv2d_32_kernel: =
/read_48_disablecopyonread_adam_m_conv2d_32_bias: =
/read_49_disablecopyonread_adam_v_conv2d_32_bias: K
=read_50_disablecopyonread_adam_m_batch_normalization_21_gamma: K
=read_51_disablecopyonread_adam_v_batch_normalization_21_gamma: J
<read_52_disablecopyonread_adam_m_batch_normalization_21_beta: J
<read_53_disablecopyonread_adam_v_batch_normalization_21_beta: K
1read_54_disablecopyonread_adam_m_conv2d_64_kernel: @K
1read_55_disablecopyonread_adam_v_conv2d_64_kernel: @=
/read_56_disablecopyonread_adam_m_conv2d_64_bias:@=
/read_57_disablecopyonread_adam_v_conv2d_64_bias:@K
=read_58_disablecopyonread_adam_m_batch_normalization_22_gamma:@K
=read_59_disablecopyonread_adam_v_batch_normalization_22_gamma:@J
<read_60_disablecopyonread_adam_m_batch_normalization_22_beta:@J
<read_61_disablecopyonread_adam_v_batch_normalization_22_beta:@M
2read_62_disablecopyonread_adam_m_conv2d_128_kernel:@�M
2read_63_disablecopyonread_adam_v_conv2d_128_kernel:@�?
0read_64_disablecopyonread_adam_m_conv2d_128_bias:	�?
0read_65_disablecopyonread_adam_v_conv2d_128_bias:	�L
=read_66_disablecopyonread_adam_m_batch_normalization_23_gamma:	�L
=read_67_disablecopyonread_adam_v_batch_normalization_23_gamma:	�K
<read_68_disablecopyonread_adam_m_batch_normalization_23_beta:	�K
<read_69_disablecopyonread_adam_v_batch_normalization_23_beta:	�F
2read_70_disablecopyonread_adam_m_dense_1024_kernel:
��F
2read_71_disablecopyonread_adam_v_dense_1024_kernel:
��?
0read_72_disablecopyonread_adam_m_dense_1024_bias:	�?
0read_73_disablecopyonread_adam_v_dense_1024_bias:	�L
=read_74_disablecopyonread_adam_m_batch_normalization_24_gamma:	�L
=read_75_disablecopyonread_adam_v_batch_normalization_24_gamma:	�K
<read_76_disablecopyonread_adam_m_batch_normalization_24_beta:	�K
<read_77_disablecopyonread_adam_v_batch_normalization_24_beta:	�E
1read_78_disablecopyonread_adam_m_dense_512_kernel:
��E
1read_79_disablecopyonread_adam_v_dense_512_kernel:
��>
/read_80_disablecopyonread_adam_m_dense_512_bias:	�>
/read_81_disablecopyonread_adam_v_dense_512_bias:	�L
=read_82_disablecopyonread_adam_m_batch_normalization_25_gamma:	�L
=read_83_disablecopyonread_adam_v_batch_normalization_25_gamma:	�K
<read_84_disablecopyonread_adam_m_batch_normalization_25_beta:	�K
<read_85_disablecopyonread_adam_v_batch_normalization_25_beta:	�E
1read_86_disablecopyonread_adam_m_dense_256_kernel:
��E
1read_87_disablecopyonread_adam_v_dense_256_kernel:
��>
/read_88_disablecopyonread_adam_m_dense_256_bias:	�>
/read_89_disablecopyonread_adam_v_dense_256_bias:	�L
=read_90_disablecopyonread_adam_m_batch_normalization_26_gamma:	�L
=read_91_disablecopyonread_adam_v_batch_normalization_26_gamma:	�K
<read_92_disablecopyonread_adam_m_batch_normalization_26_beta:	�K
<read_93_disablecopyonread_adam_v_batch_normalization_26_beta:	�E
1read_94_disablecopyonread_adam_m_dense_128_kernel:
��E
1read_95_disablecopyonread_adam_v_dense_128_kernel:
��>
/read_96_disablecopyonread_adam_m_dense_128_bias:	�>
/read_97_disablecopyonread_adam_v_dense_128_bias:	�L
=read_98_disablecopyonread_adam_m_batch_normalization_27_gamma:	�L
=read_99_disablecopyonread_adam_v_batch_normalization_27_gamma:	�L
=read_100_disablecopyonread_adam_m_batch_normalization_27_beta:	�L
=read_101_disablecopyonread_adam_v_batch_normalization_27_beta:	�P
=read_102_disablecopyonread_adam_m_output_layer_dense_7_kernel:	�P
=read_103_disablecopyonread_adam_v_output_layer_dense_7_kernel:	�I
;read_104_disablecopyonread_adam_m_output_layer_dense_7_bias:I
;read_105_disablecopyonread_adam_v_output_layer_dense_7_bias:,
"read_106_disablecopyonread_total_2: ,
"read_107_disablecopyonread_count_2: ,
"read_108_disablecopyonread_total_1: ,
"read_109_disablecopyonread_count_1: *
 read_110_disablecopyonread_total: *
 read_111_disablecopyonread_count: 
savev2_const
identity_225��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_100/DisableCopyOnRead�Read_100/ReadVariableOp�Read_101/DisableCopyOnRead�Read_101/ReadVariableOp�Read_102/DisableCopyOnRead�Read_102/ReadVariableOp�Read_103/DisableCopyOnRead�Read_103/ReadVariableOp�Read_104/DisableCopyOnRead�Read_104/ReadVariableOp�Read_105/DisableCopyOnRead�Read_105/ReadVariableOp�Read_106/DisableCopyOnRead�Read_106/ReadVariableOp�Read_107/DisableCopyOnRead�Read_107/ReadVariableOp�Read_108/DisableCopyOnRead�Read_108/ReadVariableOp�Read_109/DisableCopyOnRead�Read_109/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_110/DisableCopyOnRead�Read_110/ReadVariableOp�Read_111/DisableCopyOnRead�Read_111/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_46/DisableCopyOnRead�Read_46/ReadVariableOp�Read_47/DisableCopyOnRead�Read_47/ReadVariableOp�Read_48/DisableCopyOnRead�Read_48/ReadVariableOp�Read_49/DisableCopyOnRead�Read_49/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_50/DisableCopyOnRead�Read_50/ReadVariableOp�Read_51/DisableCopyOnRead�Read_51/ReadVariableOp�Read_52/DisableCopyOnRead�Read_52/ReadVariableOp�Read_53/DisableCopyOnRead�Read_53/ReadVariableOp�Read_54/DisableCopyOnRead�Read_54/ReadVariableOp�Read_55/DisableCopyOnRead�Read_55/ReadVariableOp�Read_56/DisableCopyOnRead�Read_56/ReadVariableOp�Read_57/DisableCopyOnRead�Read_57/ReadVariableOp�Read_58/DisableCopyOnRead�Read_58/ReadVariableOp�Read_59/DisableCopyOnRead�Read_59/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_60/DisableCopyOnRead�Read_60/ReadVariableOp�Read_61/DisableCopyOnRead�Read_61/ReadVariableOp�Read_62/DisableCopyOnRead�Read_62/ReadVariableOp�Read_63/DisableCopyOnRead�Read_63/ReadVariableOp�Read_64/DisableCopyOnRead�Read_64/ReadVariableOp�Read_65/DisableCopyOnRead�Read_65/ReadVariableOp�Read_66/DisableCopyOnRead�Read_66/ReadVariableOp�Read_67/DisableCopyOnRead�Read_67/ReadVariableOp�Read_68/DisableCopyOnRead�Read_68/ReadVariableOp�Read_69/DisableCopyOnRead�Read_69/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_70/DisableCopyOnRead�Read_70/ReadVariableOp�Read_71/DisableCopyOnRead�Read_71/ReadVariableOp�Read_72/DisableCopyOnRead�Read_72/ReadVariableOp�Read_73/DisableCopyOnRead�Read_73/ReadVariableOp�Read_74/DisableCopyOnRead�Read_74/ReadVariableOp�Read_75/DisableCopyOnRead�Read_75/ReadVariableOp�Read_76/DisableCopyOnRead�Read_76/ReadVariableOp�Read_77/DisableCopyOnRead�Read_77/ReadVariableOp�Read_78/DisableCopyOnRead�Read_78/ReadVariableOp�Read_79/DisableCopyOnRead�Read_79/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_80/DisableCopyOnRead�Read_80/ReadVariableOp�Read_81/DisableCopyOnRead�Read_81/ReadVariableOp�Read_82/DisableCopyOnRead�Read_82/ReadVariableOp�Read_83/DisableCopyOnRead�Read_83/ReadVariableOp�Read_84/DisableCopyOnRead�Read_84/ReadVariableOp�Read_85/DisableCopyOnRead�Read_85/ReadVariableOp�Read_86/DisableCopyOnRead�Read_86/ReadVariableOp�Read_87/DisableCopyOnRead�Read_87/ReadVariableOp�Read_88/DisableCopyOnRead�Read_88/ReadVariableOp�Read_89/DisableCopyOnRead�Read_89/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOp�Read_90/DisableCopyOnRead�Read_90/ReadVariableOp�Read_91/DisableCopyOnRead�Read_91/ReadVariableOp�Read_92/DisableCopyOnRead�Read_92/ReadVariableOp�Read_93/DisableCopyOnRead�Read_93/ReadVariableOp�Read_94/DisableCopyOnRead�Read_94/ReadVariableOp�Read_95/DisableCopyOnRead�Read_95/ReadVariableOp�Read_96/DisableCopyOnRead�Read_96/ReadVariableOp�Read_97/DisableCopyOnRead�Read_97/ReadVariableOp�Read_98/DisableCopyOnRead�Read_98/ReadVariableOp�Read_99/DisableCopyOnRead�Read_99/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: y
Read/DisableCopyOnReadDisableCopyOnRead'read_disablecopyonread_conv2d_32_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp'read_disablecopyonread_conv2d_32_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
: {
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_conv2d_32_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_conv2d_32_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_2/DisableCopyOnReadDisableCopyOnRead5read_2_disablecopyonread_batch_normalization_21_gamma"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp5read_2_disablecopyonread_batch_normalization_21_gamma^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_3/DisableCopyOnReadDisableCopyOnRead4read_3_disablecopyonread_batch_normalization_21_beta"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp4read_3_disablecopyonread_batch_normalization_21_beta^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_4/DisableCopyOnReadDisableCopyOnRead;read_4_disablecopyonread_batch_normalization_21_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp;read_4_disablecopyonread_batch_normalization_21_moving_mean^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_5/DisableCopyOnReadDisableCopyOnRead?read_5_disablecopyonread_batch_normalization_21_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp?read_5_disablecopyonread_batch_normalization_21_moving_variance^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
: }
Read_6/DisableCopyOnReadDisableCopyOnRead)read_6_disablecopyonread_conv2d_64_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp)read_6_disablecopyonread_conv2d_64_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0v
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
: @{
Read_7/DisableCopyOnReadDisableCopyOnRead'read_7_disablecopyonread_conv2d_64_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp'read_7_disablecopyonread_conv2d_64_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_8/DisableCopyOnReadDisableCopyOnRead5read_8_disablecopyonread_batch_normalization_22_gamma"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp5read_8_disablecopyonread_batch_normalization_22_gamma^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_9/DisableCopyOnReadDisableCopyOnRead4read_9_disablecopyonread_batch_normalization_22_beta"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp4read_9_disablecopyonread_batch_normalization_22_beta^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_10/DisableCopyOnReadDisableCopyOnRead<read_10_disablecopyonread_batch_normalization_22_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp<read_10_disablecopyonread_batch_normalization_22_moving_mean^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_11/DisableCopyOnReadDisableCopyOnRead@read_11_disablecopyonread_batch_normalization_22_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp@read_11_disablecopyonread_batch_normalization_22_moving_variance^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_12/DisableCopyOnReadDisableCopyOnRead+read_12_disablecopyonread_conv2d_128_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp+read_12_disablecopyonread_conv2d_128_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@�*
dtype0x
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@�n
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*'
_output_shapes
:@�~
Read_13/DisableCopyOnReadDisableCopyOnRead)read_13_disablecopyonread_conv2d_128_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp)read_13_disablecopyonread_conv2d_128_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_14/DisableCopyOnReadDisableCopyOnRead6read_14_disablecopyonread_batch_normalization_23_gamma"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp6read_14_disablecopyonread_batch_normalization_23_gamma^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_15/DisableCopyOnReadDisableCopyOnRead5read_15_disablecopyonread_batch_normalization_23_beta"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp5read_15_disablecopyonread_batch_normalization_23_beta^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_16/DisableCopyOnReadDisableCopyOnRead<read_16_disablecopyonread_batch_normalization_23_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp<read_16_disablecopyonread_batch_normalization_23_moving_mean^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_17/DisableCopyOnReadDisableCopyOnRead@read_17_disablecopyonread_batch_normalization_23_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp@read_17_disablecopyonread_batch_normalization_23_moving_variance^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_18/DisableCopyOnReadDisableCopyOnRead+read_18_disablecopyonread_dense_1024_kernel"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp+read_18_disablecopyonread_dense_1024_kernel^Read_18/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��~
Read_19/DisableCopyOnReadDisableCopyOnRead)read_19_disablecopyonread_dense_1024_bias"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp)read_19_disablecopyonread_dense_1024_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_20/DisableCopyOnReadDisableCopyOnRead6read_20_disablecopyonread_batch_normalization_24_gamma"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp6read_20_disablecopyonread_batch_normalization_24_gamma^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_21/DisableCopyOnReadDisableCopyOnRead5read_21_disablecopyonread_batch_normalization_24_beta"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp5read_21_disablecopyonread_batch_normalization_24_beta^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_22/DisableCopyOnReadDisableCopyOnRead<read_22_disablecopyonread_batch_normalization_24_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp<read_22_disablecopyonread_batch_normalization_24_moving_mean^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_23/DisableCopyOnReadDisableCopyOnRead@read_23_disablecopyonread_batch_normalization_24_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp@read_23_disablecopyonread_batch_normalization_24_moving_variance^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes	
:�
Read_24/DisableCopyOnReadDisableCopyOnRead*read_24_disablecopyonread_dense_512_kernel"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp*read_24_disablecopyonread_dense_512_kernel^Read_24/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��}
Read_25/DisableCopyOnReadDisableCopyOnRead(read_25_disablecopyonread_dense_512_bias"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp(read_25_disablecopyonread_dense_512_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_26/DisableCopyOnReadDisableCopyOnRead6read_26_disablecopyonread_batch_normalization_25_gamma"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp6read_26_disablecopyonread_batch_normalization_25_gamma^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_27/DisableCopyOnReadDisableCopyOnRead5read_27_disablecopyonread_batch_normalization_25_beta"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp5read_27_disablecopyonread_batch_normalization_25_beta^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_28/DisableCopyOnReadDisableCopyOnRead<read_28_disablecopyonread_batch_normalization_25_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp<read_28_disablecopyonread_batch_normalization_25_moving_mean^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_29/DisableCopyOnReadDisableCopyOnRead@read_29_disablecopyonread_batch_normalization_25_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp@read_29_disablecopyonread_batch_normalization_25_moving_variance^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes	
:�
Read_30/DisableCopyOnReadDisableCopyOnRead*read_30_disablecopyonread_dense_256_kernel"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp*read_30_disablecopyonread_dense_256_kernel^Read_30/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��}
Read_31/DisableCopyOnReadDisableCopyOnRead(read_31_disablecopyonread_dense_256_bias"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp(read_31_disablecopyonread_dense_256_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_32/DisableCopyOnReadDisableCopyOnRead6read_32_disablecopyonread_batch_normalization_26_gamma"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp6read_32_disablecopyonread_batch_normalization_26_gamma^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_33/DisableCopyOnReadDisableCopyOnRead5read_33_disablecopyonread_batch_normalization_26_beta"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp5read_33_disablecopyonread_batch_normalization_26_beta^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_34/DisableCopyOnReadDisableCopyOnRead<read_34_disablecopyonread_batch_normalization_26_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp<read_34_disablecopyonread_batch_normalization_26_moving_mean^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_35/DisableCopyOnReadDisableCopyOnRead@read_35_disablecopyonread_batch_normalization_26_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp@read_35_disablecopyonread_batch_normalization_26_moving_variance^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes	
:�
Read_36/DisableCopyOnReadDisableCopyOnRead*read_36_disablecopyonread_dense_128_kernel"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp*read_36_disablecopyonread_dense_128_kernel^Read_36/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��}
Read_37/DisableCopyOnReadDisableCopyOnRead(read_37_disablecopyonread_dense_128_bias"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp(read_37_disablecopyonread_dense_128_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_38/DisableCopyOnReadDisableCopyOnRead6read_38_disablecopyonread_batch_normalization_27_gamma"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp6read_38_disablecopyonread_batch_normalization_27_gamma^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_39/DisableCopyOnReadDisableCopyOnRead5read_39_disablecopyonread_batch_normalization_27_beta"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp5read_39_disablecopyonread_batch_normalization_27_beta^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_40/DisableCopyOnReadDisableCopyOnRead<read_40_disablecopyonread_batch_normalization_27_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp<read_40_disablecopyonread_batch_normalization_27_moving_mean^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_41/DisableCopyOnReadDisableCopyOnRead@read_41_disablecopyonread_batch_normalization_27_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp@read_41_disablecopyonread_batch_normalization_27_moving_variance^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_42/DisableCopyOnReadDisableCopyOnRead5read_42_disablecopyonread_output_layer_dense_7_kernel"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp5read_42_disablecopyonread_output_layer_dense_7_kernel^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_43/DisableCopyOnReadDisableCopyOnRead3read_43_disablecopyonread_output_layer_dense_7_bias"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp3read_43_disablecopyonread_output_layer_dense_7_bias^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_44/DisableCopyOnReadDisableCopyOnRead#read_44_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp#read_44_disablecopyonread_iteration^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_45/DisableCopyOnReadDisableCopyOnRead'read_45_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp'read_45_disablecopyonread_learning_rate^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_46/DisableCopyOnReadDisableCopyOnRead1read_46_disablecopyonread_adam_m_conv2d_32_kernel"/device:CPU:0*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOp1read_46_disablecopyonread_adam_m_conv2d_32_kernel^Read_46/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_47/DisableCopyOnReadDisableCopyOnRead1read_47_disablecopyonread_adam_v_conv2d_32_kernel"/device:CPU:0*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOp1read_47_disablecopyonread_adam_v_conv2d_32_kernel^Read_47/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_48/DisableCopyOnReadDisableCopyOnRead/read_48_disablecopyonread_adam_m_conv2d_32_bias"/device:CPU:0*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp/read_48_disablecopyonread_adam_m_conv2d_32_bias^Read_48/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_49/DisableCopyOnReadDisableCopyOnRead/read_49_disablecopyonread_adam_v_conv2d_32_bias"/device:CPU:0*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp/read_49_disablecopyonread_adam_v_conv2d_32_bias^Read_49/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_50/DisableCopyOnReadDisableCopyOnRead=read_50_disablecopyonread_adam_m_batch_normalization_21_gamma"/device:CPU:0*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp=read_50_disablecopyonread_adam_m_batch_normalization_21_gamma^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_51/DisableCopyOnReadDisableCopyOnRead=read_51_disablecopyonread_adam_v_batch_normalization_21_gamma"/device:CPU:0*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOp=read_51_disablecopyonread_adam_v_batch_normalization_21_gamma^Read_51/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_52/DisableCopyOnReadDisableCopyOnRead<read_52_disablecopyonread_adam_m_batch_normalization_21_beta"/device:CPU:0*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOp<read_52_disablecopyonread_adam_m_batch_normalization_21_beta^Read_52/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_53/DisableCopyOnReadDisableCopyOnRead<read_53_disablecopyonread_adam_v_batch_normalization_21_beta"/device:CPU:0*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOp<read_53_disablecopyonread_adam_v_batch_normalization_21_beta^Read_53/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_54/DisableCopyOnReadDisableCopyOnRead1read_54_disablecopyonread_adam_m_conv2d_64_kernel"/device:CPU:0*
_output_shapes
 �
Read_54/ReadVariableOpReadVariableOp1read_54_disablecopyonread_adam_m_conv2d_64_kernel^Read_54/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0x
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @o
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_55/DisableCopyOnReadDisableCopyOnRead1read_55_disablecopyonread_adam_v_conv2d_64_kernel"/device:CPU:0*
_output_shapes
 �
Read_55/ReadVariableOpReadVariableOp1read_55_disablecopyonread_adam_v_conv2d_64_kernel^Read_55/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0x
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @o
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_56/DisableCopyOnReadDisableCopyOnRead/read_56_disablecopyonread_adam_m_conv2d_64_bias"/device:CPU:0*
_output_shapes
 �
Read_56/ReadVariableOpReadVariableOp/read_56_disablecopyonread_adam_m_conv2d_64_bias^Read_56/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_57/DisableCopyOnReadDisableCopyOnRead/read_57_disablecopyonread_adam_v_conv2d_64_bias"/device:CPU:0*
_output_shapes
 �
Read_57/ReadVariableOpReadVariableOp/read_57_disablecopyonread_adam_v_conv2d_64_bias^Read_57/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_58/DisableCopyOnReadDisableCopyOnRead=read_58_disablecopyonread_adam_m_batch_normalization_22_gamma"/device:CPU:0*
_output_shapes
 �
Read_58/ReadVariableOpReadVariableOp=read_58_disablecopyonread_adam_m_batch_normalization_22_gamma^Read_58/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_59/DisableCopyOnReadDisableCopyOnRead=read_59_disablecopyonread_adam_v_batch_normalization_22_gamma"/device:CPU:0*
_output_shapes
 �
Read_59/ReadVariableOpReadVariableOp=read_59_disablecopyonread_adam_v_batch_normalization_22_gamma^Read_59/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_60/DisableCopyOnReadDisableCopyOnRead<read_60_disablecopyonread_adam_m_batch_normalization_22_beta"/device:CPU:0*
_output_shapes
 �
Read_60/ReadVariableOpReadVariableOp<read_60_disablecopyonread_adam_m_batch_normalization_22_beta^Read_60/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_61/DisableCopyOnReadDisableCopyOnRead<read_61_disablecopyonread_adam_v_batch_normalization_22_beta"/device:CPU:0*
_output_shapes
 �
Read_61/ReadVariableOpReadVariableOp<read_61_disablecopyonread_adam_v_batch_normalization_22_beta^Read_61/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_62/DisableCopyOnReadDisableCopyOnRead2read_62_disablecopyonread_adam_m_conv2d_128_kernel"/device:CPU:0*
_output_shapes
 �
Read_62/ReadVariableOpReadVariableOp2read_62_disablecopyonread_adam_m_conv2d_128_kernel^Read_62/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@�*
dtype0y
Identity_124IdentityRead_62/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@�p
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*'
_output_shapes
:@��
Read_63/DisableCopyOnReadDisableCopyOnRead2read_63_disablecopyonread_adam_v_conv2d_128_kernel"/device:CPU:0*
_output_shapes
 �
Read_63/ReadVariableOpReadVariableOp2read_63_disablecopyonread_adam_v_conv2d_128_kernel^Read_63/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@�*
dtype0y
Identity_126IdentityRead_63/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@�p
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0*'
_output_shapes
:@��
Read_64/DisableCopyOnReadDisableCopyOnRead0read_64_disablecopyonread_adam_m_conv2d_128_bias"/device:CPU:0*
_output_shapes
 �
Read_64/ReadVariableOpReadVariableOp0read_64_disablecopyonread_adam_m_conv2d_128_bias^Read_64/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_128IdentityRead_64/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_65/DisableCopyOnReadDisableCopyOnRead0read_65_disablecopyonread_adam_v_conv2d_128_bias"/device:CPU:0*
_output_shapes
 �
Read_65/ReadVariableOpReadVariableOp0read_65_disablecopyonread_adam_v_conv2d_128_bias^Read_65/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_130IdentityRead_65/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_66/DisableCopyOnReadDisableCopyOnRead=read_66_disablecopyonread_adam_m_batch_normalization_23_gamma"/device:CPU:0*
_output_shapes
 �
Read_66/ReadVariableOpReadVariableOp=read_66_disablecopyonread_adam_m_batch_normalization_23_gamma^Read_66/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_132IdentityRead_66/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_67/DisableCopyOnReadDisableCopyOnRead=read_67_disablecopyonread_adam_v_batch_normalization_23_gamma"/device:CPU:0*
_output_shapes
 �
Read_67/ReadVariableOpReadVariableOp=read_67_disablecopyonread_adam_v_batch_normalization_23_gamma^Read_67/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_134IdentityRead_67/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_68/DisableCopyOnReadDisableCopyOnRead<read_68_disablecopyonread_adam_m_batch_normalization_23_beta"/device:CPU:0*
_output_shapes
 �
Read_68/ReadVariableOpReadVariableOp<read_68_disablecopyonread_adam_m_batch_normalization_23_beta^Read_68/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_136IdentityRead_68/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_137IdentityIdentity_136:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_69/DisableCopyOnReadDisableCopyOnRead<read_69_disablecopyonread_adam_v_batch_normalization_23_beta"/device:CPU:0*
_output_shapes
 �
Read_69/ReadVariableOpReadVariableOp<read_69_disablecopyonread_adam_v_batch_normalization_23_beta^Read_69/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_138IdentityRead_69/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_139IdentityIdentity_138:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_70/DisableCopyOnReadDisableCopyOnRead2read_70_disablecopyonread_adam_m_dense_1024_kernel"/device:CPU:0*
_output_shapes
 �
Read_70/ReadVariableOpReadVariableOp2read_70_disablecopyonread_adam_m_dense_1024_kernel^Read_70/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0r
Identity_140IdentityRead_70/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��i
Identity_141IdentityIdentity_140:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_71/DisableCopyOnReadDisableCopyOnRead2read_71_disablecopyonread_adam_v_dense_1024_kernel"/device:CPU:0*
_output_shapes
 �
Read_71/ReadVariableOpReadVariableOp2read_71_disablecopyonread_adam_v_dense_1024_kernel^Read_71/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0r
Identity_142IdentityRead_71/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��i
Identity_143IdentityIdentity_142:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_72/DisableCopyOnReadDisableCopyOnRead0read_72_disablecopyonread_adam_m_dense_1024_bias"/device:CPU:0*
_output_shapes
 �
Read_72/ReadVariableOpReadVariableOp0read_72_disablecopyonread_adam_m_dense_1024_bias^Read_72/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_144IdentityRead_72/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_145IdentityIdentity_144:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_73/DisableCopyOnReadDisableCopyOnRead0read_73_disablecopyonread_adam_v_dense_1024_bias"/device:CPU:0*
_output_shapes
 �
Read_73/ReadVariableOpReadVariableOp0read_73_disablecopyonread_adam_v_dense_1024_bias^Read_73/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_146IdentityRead_73/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_147IdentityIdentity_146:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_74/DisableCopyOnReadDisableCopyOnRead=read_74_disablecopyonread_adam_m_batch_normalization_24_gamma"/device:CPU:0*
_output_shapes
 �
Read_74/ReadVariableOpReadVariableOp=read_74_disablecopyonread_adam_m_batch_normalization_24_gamma^Read_74/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_148IdentityRead_74/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_149IdentityIdentity_148:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_75/DisableCopyOnReadDisableCopyOnRead=read_75_disablecopyonread_adam_v_batch_normalization_24_gamma"/device:CPU:0*
_output_shapes
 �
Read_75/ReadVariableOpReadVariableOp=read_75_disablecopyonread_adam_v_batch_normalization_24_gamma^Read_75/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_150IdentityRead_75/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_151IdentityIdentity_150:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_76/DisableCopyOnReadDisableCopyOnRead<read_76_disablecopyonread_adam_m_batch_normalization_24_beta"/device:CPU:0*
_output_shapes
 �
Read_76/ReadVariableOpReadVariableOp<read_76_disablecopyonread_adam_m_batch_normalization_24_beta^Read_76/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_152IdentityRead_76/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_153IdentityIdentity_152:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_77/DisableCopyOnReadDisableCopyOnRead<read_77_disablecopyonread_adam_v_batch_normalization_24_beta"/device:CPU:0*
_output_shapes
 �
Read_77/ReadVariableOpReadVariableOp<read_77_disablecopyonread_adam_v_batch_normalization_24_beta^Read_77/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_154IdentityRead_77/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_155IdentityIdentity_154:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_78/DisableCopyOnReadDisableCopyOnRead1read_78_disablecopyonread_adam_m_dense_512_kernel"/device:CPU:0*
_output_shapes
 �
Read_78/ReadVariableOpReadVariableOp1read_78_disablecopyonread_adam_m_dense_512_kernel^Read_78/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0r
Identity_156IdentityRead_78/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��i
Identity_157IdentityIdentity_156:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_79/DisableCopyOnReadDisableCopyOnRead1read_79_disablecopyonread_adam_v_dense_512_kernel"/device:CPU:0*
_output_shapes
 �
Read_79/ReadVariableOpReadVariableOp1read_79_disablecopyonread_adam_v_dense_512_kernel^Read_79/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0r
Identity_158IdentityRead_79/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��i
Identity_159IdentityIdentity_158:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_80/DisableCopyOnReadDisableCopyOnRead/read_80_disablecopyonread_adam_m_dense_512_bias"/device:CPU:0*
_output_shapes
 �
Read_80/ReadVariableOpReadVariableOp/read_80_disablecopyonread_adam_m_dense_512_bias^Read_80/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_160IdentityRead_80/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_161IdentityIdentity_160:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_81/DisableCopyOnReadDisableCopyOnRead/read_81_disablecopyonread_adam_v_dense_512_bias"/device:CPU:0*
_output_shapes
 �
Read_81/ReadVariableOpReadVariableOp/read_81_disablecopyonread_adam_v_dense_512_bias^Read_81/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_162IdentityRead_81/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_163IdentityIdentity_162:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_82/DisableCopyOnReadDisableCopyOnRead=read_82_disablecopyonread_adam_m_batch_normalization_25_gamma"/device:CPU:0*
_output_shapes
 �
Read_82/ReadVariableOpReadVariableOp=read_82_disablecopyonread_adam_m_batch_normalization_25_gamma^Read_82/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_164IdentityRead_82/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_165IdentityIdentity_164:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_83/DisableCopyOnReadDisableCopyOnRead=read_83_disablecopyonread_adam_v_batch_normalization_25_gamma"/device:CPU:0*
_output_shapes
 �
Read_83/ReadVariableOpReadVariableOp=read_83_disablecopyonread_adam_v_batch_normalization_25_gamma^Read_83/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_166IdentityRead_83/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_167IdentityIdentity_166:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_84/DisableCopyOnReadDisableCopyOnRead<read_84_disablecopyonread_adam_m_batch_normalization_25_beta"/device:CPU:0*
_output_shapes
 �
Read_84/ReadVariableOpReadVariableOp<read_84_disablecopyonread_adam_m_batch_normalization_25_beta^Read_84/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_168IdentityRead_84/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_169IdentityIdentity_168:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_85/DisableCopyOnReadDisableCopyOnRead<read_85_disablecopyonread_adam_v_batch_normalization_25_beta"/device:CPU:0*
_output_shapes
 �
Read_85/ReadVariableOpReadVariableOp<read_85_disablecopyonread_adam_v_batch_normalization_25_beta^Read_85/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_170IdentityRead_85/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_171IdentityIdentity_170:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_86/DisableCopyOnReadDisableCopyOnRead1read_86_disablecopyonread_adam_m_dense_256_kernel"/device:CPU:0*
_output_shapes
 �
Read_86/ReadVariableOpReadVariableOp1read_86_disablecopyonread_adam_m_dense_256_kernel^Read_86/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0r
Identity_172IdentityRead_86/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��i
Identity_173IdentityIdentity_172:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_87/DisableCopyOnReadDisableCopyOnRead1read_87_disablecopyonread_adam_v_dense_256_kernel"/device:CPU:0*
_output_shapes
 �
Read_87/ReadVariableOpReadVariableOp1read_87_disablecopyonread_adam_v_dense_256_kernel^Read_87/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0r
Identity_174IdentityRead_87/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��i
Identity_175IdentityIdentity_174:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_88/DisableCopyOnReadDisableCopyOnRead/read_88_disablecopyonread_adam_m_dense_256_bias"/device:CPU:0*
_output_shapes
 �
Read_88/ReadVariableOpReadVariableOp/read_88_disablecopyonread_adam_m_dense_256_bias^Read_88/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_176IdentityRead_88/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_177IdentityIdentity_176:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_89/DisableCopyOnReadDisableCopyOnRead/read_89_disablecopyonread_adam_v_dense_256_bias"/device:CPU:0*
_output_shapes
 �
Read_89/ReadVariableOpReadVariableOp/read_89_disablecopyonread_adam_v_dense_256_bias^Read_89/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_178IdentityRead_89/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_179IdentityIdentity_178:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_90/DisableCopyOnReadDisableCopyOnRead=read_90_disablecopyonread_adam_m_batch_normalization_26_gamma"/device:CPU:0*
_output_shapes
 �
Read_90/ReadVariableOpReadVariableOp=read_90_disablecopyonread_adam_m_batch_normalization_26_gamma^Read_90/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_180IdentityRead_90/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_181IdentityIdentity_180:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_91/DisableCopyOnReadDisableCopyOnRead=read_91_disablecopyonread_adam_v_batch_normalization_26_gamma"/device:CPU:0*
_output_shapes
 �
Read_91/ReadVariableOpReadVariableOp=read_91_disablecopyonread_adam_v_batch_normalization_26_gamma^Read_91/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_182IdentityRead_91/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_183IdentityIdentity_182:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_92/DisableCopyOnReadDisableCopyOnRead<read_92_disablecopyonread_adam_m_batch_normalization_26_beta"/device:CPU:0*
_output_shapes
 �
Read_92/ReadVariableOpReadVariableOp<read_92_disablecopyonread_adam_m_batch_normalization_26_beta^Read_92/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_184IdentityRead_92/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_185IdentityIdentity_184:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_93/DisableCopyOnReadDisableCopyOnRead<read_93_disablecopyonread_adam_v_batch_normalization_26_beta"/device:CPU:0*
_output_shapes
 �
Read_93/ReadVariableOpReadVariableOp<read_93_disablecopyonread_adam_v_batch_normalization_26_beta^Read_93/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_186IdentityRead_93/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_187IdentityIdentity_186:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_94/DisableCopyOnReadDisableCopyOnRead1read_94_disablecopyonread_adam_m_dense_128_kernel"/device:CPU:0*
_output_shapes
 �
Read_94/ReadVariableOpReadVariableOp1read_94_disablecopyonread_adam_m_dense_128_kernel^Read_94/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0r
Identity_188IdentityRead_94/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��i
Identity_189IdentityIdentity_188:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_95/DisableCopyOnReadDisableCopyOnRead1read_95_disablecopyonread_adam_v_dense_128_kernel"/device:CPU:0*
_output_shapes
 �
Read_95/ReadVariableOpReadVariableOp1read_95_disablecopyonread_adam_v_dense_128_kernel^Read_95/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0r
Identity_190IdentityRead_95/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��i
Identity_191IdentityIdentity_190:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_96/DisableCopyOnReadDisableCopyOnRead/read_96_disablecopyonread_adam_m_dense_128_bias"/device:CPU:0*
_output_shapes
 �
Read_96/ReadVariableOpReadVariableOp/read_96_disablecopyonread_adam_m_dense_128_bias^Read_96/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_192IdentityRead_96/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_193IdentityIdentity_192:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_97/DisableCopyOnReadDisableCopyOnRead/read_97_disablecopyonread_adam_v_dense_128_bias"/device:CPU:0*
_output_shapes
 �
Read_97/ReadVariableOpReadVariableOp/read_97_disablecopyonread_adam_v_dense_128_bias^Read_97/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_194IdentityRead_97/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_195IdentityIdentity_194:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_98/DisableCopyOnReadDisableCopyOnRead=read_98_disablecopyonread_adam_m_batch_normalization_27_gamma"/device:CPU:0*
_output_shapes
 �
Read_98/ReadVariableOpReadVariableOp=read_98_disablecopyonread_adam_m_batch_normalization_27_gamma^Read_98/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_196IdentityRead_98/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_197IdentityIdentity_196:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_99/DisableCopyOnReadDisableCopyOnRead=read_99_disablecopyonread_adam_v_batch_normalization_27_gamma"/device:CPU:0*
_output_shapes
 �
Read_99/ReadVariableOpReadVariableOp=read_99_disablecopyonread_adam_v_batch_normalization_27_gamma^Read_99/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_198IdentityRead_99/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_199IdentityIdentity_198:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_100/DisableCopyOnReadDisableCopyOnRead=read_100_disablecopyonread_adam_m_batch_normalization_27_beta"/device:CPU:0*
_output_shapes
 �
Read_100/ReadVariableOpReadVariableOp=read_100_disablecopyonread_adam_m_batch_normalization_27_beta^Read_100/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_200IdentityRead_100/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_201IdentityIdentity_200:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_101/DisableCopyOnReadDisableCopyOnRead=read_101_disablecopyonread_adam_v_batch_normalization_27_beta"/device:CPU:0*
_output_shapes
 �
Read_101/ReadVariableOpReadVariableOp=read_101_disablecopyonread_adam_v_batch_normalization_27_beta^Read_101/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_202IdentityRead_101/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_203IdentityIdentity_202:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_102/DisableCopyOnReadDisableCopyOnRead=read_102_disablecopyonread_adam_m_output_layer_dense_7_kernel"/device:CPU:0*
_output_shapes
 �
Read_102/ReadVariableOpReadVariableOp=read_102_disablecopyonread_adam_m_output_layer_dense_7_kernel^Read_102/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0r
Identity_204IdentityRead_102/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�h
Identity_205IdentityIdentity_204:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_103/DisableCopyOnReadDisableCopyOnRead=read_103_disablecopyonread_adam_v_output_layer_dense_7_kernel"/device:CPU:0*
_output_shapes
 �
Read_103/ReadVariableOpReadVariableOp=read_103_disablecopyonread_adam_v_output_layer_dense_7_kernel^Read_103/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0r
Identity_206IdentityRead_103/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�h
Identity_207IdentityIdentity_206:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_104/DisableCopyOnReadDisableCopyOnRead;read_104_disablecopyonread_adam_m_output_layer_dense_7_bias"/device:CPU:0*
_output_shapes
 �
Read_104/ReadVariableOpReadVariableOp;read_104_disablecopyonread_adam_m_output_layer_dense_7_bias^Read_104/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_208IdentityRead_104/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_209IdentityIdentity_208:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_105/DisableCopyOnReadDisableCopyOnRead;read_105_disablecopyonread_adam_v_output_layer_dense_7_bias"/device:CPU:0*
_output_shapes
 �
Read_105/ReadVariableOpReadVariableOp;read_105_disablecopyonread_adam_v_output_layer_dense_7_bias^Read_105/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_210IdentityRead_105/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_211IdentityIdentity_210:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_106/DisableCopyOnReadDisableCopyOnRead"read_106_disablecopyonread_total_2"/device:CPU:0*
_output_shapes
 �
Read_106/ReadVariableOpReadVariableOp"read_106_disablecopyonread_total_2^Read_106/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_212IdentityRead_106/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_213IdentityIdentity_212:output:0"/device:CPU:0*
T0*
_output_shapes
: x
Read_107/DisableCopyOnReadDisableCopyOnRead"read_107_disablecopyonread_count_2"/device:CPU:0*
_output_shapes
 �
Read_107/ReadVariableOpReadVariableOp"read_107_disablecopyonread_count_2^Read_107/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_214IdentityRead_107/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_215IdentityIdentity_214:output:0"/device:CPU:0*
T0*
_output_shapes
: x
Read_108/DisableCopyOnReadDisableCopyOnRead"read_108_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_108/ReadVariableOpReadVariableOp"read_108_disablecopyonread_total_1^Read_108/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_216IdentityRead_108/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_217IdentityIdentity_216:output:0"/device:CPU:0*
T0*
_output_shapes
: x
Read_109/DisableCopyOnReadDisableCopyOnRead"read_109_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_109/ReadVariableOpReadVariableOp"read_109_disablecopyonread_count_1^Read_109/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_218IdentityRead_109/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_219IdentityIdentity_218:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_110/DisableCopyOnReadDisableCopyOnRead read_110_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_110/ReadVariableOpReadVariableOp read_110_disablecopyonread_total^Read_110/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_220IdentityRead_110/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_221IdentityIdentity_220:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_111/DisableCopyOnReadDisableCopyOnRead read_111_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_111/ReadVariableOpReadVariableOp read_111_disablecopyonread_count^Read_111/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_222IdentityRead_111/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_223IdentityIdentity_222:output:0"/device:CPU:0*
T0*
_output_shapes
: �0
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:q*
dtype0*�/
value�/B�/qB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/53/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/54/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/55/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/56/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/57/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/58/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/59/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/60/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:q*
dtype0*�
value�B�qB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0Identity_137:output:0Identity_139:output:0Identity_141:output:0Identity_143:output:0Identity_145:output:0Identity_147:output:0Identity_149:output:0Identity_151:output:0Identity_153:output:0Identity_155:output:0Identity_157:output:0Identity_159:output:0Identity_161:output:0Identity_163:output:0Identity_165:output:0Identity_167:output:0Identity_169:output:0Identity_171:output:0Identity_173:output:0Identity_175:output:0Identity_177:output:0Identity_179:output:0Identity_181:output:0Identity_183:output:0Identity_185:output:0Identity_187:output:0Identity_189:output:0Identity_191:output:0Identity_193:output:0Identity_195:output:0Identity_197:output:0Identity_199:output:0Identity_201:output:0Identity_203:output:0Identity_205:output:0Identity_207:output:0Identity_209:output:0Identity_211:output:0Identity_213:output:0Identity_215:output:0Identity_217:output:0Identity_219:output:0Identity_221:output:0Identity_223:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypesu
s2q	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_224Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_225IdentityIdentity_224:output:0^NoOp*
T0*
_output_shapes
: �.
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_100/DisableCopyOnRead^Read_100/ReadVariableOp^Read_101/DisableCopyOnRead^Read_101/ReadVariableOp^Read_102/DisableCopyOnRead^Read_102/ReadVariableOp^Read_103/DisableCopyOnRead^Read_103/ReadVariableOp^Read_104/DisableCopyOnRead^Read_104/ReadVariableOp^Read_105/DisableCopyOnRead^Read_105/ReadVariableOp^Read_106/DisableCopyOnRead^Read_106/ReadVariableOp^Read_107/DisableCopyOnRead^Read_107/ReadVariableOp^Read_108/DisableCopyOnRead^Read_108/ReadVariableOp^Read_109/DisableCopyOnRead^Read_109/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_110/DisableCopyOnRead^Read_110/ReadVariableOp^Read_111/DisableCopyOnRead^Read_111/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_66/DisableCopyOnRead^Read_66/ReadVariableOp^Read_67/DisableCopyOnRead^Read_67/ReadVariableOp^Read_68/DisableCopyOnRead^Read_68/ReadVariableOp^Read_69/DisableCopyOnRead^Read_69/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_70/DisableCopyOnRead^Read_70/ReadVariableOp^Read_71/DisableCopyOnRead^Read_71/ReadVariableOp^Read_72/DisableCopyOnRead^Read_72/ReadVariableOp^Read_73/DisableCopyOnRead^Read_73/ReadVariableOp^Read_74/DisableCopyOnRead^Read_74/ReadVariableOp^Read_75/DisableCopyOnRead^Read_75/ReadVariableOp^Read_76/DisableCopyOnRead^Read_76/ReadVariableOp^Read_77/DisableCopyOnRead^Read_77/ReadVariableOp^Read_78/DisableCopyOnRead^Read_78/ReadVariableOp^Read_79/DisableCopyOnRead^Read_79/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_80/DisableCopyOnRead^Read_80/ReadVariableOp^Read_81/DisableCopyOnRead^Read_81/ReadVariableOp^Read_82/DisableCopyOnRead^Read_82/ReadVariableOp^Read_83/DisableCopyOnRead^Read_83/ReadVariableOp^Read_84/DisableCopyOnRead^Read_84/ReadVariableOp^Read_85/DisableCopyOnRead^Read_85/ReadVariableOp^Read_86/DisableCopyOnRead^Read_86/ReadVariableOp^Read_87/DisableCopyOnRead^Read_87/ReadVariableOp^Read_88/DisableCopyOnRead^Read_88/ReadVariableOp^Read_89/DisableCopyOnRead^Read_89/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp^Read_90/DisableCopyOnRead^Read_90/ReadVariableOp^Read_91/DisableCopyOnRead^Read_91/ReadVariableOp^Read_92/DisableCopyOnRead^Read_92/ReadVariableOp^Read_93/DisableCopyOnRead^Read_93/ReadVariableOp^Read_94/DisableCopyOnRead^Read_94/ReadVariableOp^Read_95/DisableCopyOnRead^Read_95/ReadVariableOp^Read_96/DisableCopyOnRead^Read_96/ReadVariableOp^Read_97/DisableCopyOnRead^Read_97/ReadVariableOp^Read_98/DisableCopyOnRead^Read_98/ReadVariableOp^Read_99/DisableCopyOnRead^Read_99/ReadVariableOp*
_output_shapes
 "%
identity_225Identity_225:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp28
Read_100/DisableCopyOnReadRead_100/DisableCopyOnRead22
Read_100/ReadVariableOpRead_100/ReadVariableOp28
Read_101/DisableCopyOnReadRead_101/DisableCopyOnRead22
Read_101/ReadVariableOpRead_101/ReadVariableOp28
Read_102/DisableCopyOnReadRead_102/DisableCopyOnRead22
Read_102/ReadVariableOpRead_102/ReadVariableOp28
Read_103/DisableCopyOnReadRead_103/DisableCopyOnRead22
Read_103/ReadVariableOpRead_103/ReadVariableOp28
Read_104/DisableCopyOnReadRead_104/DisableCopyOnRead22
Read_104/ReadVariableOpRead_104/ReadVariableOp28
Read_105/DisableCopyOnReadRead_105/DisableCopyOnRead22
Read_105/ReadVariableOpRead_105/ReadVariableOp28
Read_106/DisableCopyOnReadRead_106/DisableCopyOnRead22
Read_106/ReadVariableOpRead_106/ReadVariableOp28
Read_107/DisableCopyOnReadRead_107/DisableCopyOnRead22
Read_107/ReadVariableOpRead_107/ReadVariableOp28
Read_108/DisableCopyOnReadRead_108/DisableCopyOnRead22
Read_108/ReadVariableOpRead_108/ReadVariableOp28
Read_109/DisableCopyOnReadRead_109/DisableCopyOnRead22
Read_109/ReadVariableOpRead_109/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp28
Read_110/DisableCopyOnReadRead_110/DisableCopyOnRead22
Read_110/ReadVariableOpRead_110/ReadVariableOp28
Read_111/DisableCopyOnReadRead_111/DisableCopyOnRead22
Read_111/ReadVariableOpRead_111/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp26
Read_63/DisableCopyOnReadRead_63/DisableCopyOnRead20
Read_63/ReadVariableOpRead_63/ReadVariableOp26
Read_64/DisableCopyOnReadRead_64/DisableCopyOnRead20
Read_64/ReadVariableOpRead_64/ReadVariableOp26
Read_65/DisableCopyOnReadRead_65/DisableCopyOnRead20
Read_65/ReadVariableOpRead_65/ReadVariableOp26
Read_66/DisableCopyOnReadRead_66/DisableCopyOnRead20
Read_66/ReadVariableOpRead_66/ReadVariableOp26
Read_67/DisableCopyOnReadRead_67/DisableCopyOnRead20
Read_67/ReadVariableOpRead_67/ReadVariableOp26
Read_68/DisableCopyOnReadRead_68/DisableCopyOnRead20
Read_68/ReadVariableOpRead_68/ReadVariableOp26
Read_69/DisableCopyOnReadRead_69/DisableCopyOnRead20
Read_69/ReadVariableOpRead_69/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp26
Read_70/DisableCopyOnReadRead_70/DisableCopyOnRead20
Read_70/ReadVariableOpRead_70/ReadVariableOp26
Read_71/DisableCopyOnReadRead_71/DisableCopyOnRead20
Read_71/ReadVariableOpRead_71/ReadVariableOp26
Read_72/DisableCopyOnReadRead_72/DisableCopyOnRead20
Read_72/ReadVariableOpRead_72/ReadVariableOp26
Read_73/DisableCopyOnReadRead_73/DisableCopyOnRead20
Read_73/ReadVariableOpRead_73/ReadVariableOp26
Read_74/DisableCopyOnReadRead_74/DisableCopyOnRead20
Read_74/ReadVariableOpRead_74/ReadVariableOp26
Read_75/DisableCopyOnReadRead_75/DisableCopyOnRead20
Read_75/ReadVariableOpRead_75/ReadVariableOp26
Read_76/DisableCopyOnReadRead_76/DisableCopyOnRead20
Read_76/ReadVariableOpRead_76/ReadVariableOp26
Read_77/DisableCopyOnReadRead_77/DisableCopyOnRead20
Read_77/ReadVariableOpRead_77/ReadVariableOp26
Read_78/DisableCopyOnReadRead_78/DisableCopyOnRead20
Read_78/ReadVariableOpRead_78/ReadVariableOp26
Read_79/DisableCopyOnReadRead_79/DisableCopyOnRead20
Read_79/ReadVariableOpRead_79/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp26
Read_80/DisableCopyOnReadRead_80/DisableCopyOnRead20
Read_80/ReadVariableOpRead_80/ReadVariableOp26
Read_81/DisableCopyOnReadRead_81/DisableCopyOnRead20
Read_81/ReadVariableOpRead_81/ReadVariableOp26
Read_82/DisableCopyOnReadRead_82/DisableCopyOnRead20
Read_82/ReadVariableOpRead_82/ReadVariableOp26
Read_83/DisableCopyOnReadRead_83/DisableCopyOnRead20
Read_83/ReadVariableOpRead_83/ReadVariableOp26
Read_84/DisableCopyOnReadRead_84/DisableCopyOnRead20
Read_84/ReadVariableOpRead_84/ReadVariableOp26
Read_85/DisableCopyOnReadRead_85/DisableCopyOnRead20
Read_85/ReadVariableOpRead_85/ReadVariableOp26
Read_86/DisableCopyOnReadRead_86/DisableCopyOnRead20
Read_86/ReadVariableOpRead_86/ReadVariableOp26
Read_87/DisableCopyOnReadRead_87/DisableCopyOnRead20
Read_87/ReadVariableOpRead_87/ReadVariableOp26
Read_88/DisableCopyOnReadRead_88/DisableCopyOnRead20
Read_88/ReadVariableOpRead_88/ReadVariableOp26
Read_89/DisableCopyOnReadRead_89/DisableCopyOnRead20
Read_89/ReadVariableOpRead_89/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp26
Read_90/DisableCopyOnReadRead_90/DisableCopyOnRead20
Read_90/ReadVariableOpRead_90/ReadVariableOp26
Read_91/DisableCopyOnReadRead_91/DisableCopyOnRead20
Read_91/ReadVariableOpRead_91/ReadVariableOp26
Read_92/DisableCopyOnReadRead_92/DisableCopyOnRead20
Read_92/ReadVariableOpRead_92/ReadVariableOp26
Read_93/DisableCopyOnReadRead_93/DisableCopyOnRead20
Read_93/ReadVariableOpRead_93/ReadVariableOp26
Read_94/DisableCopyOnReadRead_94/DisableCopyOnRead20
Read_94/ReadVariableOpRead_94/ReadVariableOp26
Read_95/DisableCopyOnReadRead_95/DisableCopyOnRead20
Read_95/ReadVariableOpRead_95/ReadVariableOp26
Read_96/DisableCopyOnReadRead_96/DisableCopyOnRead20
Read_96/ReadVariableOpRead_96/ReadVariableOp26
Read_97/DisableCopyOnReadRead_97/DisableCopyOnRead20
Read_97/ReadVariableOpRead_97/ReadVariableOp26
Read_98/DisableCopyOnReadRead_98/DisableCopyOnRead20
Read_98/ReadVariableOpRead_98/ReadVariableOp26
Read_99/DisableCopyOnReadRead_99/DisableCopyOnRead20
Read_99/ReadVariableOpRead_99/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_user_specified_nameConv2D_32/kernel:.*
(
_user_specified_nameConv2D_32/bias:<8
6
_user_specified_namebatch_normalization_21/gamma:;7
5
_user_specified_namebatch_normalization_21/beta:B>
<
_user_specified_name$"batch_normalization_21/moving_mean:FB
@
_user_specified_name(&batch_normalization_21/moving_variance:0,
*
_user_specified_nameConv2D_64/kernel:.*
(
_user_specified_nameConv2D_64/bias:<	8
6
_user_specified_namebatch_normalization_22/gamma:;
7
5
_user_specified_namebatch_normalization_22/beta:B>
<
_user_specified_name$"batch_normalization_22/moving_mean:FB
@
_user_specified_name(&batch_normalization_22/moving_variance:1-
+
_user_specified_nameConv2D_128/kernel:/+
)
_user_specified_nameConv2D_128/bias:<8
6
_user_specified_namebatch_normalization_23/gamma:;7
5
_user_specified_namebatch_normalization_23/beta:B>
<
_user_specified_name$"batch_normalization_23/moving_mean:FB
@
_user_specified_name(&batch_normalization_23/moving_variance:1-
+
_user_specified_nameDense_1024/kernel:/+
)
_user_specified_nameDense_1024/bias:<8
6
_user_specified_namebatch_normalization_24/gamma:;7
5
_user_specified_namebatch_normalization_24/beta:B>
<
_user_specified_name$"batch_normalization_24/moving_mean:FB
@
_user_specified_name(&batch_normalization_24/moving_variance:0,
*
_user_specified_nameDense_512/kernel:.*
(
_user_specified_nameDense_512/bias:<8
6
_user_specified_namebatch_normalization_25/gamma:;7
5
_user_specified_namebatch_normalization_25/beta:B>
<
_user_specified_name$"batch_normalization_25/moving_mean:FB
@
_user_specified_name(&batch_normalization_25/moving_variance:0,
*
_user_specified_nameDense_256/kernel:. *
(
_user_specified_nameDense_256/bias:<!8
6
_user_specified_namebatch_normalization_26/gamma:;"7
5
_user_specified_namebatch_normalization_26/beta:B#>
<
_user_specified_name$"batch_normalization_26/moving_mean:F$B
@
_user_specified_name(&batch_normalization_26/moving_variance:0%,
*
_user_specified_nameDense_128/kernel:.&*
(
_user_specified_nameDense_128/bias:<'8
6
_user_specified_namebatch_normalization_27/gamma:;(7
5
_user_specified_namebatch_normalization_27/beta:B)>
<
_user_specified_name$"batch_normalization_27/moving_mean:F*B
@
_user_specified_name(&batch_normalization_27/moving_variance:;+7
5
_user_specified_nameOutput_Layer_Dense_7/kernel:9,5
3
_user_specified_nameOutput_Layer_Dense_7/bias:)-%
#
_user_specified_name	iteration:-.)
'
_user_specified_namelearning_rate:7/3
1
_user_specified_nameAdam/m/Conv2D_32/kernel:703
1
_user_specified_nameAdam/v/Conv2D_32/kernel:511
/
_user_specified_nameAdam/m/Conv2D_32/bias:521
/
_user_specified_nameAdam/v/Conv2D_32/bias:C3?
=
_user_specified_name%#Adam/m/batch_normalization_21/gamma:C4?
=
_user_specified_name%#Adam/v/batch_normalization_21/gamma:B5>
<
_user_specified_name$"Adam/m/batch_normalization_21/beta:B6>
<
_user_specified_name$"Adam/v/batch_normalization_21/beta:773
1
_user_specified_nameAdam/m/Conv2D_64/kernel:783
1
_user_specified_nameAdam/v/Conv2D_64/kernel:591
/
_user_specified_nameAdam/m/Conv2D_64/bias:5:1
/
_user_specified_nameAdam/v/Conv2D_64/bias:C;?
=
_user_specified_name%#Adam/m/batch_normalization_22/gamma:C<?
=
_user_specified_name%#Adam/v/batch_normalization_22/gamma:B=>
<
_user_specified_name$"Adam/m/batch_normalization_22/beta:B>>
<
_user_specified_name$"Adam/v/batch_normalization_22/beta:8?4
2
_user_specified_nameAdam/m/Conv2D_128/kernel:8@4
2
_user_specified_nameAdam/v/Conv2D_128/kernel:6A2
0
_user_specified_nameAdam/m/Conv2D_128/bias:6B2
0
_user_specified_nameAdam/v/Conv2D_128/bias:CC?
=
_user_specified_name%#Adam/m/batch_normalization_23/gamma:CD?
=
_user_specified_name%#Adam/v/batch_normalization_23/gamma:BE>
<
_user_specified_name$"Adam/m/batch_normalization_23/beta:BF>
<
_user_specified_name$"Adam/v/batch_normalization_23/beta:8G4
2
_user_specified_nameAdam/m/Dense_1024/kernel:8H4
2
_user_specified_nameAdam/v/Dense_1024/kernel:6I2
0
_user_specified_nameAdam/m/Dense_1024/bias:6J2
0
_user_specified_nameAdam/v/Dense_1024/bias:CK?
=
_user_specified_name%#Adam/m/batch_normalization_24/gamma:CL?
=
_user_specified_name%#Adam/v/batch_normalization_24/gamma:BM>
<
_user_specified_name$"Adam/m/batch_normalization_24/beta:BN>
<
_user_specified_name$"Adam/v/batch_normalization_24/beta:7O3
1
_user_specified_nameAdam/m/Dense_512/kernel:7P3
1
_user_specified_nameAdam/v/Dense_512/kernel:5Q1
/
_user_specified_nameAdam/m/Dense_512/bias:5R1
/
_user_specified_nameAdam/v/Dense_512/bias:CS?
=
_user_specified_name%#Adam/m/batch_normalization_25/gamma:CT?
=
_user_specified_name%#Adam/v/batch_normalization_25/gamma:BU>
<
_user_specified_name$"Adam/m/batch_normalization_25/beta:BV>
<
_user_specified_name$"Adam/v/batch_normalization_25/beta:7W3
1
_user_specified_nameAdam/m/Dense_256/kernel:7X3
1
_user_specified_nameAdam/v/Dense_256/kernel:5Y1
/
_user_specified_nameAdam/m/Dense_256/bias:5Z1
/
_user_specified_nameAdam/v/Dense_256/bias:C[?
=
_user_specified_name%#Adam/m/batch_normalization_26/gamma:C\?
=
_user_specified_name%#Adam/v/batch_normalization_26/gamma:B]>
<
_user_specified_name$"Adam/m/batch_normalization_26/beta:B^>
<
_user_specified_name$"Adam/v/batch_normalization_26/beta:7_3
1
_user_specified_nameAdam/m/Dense_128/kernel:7`3
1
_user_specified_nameAdam/v/Dense_128/kernel:5a1
/
_user_specified_nameAdam/m/Dense_128/bias:5b1
/
_user_specified_nameAdam/v/Dense_128/bias:Cc?
=
_user_specified_name%#Adam/m/batch_normalization_27/gamma:Cd?
=
_user_specified_name%#Adam/v/batch_normalization_27/gamma:Be>
<
_user_specified_name$"Adam/m/batch_normalization_27/beta:Bf>
<
_user_specified_name$"Adam/v/batch_normalization_27/beta:Bg>
<
_user_specified_name$"Adam/m/Output_Layer_Dense_7/kernel:Bh>
<
_user_specified_name$"Adam/v/Output_Layer_Dense_7/kernel:@i<
:
_user_specified_name" Adam/m/Output_Layer_Dense_7/bias:@j<
:
_user_specified_name" Adam/v/Output_Layer_Dense_7/bias:'k#
!
_user_specified_name	total_2:'l#
!
_user_specified_name	count_2:'m#
!
_user_specified_name	total_1:'n#
!
_user_specified_name	count_1:%o!

_user_specified_nametotal:%p!

_user_specified_namecount:=q9

_output_shapes
: 

_user_specified_nameConst
�
�
R__inference_batch_normalization_25_layer_call_and_return_conditional_losses_653947

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
E__inference_Dense_512_layer_call_and_return_conditional_losses_652783

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
7__inference_batch_normalization_25_layer_call_fn_653893

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_25_layer_call_and_return_conditional_losses_652467p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:&"
 
_user_specified_name653883:&"
 
_user_specified_name653885:&"
 
_user_specified_name653887:&"
 
_user_specified_name653889
�
d
+__inference_dropout_13_layer_call_fn_653952

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_13_layer_call_and_return_conditional_losses_652809p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
d
F__inference_dropout_15_layer_call_and_return_conditional_losses_654228

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

e
F__inference_dropout_14_layer_call_and_return_conditional_losses_654096

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
7__inference_batch_normalization_21_layer_call_fn_653479

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_652142�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs:&"
 
_user_specified_name653469:&"
 
_user_specified_name653471:&"
 
_user_specified_name653473:&"
 
_user_specified_name653475
�
L
0__inference_max_pooling2d_9_layer_call_fn_653520

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_652173�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

e
F__inference_dropout_13_layer_call_and_return_conditional_losses_653969

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_24_layer_call_and_return_conditional_losses_653820

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
d
F__inference_dropout_12_layer_call_and_return_conditional_losses_653847

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�#
�

.__inference_CNN_Model_1o4_layer_call_fn_653225
conv2d_32_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@�

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:
��

unknown_18:	�

unknown_19:	�

unknown_20:	�

unknown_21:	�

unknown_22:	�

unknown_23:
��

unknown_24:	�

unknown_25:	�

unknown_26:	�

unknown_27:	�

unknown_28:	�

unknown_29:
��

unknown_30:	�

unknown_31:	�

unknown_32:	�

unknown_33:	�

unknown_34:	�

unknown_35:
��

unknown_36:	�

unknown_37:	�

unknown_38:	�

unknown_39:	�

unknown_40:	�

unknown_41:	�

unknown_42:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_32_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*N
_read_only_resource_inputs0
.,	
 !"#$%&'()*+,*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_CNN_Model_1o4_layer_call_and_return_conditional_losses_653039o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesw
u:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:�����������
)
_user_specified_nameConv2D_32_input:&"
 
_user_specified_name653135:&"
 
_user_specified_name653137:&"
 
_user_specified_name653139:&"
 
_user_specified_name653141:&"
 
_user_specified_name653143:&"
 
_user_specified_name653145:&"
 
_user_specified_name653147:&"
 
_user_specified_name653149:&	"
 
_user_specified_name653151:&
"
 
_user_specified_name653153:&"
 
_user_specified_name653155:&"
 
_user_specified_name653157:&"
 
_user_specified_name653159:&"
 
_user_specified_name653161:&"
 
_user_specified_name653163:&"
 
_user_specified_name653165:&"
 
_user_specified_name653167:&"
 
_user_specified_name653169:&"
 
_user_specified_name653171:&"
 
_user_specified_name653173:&"
 
_user_specified_name653175:&"
 
_user_specified_name653177:&"
 
_user_specified_name653179:&"
 
_user_specified_name653181:&"
 
_user_specified_name653183:&"
 
_user_specified_name653185:&"
 
_user_specified_name653187:&"
 
_user_specified_name653189:&"
 
_user_specified_name653191:&"
 
_user_specified_name653193:&"
 
_user_specified_name653195:& "
 
_user_specified_name653197:&!"
 
_user_specified_name653199:&""
 
_user_specified_name653201:&#"
 
_user_specified_name653203:&$"
 
_user_specified_name653205:&%"
 
_user_specified_name653207:&&"
 
_user_specified_name653209:&'"
 
_user_specified_name653211:&("
 
_user_specified_name653213:&)"
 
_user_specified_name653215:&*"
 
_user_specified_name653217:&+"
 
_user_specified_name653219:&,"
 
_user_specified_name653221
�

�
7__inference_batch_normalization_23_layer_call_fn_653650

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_652268�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:&"
 
_user_specified_name653640:&"
 
_user_specified_name653642:&"
 
_user_specified_name653644:&"
 
_user_specified_name653646
�	
�
7__inference_batch_normalization_27_layer_call_fn_654134

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_652607p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:&"
 
_user_specified_name654124:&"
 
_user_specified_name654126:&"
 
_user_specified_name654128:&"
 
_user_specified_name654130
�
r
V__inference_global_average_pooling2d_3_layer_call_and_return_conditional_losses_653720

inputs
identityg
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
r
V__inference_global_average_pooling2d_3_layer_call_and_return_conditional_losses_652328

inputs
identityg
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
*__inference_Dense_128_layer_call_fn_654110

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Dense_128_layer_call_and_return_conditional_losses_652859p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:&"
 
_user_specified_name654104:&"
 
_user_specified_name654106
��
�
I__inference_CNN_Model_1o4_layer_call_and_return_conditional_losses_653039
conv2d_32_input*
conv2d_32_652907: 
conv2d_32_652909: +
batch_normalization_21_652912: +
batch_normalization_21_652914: +
batch_normalization_21_652916: +
batch_normalization_21_652918: *
conv2d_64_652922: @
conv2d_64_652924:@+
batch_normalization_22_652927:@+
batch_normalization_22_652929:@+
batch_normalization_22_652931:@+
batch_normalization_22_652933:@,
conv2d_128_652937:@� 
conv2d_128_652939:	�,
batch_normalization_23_652942:	�,
batch_normalization_23_652944:	�,
batch_normalization_23_652946:	�,
batch_normalization_23_652948:	�%
dense_1024_652953:
�� 
dense_1024_652955:	�,
batch_normalization_24_652958:	�,
batch_normalization_24_652960:	�,
batch_normalization_24_652962:	�,
batch_normalization_24_652964:	�$
dense_512_652973:
��
dense_512_652975:	�,
batch_normalization_25_652978:	�,
batch_normalization_25_652980:	�,
batch_normalization_25_652982:	�,
batch_normalization_25_652984:	�$
dense_256_652993:
��
dense_256_652995:	�,
batch_normalization_26_652998:	�,
batch_normalization_26_653000:	�,
batch_normalization_26_653002:	�,
batch_normalization_26_653004:	�$
dense_128_653013:
��
dense_128_653015:	�,
batch_normalization_27_653018:	�,
batch_normalization_27_653020:	�,
batch_normalization_27_653022:	�,
batch_normalization_27_653024:	�.
output_layer_dense_7_653033:	�)
output_layer_dense_7_653035:
identity��"Conv2D_128/StatefulPartitionedCall�!Conv2D_32/StatefulPartitionedCall�!Conv2D_64/StatefulPartitionedCall�"Dense_1024/StatefulPartitionedCall�!Dense_128/StatefulPartitionedCall�!Dense_256/StatefulPartitionedCall�!Dense_512/StatefulPartitionedCall�,Output_Layer_Dense_7/StatefulPartitionedCall�.batch_normalization_21/StatefulPartitionedCall�.batch_normalization_22/StatefulPartitionedCall�.batch_normalization_23/StatefulPartitionedCall�.batch_normalization_24/StatefulPartitionedCall�.batch_normalization_25/StatefulPartitionedCall�.batch_normalization_26/StatefulPartitionedCall�.batch_normalization_27/StatefulPartitionedCall�
!Conv2D_32/StatefulPartitionedCallStatefulPartitionedCallconv2d_32_inputconv2d_32_652907conv2d_32_652909*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������~~ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Conv2D_32_layer_call_and_return_conditional_losses_652666�
.batch_normalization_21/StatefulPartitionedCallStatefulPartitionedCall*Conv2D_32/StatefulPartitionedCall:output:0batch_normalization_21_652912batch_normalization_21_652914batch_normalization_21_652916batch_normalization_21_652918*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������~~ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_652142�
max_pooling2d_9/PartitionedCallPartitionedCall7batch_normalization_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������?? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_652173�
!Conv2D_64/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_64_652922conv2d_64_652924*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������==@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Conv2D_64_layer_call_and_return_conditional_losses_652692�
.batch_normalization_22/StatefulPartitionedCallStatefulPartitionedCall*Conv2D_64/StatefulPartitionedCall:output:0batch_normalization_22_652927batch_normalization_22_652929batch_normalization_22_652931batch_normalization_22_652933*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������==@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_652214�
 max_pooling2d_10/PartitionedCallPartitionedCall7batch_normalization_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_652245�
"Conv2D_128/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_128_652937conv2d_128_652939*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_Conv2D_128_layer_call_and_return_conditional_losses_652718�
.batch_normalization_23/StatefulPartitionedCallStatefulPartitionedCall+Conv2D_128/StatefulPartitionedCall:output:0batch_normalization_23_652942batch_normalization_23_652944batch_normalization_23_652946batch_normalization_23_652948*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_652286�
 max_pooling2d_11/PartitionedCallPartitionedCall7batch_normalization_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_652317�
*global_average_pooling2d_3/PartitionedCallPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *_
fZRX
V__inference_global_average_pooling2d_3_layer_call_and_return_conditional_losses_652328�
"Dense_1024/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_3/PartitionedCall:output:0dense_1024_652953dense_1024_652955*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_Dense_1024_layer_call_and_return_conditional_losses_652745�
.batch_normalization_24/StatefulPartitionedCallStatefulPartitionedCall+Dense_1024/StatefulPartitionedCall:output:0batch_normalization_24_652958batch_normalization_24_652960batch_normalization_24_652962batch_normalization_24_652964*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_24_layer_call_and_return_conditional_losses_652387�
dropout_12/PartitionedCallPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_12_layer_call_and_return_conditional_losses_652971�
!Dense_512/StatefulPartitionedCallStatefulPartitionedCall#dropout_12/PartitionedCall:output:0dense_512_652973dense_512_652975*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Dense_512_layer_call_and_return_conditional_losses_652783�
.batch_normalization_25/StatefulPartitionedCallStatefulPartitionedCall*Dense_512/StatefulPartitionedCall:output:0batch_normalization_25_652978batch_normalization_25_652980batch_normalization_25_652982batch_normalization_25_652984*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_25_layer_call_and_return_conditional_losses_652467�
dropout_13/PartitionedCallPartitionedCall7batch_normalization_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_13_layer_call_and_return_conditional_losses_652991�
!Dense_256/StatefulPartitionedCallStatefulPartitionedCall#dropout_13/PartitionedCall:output:0dense_256_652993dense_256_652995*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Dense_256_layer_call_and_return_conditional_losses_652821�
.batch_normalization_26/StatefulPartitionedCallStatefulPartitionedCall*Dense_256/StatefulPartitionedCall:output:0batch_normalization_26_652998batch_normalization_26_653000batch_normalization_26_653002batch_normalization_26_653004*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_26_layer_call_and_return_conditional_losses_652547�
dropout_14/PartitionedCallPartitionedCall7batch_normalization_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_14_layer_call_and_return_conditional_losses_653011�
!Dense_128/StatefulPartitionedCallStatefulPartitionedCall#dropout_14/PartitionedCall:output:0dense_128_653013dense_128_653015*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Dense_128_layer_call_and_return_conditional_losses_652859�
.batch_normalization_27/StatefulPartitionedCallStatefulPartitionedCall*Dense_128/StatefulPartitionedCall:output:0batch_normalization_27_653018batch_normalization_27_653020batch_normalization_27_653022batch_normalization_27_653024*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_652627�
dropout_15/PartitionedCallPartitionedCall7batch_normalization_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_15_layer_call_and_return_conditional_losses_653031�
,Output_Layer_Dense_7/StatefulPartitionedCallStatefulPartitionedCall#dropout_15/PartitionedCall:output:0output_layer_dense_7_653033output_layer_dense_7_653035*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_Output_Layer_Dense_7_layer_call_and_return_conditional_losses_652897�
IdentityIdentity5Output_Layer_Dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^Conv2D_128/StatefulPartitionedCall"^Conv2D_32/StatefulPartitionedCall"^Conv2D_64/StatefulPartitionedCall#^Dense_1024/StatefulPartitionedCall"^Dense_128/StatefulPartitionedCall"^Dense_256/StatefulPartitionedCall"^Dense_512/StatefulPartitionedCall-^Output_Layer_Dense_7/StatefulPartitionedCall/^batch_normalization_21/StatefulPartitionedCall/^batch_normalization_22/StatefulPartitionedCall/^batch_normalization_23/StatefulPartitionedCall/^batch_normalization_24/StatefulPartitionedCall/^batch_normalization_25/StatefulPartitionedCall/^batch_normalization_26/StatefulPartitionedCall/^batch_normalization_27/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesw
u:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"Conv2D_128/StatefulPartitionedCall"Conv2D_128/StatefulPartitionedCall2F
!Conv2D_32/StatefulPartitionedCall!Conv2D_32/StatefulPartitionedCall2F
!Conv2D_64/StatefulPartitionedCall!Conv2D_64/StatefulPartitionedCall2H
"Dense_1024/StatefulPartitionedCall"Dense_1024/StatefulPartitionedCall2F
!Dense_128/StatefulPartitionedCall!Dense_128/StatefulPartitionedCall2F
!Dense_256/StatefulPartitionedCall!Dense_256/StatefulPartitionedCall2F
!Dense_512/StatefulPartitionedCall!Dense_512/StatefulPartitionedCall2\
,Output_Layer_Dense_7/StatefulPartitionedCall,Output_Layer_Dense_7/StatefulPartitionedCall2`
.batch_normalization_21/StatefulPartitionedCall.batch_normalization_21/StatefulPartitionedCall2`
.batch_normalization_22/StatefulPartitionedCall.batch_normalization_22/StatefulPartitionedCall2`
.batch_normalization_23/StatefulPartitionedCall.batch_normalization_23/StatefulPartitionedCall2`
.batch_normalization_24/StatefulPartitionedCall.batch_normalization_24/StatefulPartitionedCall2`
.batch_normalization_25/StatefulPartitionedCall.batch_normalization_25/StatefulPartitionedCall2`
.batch_normalization_26/StatefulPartitionedCall.batch_normalization_26/StatefulPartitionedCall2`
.batch_normalization_27/StatefulPartitionedCall.batch_normalization_27/StatefulPartitionedCall:b ^
1
_output_shapes
:�����������
)
_user_specified_nameConv2D_32_input:&"
 
_user_specified_name652907:&"
 
_user_specified_name652909:&"
 
_user_specified_name652912:&"
 
_user_specified_name652914:&"
 
_user_specified_name652916:&"
 
_user_specified_name652918:&"
 
_user_specified_name652922:&"
 
_user_specified_name652924:&	"
 
_user_specified_name652927:&
"
 
_user_specified_name652929:&"
 
_user_specified_name652931:&"
 
_user_specified_name652933:&"
 
_user_specified_name652937:&"
 
_user_specified_name652939:&"
 
_user_specified_name652942:&"
 
_user_specified_name652944:&"
 
_user_specified_name652946:&"
 
_user_specified_name652948:&"
 
_user_specified_name652953:&"
 
_user_specified_name652955:&"
 
_user_specified_name652958:&"
 
_user_specified_name652960:&"
 
_user_specified_name652962:&"
 
_user_specified_name652964:&"
 
_user_specified_name652973:&"
 
_user_specified_name652975:&"
 
_user_specified_name652978:&"
 
_user_specified_name652980:&"
 
_user_specified_name652982:&"
 
_user_specified_name652984:&"
 
_user_specified_name652993:& "
 
_user_specified_name652995:&!"
 
_user_specified_name652998:&""
 
_user_specified_name653000:&#"
 
_user_specified_name653002:&$"
 
_user_specified_name653004:&%"
 
_user_specified_name653013:&&"
 
_user_specified_name653015:&'"
 
_user_specified_name653018:&("
 
_user_specified_name653020:&)"
 
_user_specified_name653022:&*"
 
_user_specified_name653024:&+"
 
_user_specified_name653033:&,"
 
_user_specified_name653035
�

e
F__inference_dropout_14_layer_call_and_return_conditional_losses_652847

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_653515

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_652627

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
7__inference_batch_normalization_26_layer_call_fn_654007

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_26_layer_call_and_return_conditional_losses_652527p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:&"
 
_user_specified_name653997:&"
 
_user_specified_name653999:&"
 
_user_specified_name654001:&"
 
_user_specified_name654003
�
d
F__inference_dropout_13_layer_call_and_return_conditional_losses_653974

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

e
F__inference_dropout_13_layer_call_and_return_conditional_losses_652809

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
d
+__inference_dropout_14_layer_call_fn_654079

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_14_layer_call_and_return_conditional_losses_652847p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_652124

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
g
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_652173

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
d
F__inference_dropout_15_layer_call_and_return_conditional_losses_653031

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
*__inference_Conv2D_64_layer_call_fn_653534

inputs!
unknown: @
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������==@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Conv2D_64_layer_call_and_return_conditional_losses_652692w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������==@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������?? : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������?? 
 
_user_specified_nameinputs:&"
 
_user_specified_name653528:&"
 
_user_specified_name653530
�
�
*__inference_Dense_512_layer_call_fn_653856

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Dense_512_layer_call_and_return_conditional_losses_652783p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:&"
 
_user_specified_name653850:&"
 
_user_specified_name653852
�
G
+__inference_dropout_15_layer_call_fn_654211

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_15_layer_call_and_return_conditional_losses_653031a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
d
F__inference_dropout_14_layer_call_and_return_conditional_losses_653011

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
d
F__inference_dropout_14_layer_call_and_return_conditional_losses_654101

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_652196

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
h
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_652245

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
G
+__inference_dropout_14_layer_call_fn_654084

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_14_layer_call_and_return_conditional_losses_653011a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�#
�

.__inference_CNN_Model_1o4_layer_call_fn_653132
conv2d_32_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@�

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:
��

unknown_18:	�

unknown_19:	�

unknown_20:	�

unknown_21:	�

unknown_22:	�

unknown_23:
��

unknown_24:	�

unknown_25:	�

unknown_26:	�

unknown_27:	�

unknown_28:	�

unknown_29:
��

unknown_30:	�

unknown_31:	�

unknown_32:	�

unknown_33:	�

unknown_34:	�

unknown_35:
��

unknown_36:	�

unknown_37:	�

unknown_38:	�

unknown_39:	�

unknown_40:	�

unknown_41:	�

unknown_42:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_32_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*@
_read_only_resource_inputs"
 	
 #$%&)*+,*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_CNN_Model_1o4_layer_call_and_return_conditional_losses_652904o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesw
u:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:�����������
)
_user_specified_nameConv2D_32_input:&"
 
_user_specified_name653042:&"
 
_user_specified_name653044:&"
 
_user_specified_name653046:&"
 
_user_specified_name653048:&"
 
_user_specified_name653050:&"
 
_user_specified_name653052:&"
 
_user_specified_name653054:&"
 
_user_specified_name653056:&	"
 
_user_specified_name653058:&
"
 
_user_specified_name653060:&"
 
_user_specified_name653062:&"
 
_user_specified_name653064:&"
 
_user_specified_name653066:&"
 
_user_specified_name653068:&"
 
_user_specified_name653070:&"
 
_user_specified_name653072:&"
 
_user_specified_name653074:&"
 
_user_specified_name653076:&"
 
_user_specified_name653078:&"
 
_user_specified_name653080:&"
 
_user_specified_name653082:&"
 
_user_specified_name653084:&"
 
_user_specified_name653086:&"
 
_user_specified_name653088:&"
 
_user_specified_name653090:&"
 
_user_specified_name653092:&"
 
_user_specified_name653094:&"
 
_user_specified_name653096:&"
 
_user_specified_name653098:&"
 
_user_specified_name653100:&"
 
_user_specified_name653102:& "
 
_user_specified_name653104:&!"
 
_user_specified_name653106:&""
 
_user_specified_name653108:&#"
 
_user_specified_name653110:&$"
 
_user_specified_name653112:&%"
 
_user_specified_name653114:&&"
 
_user_specified_name653116:&'"
 
_user_specified_name653118:&("
 
_user_specified_name653120:&)"
 
_user_specified_name653122:&*"
 
_user_specified_name653124:&+"
 
_user_specified_name653126:&,"
 
_user_specified_name653128
�

�
E__inference_Dense_256_layer_call_and_return_conditional_losses_652821

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
��
�
I__inference_CNN_Model_1o4_layer_call_and_return_conditional_losses_652904
conv2d_32_input*
conv2d_32_652667: 
conv2d_32_652669: +
batch_normalization_21_652672: +
batch_normalization_21_652674: +
batch_normalization_21_652676: +
batch_normalization_21_652678: *
conv2d_64_652693: @
conv2d_64_652695:@+
batch_normalization_22_652698:@+
batch_normalization_22_652700:@+
batch_normalization_22_652702:@+
batch_normalization_22_652704:@,
conv2d_128_652719:@� 
conv2d_128_652721:	�,
batch_normalization_23_652724:	�,
batch_normalization_23_652726:	�,
batch_normalization_23_652728:	�,
batch_normalization_23_652730:	�%
dense_1024_652746:
�� 
dense_1024_652748:	�,
batch_normalization_24_652751:	�,
batch_normalization_24_652753:	�,
batch_normalization_24_652755:	�,
batch_normalization_24_652757:	�$
dense_512_652784:
��
dense_512_652786:	�,
batch_normalization_25_652789:	�,
batch_normalization_25_652791:	�,
batch_normalization_25_652793:	�,
batch_normalization_25_652795:	�$
dense_256_652822:
��
dense_256_652824:	�,
batch_normalization_26_652827:	�,
batch_normalization_26_652829:	�,
batch_normalization_26_652831:	�,
batch_normalization_26_652833:	�$
dense_128_652860:
��
dense_128_652862:	�,
batch_normalization_27_652865:	�,
batch_normalization_27_652867:	�,
batch_normalization_27_652869:	�,
batch_normalization_27_652871:	�.
output_layer_dense_7_652898:	�)
output_layer_dense_7_652900:
identity��"Conv2D_128/StatefulPartitionedCall�!Conv2D_32/StatefulPartitionedCall�!Conv2D_64/StatefulPartitionedCall�"Dense_1024/StatefulPartitionedCall�!Dense_128/StatefulPartitionedCall�!Dense_256/StatefulPartitionedCall�!Dense_512/StatefulPartitionedCall�,Output_Layer_Dense_7/StatefulPartitionedCall�.batch_normalization_21/StatefulPartitionedCall�.batch_normalization_22/StatefulPartitionedCall�.batch_normalization_23/StatefulPartitionedCall�.batch_normalization_24/StatefulPartitionedCall�.batch_normalization_25/StatefulPartitionedCall�.batch_normalization_26/StatefulPartitionedCall�.batch_normalization_27/StatefulPartitionedCall�"dropout_12/StatefulPartitionedCall�"dropout_13/StatefulPartitionedCall�"dropout_14/StatefulPartitionedCall�"dropout_15/StatefulPartitionedCall�
!Conv2D_32/StatefulPartitionedCallStatefulPartitionedCallconv2d_32_inputconv2d_32_652667conv2d_32_652669*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������~~ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Conv2D_32_layer_call_and_return_conditional_losses_652666�
.batch_normalization_21/StatefulPartitionedCallStatefulPartitionedCall*Conv2D_32/StatefulPartitionedCall:output:0batch_normalization_21_652672batch_normalization_21_652674batch_normalization_21_652676batch_normalization_21_652678*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������~~ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_652124�
max_pooling2d_9/PartitionedCallPartitionedCall7batch_normalization_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������?? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_652173�
!Conv2D_64/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_64_652693conv2d_64_652695*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������==@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Conv2D_64_layer_call_and_return_conditional_losses_652692�
.batch_normalization_22/StatefulPartitionedCallStatefulPartitionedCall*Conv2D_64/StatefulPartitionedCall:output:0batch_normalization_22_652698batch_normalization_22_652700batch_normalization_22_652702batch_normalization_22_652704*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������==@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_652196�
 max_pooling2d_10/PartitionedCallPartitionedCall7batch_normalization_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_652245�
"Conv2D_128/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_128_652719conv2d_128_652721*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_Conv2D_128_layer_call_and_return_conditional_losses_652718�
.batch_normalization_23/StatefulPartitionedCallStatefulPartitionedCall+Conv2D_128/StatefulPartitionedCall:output:0batch_normalization_23_652724batch_normalization_23_652726batch_normalization_23_652728batch_normalization_23_652730*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_652268�
 max_pooling2d_11/PartitionedCallPartitionedCall7batch_normalization_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_652317�
*global_average_pooling2d_3/PartitionedCallPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *_
fZRX
V__inference_global_average_pooling2d_3_layer_call_and_return_conditional_losses_652328�
"Dense_1024/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_3/PartitionedCall:output:0dense_1024_652746dense_1024_652748*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_Dense_1024_layer_call_and_return_conditional_losses_652745�
.batch_normalization_24/StatefulPartitionedCallStatefulPartitionedCall+Dense_1024/StatefulPartitionedCall:output:0batch_normalization_24_652751batch_normalization_24_652753batch_normalization_24_652755batch_normalization_24_652757*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_24_layer_call_and_return_conditional_losses_652367�
"dropout_12/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_12_layer_call_and_return_conditional_losses_652771�
!Dense_512/StatefulPartitionedCallStatefulPartitionedCall+dropout_12/StatefulPartitionedCall:output:0dense_512_652784dense_512_652786*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Dense_512_layer_call_and_return_conditional_losses_652783�
.batch_normalization_25/StatefulPartitionedCallStatefulPartitionedCall*Dense_512/StatefulPartitionedCall:output:0batch_normalization_25_652789batch_normalization_25_652791batch_normalization_25_652793batch_normalization_25_652795*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_25_layer_call_and_return_conditional_losses_652447�
"dropout_13/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_25/StatefulPartitionedCall:output:0#^dropout_12/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_13_layer_call_and_return_conditional_losses_652809�
!Dense_256/StatefulPartitionedCallStatefulPartitionedCall+dropout_13/StatefulPartitionedCall:output:0dense_256_652822dense_256_652824*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Dense_256_layer_call_and_return_conditional_losses_652821�
.batch_normalization_26/StatefulPartitionedCallStatefulPartitionedCall*Dense_256/StatefulPartitionedCall:output:0batch_normalization_26_652827batch_normalization_26_652829batch_normalization_26_652831batch_normalization_26_652833*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_26_layer_call_and_return_conditional_losses_652527�
"dropout_14/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_26/StatefulPartitionedCall:output:0#^dropout_13/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_14_layer_call_and_return_conditional_losses_652847�
!Dense_128/StatefulPartitionedCallStatefulPartitionedCall+dropout_14/StatefulPartitionedCall:output:0dense_128_652860dense_128_652862*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Dense_128_layer_call_and_return_conditional_losses_652859�
.batch_normalization_27/StatefulPartitionedCallStatefulPartitionedCall*Dense_128/StatefulPartitionedCall:output:0batch_normalization_27_652865batch_normalization_27_652867batch_normalization_27_652869batch_normalization_27_652871*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_652607�
"dropout_15/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_27/StatefulPartitionedCall:output:0#^dropout_14/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_15_layer_call_and_return_conditional_losses_652885�
,Output_Layer_Dense_7/StatefulPartitionedCallStatefulPartitionedCall+dropout_15/StatefulPartitionedCall:output:0output_layer_dense_7_652898output_layer_dense_7_652900*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_Output_Layer_Dense_7_layer_call_and_return_conditional_losses_652897�
IdentityIdentity5Output_Layer_Dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^Conv2D_128/StatefulPartitionedCall"^Conv2D_32/StatefulPartitionedCall"^Conv2D_64/StatefulPartitionedCall#^Dense_1024/StatefulPartitionedCall"^Dense_128/StatefulPartitionedCall"^Dense_256/StatefulPartitionedCall"^Dense_512/StatefulPartitionedCall-^Output_Layer_Dense_7/StatefulPartitionedCall/^batch_normalization_21/StatefulPartitionedCall/^batch_normalization_22/StatefulPartitionedCall/^batch_normalization_23/StatefulPartitionedCall/^batch_normalization_24/StatefulPartitionedCall/^batch_normalization_25/StatefulPartitionedCall/^batch_normalization_26/StatefulPartitionedCall/^batch_normalization_27/StatefulPartitionedCall#^dropout_12/StatefulPartitionedCall#^dropout_13/StatefulPartitionedCall#^dropout_14/StatefulPartitionedCall#^dropout_15/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesw
u:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"Conv2D_128/StatefulPartitionedCall"Conv2D_128/StatefulPartitionedCall2F
!Conv2D_32/StatefulPartitionedCall!Conv2D_32/StatefulPartitionedCall2F
!Conv2D_64/StatefulPartitionedCall!Conv2D_64/StatefulPartitionedCall2H
"Dense_1024/StatefulPartitionedCall"Dense_1024/StatefulPartitionedCall2F
!Dense_128/StatefulPartitionedCall!Dense_128/StatefulPartitionedCall2F
!Dense_256/StatefulPartitionedCall!Dense_256/StatefulPartitionedCall2F
!Dense_512/StatefulPartitionedCall!Dense_512/StatefulPartitionedCall2\
,Output_Layer_Dense_7/StatefulPartitionedCall,Output_Layer_Dense_7/StatefulPartitionedCall2`
.batch_normalization_21/StatefulPartitionedCall.batch_normalization_21/StatefulPartitionedCall2`
.batch_normalization_22/StatefulPartitionedCall.batch_normalization_22/StatefulPartitionedCall2`
.batch_normalization_23/StatefulPartitionedCall.batch_normalization_23/StatefulPartitionedCall2`
.batch_normalization_24/StatefulPartitionedCall.batch_normalization_24/StatefulPartitionedCall2`
.batch_normalization_25/StatefulPartitionedCall.batch_normalization_25/StatefulPartitionedCall2`
.batch_normalization_26/StatefulPartitionedCall.batch_normalization_26/StatefulPartitionedCall2`
.batch_normalization_27/StatefulPartitionedCall.batch_normalization_27/StatefulPartitionedCall2H
"dropout_12/StatefulPartitionedCall"dropout_12/StatefulPartitionedCall2H
"dropout_13/StatefulPartitionedCall"dropout_13/StatefulPartitionedCall2H
"dropout_14/StatefulPartitionedCall"dropout_14/StatefulPartitionedCall2H
"dropout_15/StatefulPartitionedCall"dropout_15/StatefulPartitionedCall:b ^
1
_output_shapes
:�����������
)
_user_specified_nameConv2D_32_input:&"
 
_user_specified_name652667:&"
 
_user_specified_name652669:&"
 
_user_specified_name652672:&"
 
_user_specified_name652674:&"
 
_user_specified_name652676:&"
 
_user_specified_name652678:&"
 
_user_specified_name652693:&"
 
_user_specified_name652695:&	"
 
_user_specified_name652698:&
"
 
_user_specified_name652700:&"
 
_user_specified_name652702:&"
 
_user_specified_name652704:&"
 
_user_specified_name652719:&"
 
_user_specified_name652721:&"
 
_user_specified_name652724:&"
 
_user_specified_name652726:&"
 
_user_specified_name652728:&"
 
_user_specified_name652730:&"
 
_user_specified_name652746:&"
 
_user_specified_name652748:&"
 
_user_specified_name652751:&"
 
_user_specified_name652753:&"
 
_user_specified_name652755:&"
 
_user_specified_name652757:&"
 
_user_specified_name652784:&"
 
_user_specified_name652786:&"
 
_user_specified_name652789:&"
 
_user_specified_name652791:&"
 
_user_specified_name652793:&"
 
_user_specified_name652795:&"
 
_user_specified_name652822:& "
 
_user_specified_name652824:&!"
 
_user_specified_name652827:&""
 
_user_specified_name652829:&#"
 
_user_specified_name652831:&$"
 
_user_specified_name652833:&%"
 
_user_specified_name652860:&&"
 
_user_specified_name652862:&'"
 
_user_specified_name652865:&("
 
_user_specified_name652867:&)"
 
_user_specified_name652869:&*"
 
_user_specified_name652871:&+"
 
_user_specified_name652898:&,"
 
_user_specified_name652900
��
�L
"__inference__traced_restore_655287
file_prefix;
!assignvariableop_conv2d_32_kernel: /
!assignvariableop_1_conv2d_32_bias: =
/assignvariableop_2_batch_normalization_21_gamma: <
.assignvariableop_3_batch_normalization_21_beta: C
5assignvariableop_4_batch_normalization_21_moving_mean: G
9assignvariableop_5_batch_normalization_21_moving_variance: =
#assignvariableop_6_conv2d_64_kernel: @/
!assignvariableop_7_conv2d_64_bias:@=
/assignvariableop_8_batch_normalization_22_gamma:@<
.assignvariableop_9_batch_normalization_22_beta:@D
6assignvariableop_10_batch_normalization_22_moving_mean:@H
:assignvariableop_11_batch_normalization_22_moving_variance:@@
%assignvariableop_12_conv2d_128_kernel:@�2
#assignvariableop_13_conv2d_128_bias:	�?
0assignvariableop_14_batch_normalization_23_gamma:	�>
/assignvariableop_15_batch_normalization_23_beta:	�E
6assignvariableop_16_batch_normalization_23_moving_mean:	�I
:assignvariableop_17_batch_normalization_23_moving_variance:	�9
%assignvariableop_18_dense_1024_kernel:
��2
#assignvariableop_19_dense_1024_bias:	�?
0assignvariableop_20_batch_normalization_24_gamma:	�>
/assignvariableop_21_batch_normalization_24_beta:	�E
6assignvariableop_22_batch_normalization_24_moving_mean:	�I
:assignvariableop_23_batch_normalization_24_moving_variance:	�8
$assignvariableop_24_dense_512_kernel:
��1
"assignvariableop_25_dense_512_bias:	�?
0assignvariableop_26_batch_normalization_25_gamma:	�>
/assignvariableop_27_batch_normalization_25_beta:	�E
6assignvariableop_28_batch_normalization_25_moving_mean:	�I
:assignvariableop_29_batch_normalization_25_moving_variance:	�8
$assignvariableop_30_dense_256_kernel:
��1
"assignvariableop_31_dense_256_bias:	�?
0assignvariableop_32_batch_normalization_26_gamma:	�>
/assignvariableop_33_batch_normalization_26_beta:	�E
6assignvariableop_34_batch_normalization_26_moving_mean:	�I
:assignvariableop_35_batch_normalization_26_moving_variance:	�8
$assignvariableop_36_dense_128_kernel:
��1
"assignvariableop_37_dense_128_bias:	�?
0assignvariableop_38_batch_normalization_27_gamma:	�>
/assignvariableop_39_batch_normalization_27_beta:	�E
6assignvariableop_40_batch_normalization_27_moving_mean:	�I
:assignvariableop_41_batch_normalization_27_moving_variance:	�B
/assignvariableop_42_output_layer_dense_7_kernel:	�;
-assignvariableop_43_output_layer_dense_7_bias:'
assignvariableop_44_iteration:	 +
!assignvariableop_45_learning_rate: E
+assignvariableop_46_adam_m_conv2d_32_kernel: E
+assignvariableop_47_adam_v_conv2d_32_kernel: 7
)assignvariableop_48_adam_m_conv2d_32_bias: 7
)assignvariableop_49_adam_v_conv2d_32_bias: E
7assignvariableop_50_adam_m_batch_normalization_21_gamma: E
7assignvariableop_51_adam_v_batch_normalization_21_gamma: D
6assignvariableop_52_adam_m_batch_normalization_21_beta: D
6assignvariableop_53_adam_v_batch_normalization_21_beta: E
+assignvariableop_54_adam_m_conv2d_64_kernel: @E
+assignvariableop_55_adam_v_conv2d_64_kernel: @7
)assignvariableop_56_adam_m_conv2d_64_bias:@7
)assignvariableop_57_adam_v_conv2d_64_bias:@E
7assignvariableop_58_adam_m_batch_normalization_22_gamma:@E
7assignvariableop_59_adam_v_batch_normalization_22_gamma:@D
6assignvariableop_60_adam_m_batch_normalization_22_beta:@D
6assignvariableop_61_adam_v_batch_normalization_22_beta:@G
,assignvariableop_62_adam_m_conv2d_128_kernel:@�G
,assignvariableop_63_adam_v_conv2d_128_kernel:@�9
*assignvariableop_64_adam_m_conv2d_128_bias:	�9
*assignvariableop_65_adam_v_conv2d_128_bias:	�F
7assignvariableop_66_adam_m_batch_normalization_23_gamma:	�F
7assignvariableop_67_adam_v_batch_normalization_23_gamma:	�E
6assignvariableop_68_adam_m_batch_normalization_23_beta:	�E
6assignvariableop_69_adam_v_batch_normalization_23_beta:	�@
,assignvariableop_70_adam_m_dense_1024_kernel:
��@
,assignvariableop_71_adam_v_dense_1024_kernel:
��9
*assignvariableop_72_adam_m_dense_1024_bias:	�9
*assignvariableop_73_adam_v_dense_1024_bias:	�F
7assignvariableop_74_adam_m_batch_normalization_24_gamma:	�F
7assignvariableop_75_adam_v_batch_normalization_24_gamma:	�E
6assignvariableop_76_adam_m_batch_normalization_24_beta:	�E
6assignvariableop_77_adam_v_batch_normalization_24_beta:	�?
+assignvariableop_78_adam_m_dense_512_kernel:
��?
+assignvariableop_79_adam_v_dense_512_kernel:
��8
)assignvariableop_80_adam_m_dense_512_bias:	�8
)assignvariableop_81_adam_v_dense_512_bias:	�F
7assignvariableop_82_adam_m_batch_normalization_25_gamma:	�F
7assignvariableop_83_adam_v_batch_normalization_25_gamma:	�E
6assignvariableop_84_adam_m_batch_normalization_25_beta:	�E
6assignvariableop_85_adam_v_batch_normalization_25_beta:	�?
+assignvariableop_86_adam_m_dense_256_kernel:
��?
+assignvariableop_87_adam_v_dense_256_kernel:
��8
)assignvariableop_88_adam_m_dense_256_bias:	�8
)assignvariableop_89_adam_v_dense_256_bias:	�F
7assignvariableop_90_adam_m_batch_normalization_26_gamma:	�F
7assignvariableop_91_adam_v_batch_normalization_26_gamma:	�E
6assignvariableop_92_adam_m_batch_normalization_26_beta:	�E
6assignvariableop_93_adam_v_batch_normalization_26_beta:	�?
+assignvariableop_94_adam_m_dense_128_kernel:
��?
+assignvariableop_95_adam_v_dense_128_kernel:
��8
)assignvariableop_96_adam_m_dense_128_bias:	�8
)assignvariableop_97_adam_v_dense_128_bias:	�F
7assignvariableop_98_adam_m_batch_normalization_27_gamma:	�F
7assignvariableop_99_adam_v_batch_normalization_27_gamma:	�F
7assignvariableop_100_adam_m_batch_normalization_27_beta:	�F
7assignvariableop_101_adam_v_batch_normalization_27_beta:	�J
7assignvariableop_102_adam_m_output_layer_dense_7_kernel:	�J
7assignvariableop_103_adam_v_output_layer_dense_7_kernel:	�C
5assignvariableop_104_adam_m_output_layer_dense_7_bias:C
5assignvariableop_105_adam_v_output_layer_dense_7_bias:&
assignvariableop_106_total_2: &
assignvariableop_107_count_2: &
assignvariableop_108_total_1: &
assignvariableop_109_count_1: $
assignvariableop_110_total: $
assignvariableop_111_count: 
identity_113��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_100�AssignVariableOp_101�AssignVariableOp_102�AssignVariableOp_103�AssignVariableOp_104�AssignVariableOp_105�AssignVariableOp_106�AssignVariableOp_107�AssignVariableOp_108�AssignVariableOp_109�AssignVariableOp_11�AssignVariableOp_110�AssignVariableOp_111�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_74�AssignVariableOp_75�AssignVariableOp_76�AssignVariableOp_77�AssignVariableOp_78�AssignVariableOp_79�AssignVariableOp_8�AssignVariableOp_80�AssignVariableOp_81�AssignVariableOp_82�AssignVariableOp_83�AssignVariableOp_84�AssignVariableOp_85�AssignVariableOp_86�AssignVariableOp_87�AssignVariableOp_88�AssignVariableOp_89�AssignVariableOp_9�AssignVariableOp_90�AssignVariableOp_91�AssignVariableOp_92�AssignVariableOp_93�AssignVariableOp_94�AssignVariableOp_95�AssignVariableOp_96�AssignVariableOp_97�AssignVariableOp_98�AssignVariableOp_99�0
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:q*
dtype0*�/
value�/B�/qB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/53/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/54/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/55/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/56/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/57/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/58/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/59/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/60/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:q*
dtype0*�
value�B�qB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*
dtypesu
s2q	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_32_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_32_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_21_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_21_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_21_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_21_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_64_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_64_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_22_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_22_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_22_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_22_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv2d_128_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv2d_128_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_23_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_23_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_23_moving_meanIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_23_moving_varianceIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp%assignvariableop_18_dense_1024_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp#assignvariableop_19_dense_1024_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp0assignvariableop_20_batch_normalization_24_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_24_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp6assignvariableop_22_batch_normalization_24_moving_meanIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp:assignvariableop_23_batch_normalization_24_moving_varianceIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp$assignvariableop_24_dense_512_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp"assignvariableop_25_dense_512_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp0assignvariableop_26_batch_normalization_25_gammaIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp/assignvariableop_27_batch_normalization_25_betaIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp6assignvariableop_28_batch_normalization_25_moving_meanIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp:assignvariableop_29_batch_normalization_25_moving_varianceIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp$assignvariableop_30_dense_256_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp"assignvariableop_31_dense_256_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp0assignvariableop_32_batch_normalization_26_gammaIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp/assignvariableop_33_batch_normalization_26_betaIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp6assignvariableop_34_batch_normalization_26_moving_meanIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp:assignvariableop_35_batch_normalization_26_moving_varianceIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp$assignvariableop_36_dense_128_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp"assignvariableop_37_dense_128_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp0assignvariableop_38_batch_normalization_27_gammaIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp/assignvariableop_39_batch_normalization_27_betaIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp6assignvariableop_40_batch_normalization_27_moving_meanIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp:assignvariableop_41_batch_normalization_27_moving_varianceIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp/assignvariableop_42_output_layer_dense_7_kernelIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp-assignvariableop_43_output_layer_dense_7_biasIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_44AssignVariableOpassignvariableop_44_iterationIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp!assignvariableop_45_learning_rateIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp+assignvariableop_46_adam_m_conv2d_32_kernelIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_v_conv2d_32_kernelIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_m_conv2d_32_biasIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp)assignvariableop_49_adam_v_conv2d_32_biasIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp7assignvariableop_50_adam_m_batch_normalization_21_gammaIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp7assignvariableop_51_adam_v_batch_normalization_21_gammaIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp6assignvariableop_52_adam_m_batch_normalization_21_betaIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp6assignvariableop_53_adam_v_batch_normalization_21_betaIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp+assignvariableop_54_adam_m_conv2d_64_kernelIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp+assignvariableop_55_adam_v_conv2d_64_kernelIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp)assignvariableop_56_adam_m_conv2d_64_biasIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp)assignvariableop_57_adam_v_conv2d_64_biasIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp7assignvariableop_58_adam_m_batch_normalization_22_gammaIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp7assignvariableop_59_adam_v_batch_normalization_22_gammaIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp6assignvariableop_60_adam_m_batch_normalization_22_betaIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp6assignvariableop_61_adam_v_batch_normalization_22_betaIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp,assignvariableop_62_adam_m_conv2d_128_kernelIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp,assignvariableop_63_adam_v_conv2d_128_kernelIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp*assignvariableop_64_adam_m_conv2d_128_biasIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp*assignvariableop_65_adam_v_conv2d_128_biasIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp7assignvariableop_66_adam_m_batch_normalization_23_gammaIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp7assignvariableop_67_adam_v_batch_normalization_23_gammaIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOp6assignvariableop_68_adam_m_batch_normalization_23_betaIdentity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOp6assignvariableop_69_adam_v_batch_normalization_23_betaIdentity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOp,assignvariableop_70_adam_m_dense_1024_kernelIdentity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOp,assignvariableop_71_adam_v_dense_1024_kernelIdentity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOp*assignvariableop_72_adam_m_dense_1024_biasIdentity_72:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOp*assignvariableop_73_adam_v_dense_1024_biasIdentity_73:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_74AssignVariableOp7assignvariableop_74_adam_m_batch_normalization_24_gammaIdentity_74:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOp7assignvariableop_75_adam_v_batch_normalization_24_gammaIdentity_75:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_76AssignVariableOp6assignvariableop_76_adam_m_batch_normalization_24_betaIdentity_76:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_77AssignVariableOp6assignvariableop_77_adam_v_batch_normalization_24_betaIdentity_77:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_78AssignVariableOp+assignvariableop_78_adam_m_dense_512_kernelIdentity_78:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_79AssignVariableOp+assignvariableop_79_adam_v_dense_512_kernelIdentity_79:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_80AssignVariableOp)assignvariableop_80_adam_m_dense_512_biasIdentity_80:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_81AssignVariableOp)assignvariableop_81_adam_v_dense_512_biasIdentity_81:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_82AssignVariableOp7assignvariableop_82_adam_m_batch_normalization_25_gammaIdentity_82:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_83AssignVariableOp7assignvariableop_83_adam_v_batch_normalization_25_gammaIdentity_83:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_84AssignVariableOp6assignvariableop_84_adam_m_batch_normalization_25_betaIdentity_84:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_85AssignVariableOp6assignvariableop_85_adam_v_batch_normalization_25_betaIdentity_85:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_86AssignVariableOp+assignvariableop_86_adam_m_dense_256_kernelIdentity_86:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_87AssignVariableOp+assignvariableop_87_adam_v_dense_256_kernelIdentity_87:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_88AssignVariableOp)assignvariableop_88_adam_m_dense_256_biasIdentity_88:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_89AssignVariableOp)assignvariableop_89_adam_v_dense_256_biasIdentity_89:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_90AssignVariableOp7assignvariableop_90_adam_m_batch_normalization_26_gammaIdentity_90:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_91AssignVariableOp7assignvariableop_91_adam_v_batch_normalization_26_gammaIdentity_91:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_92AssignVariableOp6assignvariableop_92_adam_m_batch_normalization_26_betaIdentity_92:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_93AssignVariableOp6assignvariableop_93_adam_v_batch_normalization_26_betaIdentity_93:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_94AssignVariableOp+assignvariableop_94_adam_m_dense_128_kernelIdentity_94:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_95AssignVariableOp+assignvariableop_95_adam_v_dense_128_kernelIdentity_95:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_96AssignVariableOp)assignvariableop_96_adam_m_dense_128_biasIdentity_96:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_97AssignVariableOp)assignvariableop_97_adam_v_dense_128_biasIdentity_97:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_98AssignVariableOp7assignvariableop_98_adam_m_batch_normalization_27_gammaIdentity_98:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_99AssignVariableOp7assignvariableop_99_adam_v_batch_normalization_27_gammaIdentity_99:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_100AssignVariableOp7assignvariableop_100_adam_m_batch_normalization_27_betaIdentity_100:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_101AssignVariableOp7assignvariableop_101_adam_v_batch_normalization_27_betaIdentity_101:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_102AssignVariableOp7assignvariableop_102_adam_m_output_layer_dense_7_kernelIdentity_102:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_103AssignVariableOp7assignvariableop_103_adam_v_output_layer_dense_7_kernelIdentity_103:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_104AssignVariableOp5assignvariableop_104_adam_m_output_layer_dense_7_biasIdentity_104:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_105AssignVariableOp5assignvariableop_105_adam_v_output_layer_dense_7_biasIdentity_105:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_106AssignVariableOpassignvariableop_106_total_2Identity_106:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_107AssignVariableOpassignvariableop_107_count_2Identity_107:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_108AssignVariableOpassignvariableop_108_total_1Identity_108:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_109AssignVariableOpassignvariableop_109_count_1Identity_109:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_110AssignVariableOpassignvariableop_110_totalIdentity_110:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_111AssignVariableOpassignvariableop_111_countIdentity_111:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_112Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: Y
Identity_113IdentityIdentity_112:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*
_output_shapes
 "%
identity_113Identity_113:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_user_specified_nameConv2D_32/kernel:.*
(
_user_specified_nameConv2D_32/bias:<8
6
_user_specified_namebatch_normalization_21/gamma:;7
5
_user_specified_namebatch_normalization_21/beta:B>
<
_user_specified_name$"batch_normalization_21/moving_mean:FB
@
_user_specified_name(&batch_normalization_21/moving_variance:0,
*
_user_specified_nameConv2D_64/kernel:.*
(
_user_specified_nameConv2D_64/bias:<	8
6
_user_specified_namebatch_normalization_22/gamma:;
7
5
_user_specified_namebatch_normalization_22/beta:B>
<
_user_specified_name$"batch_normalization_22/moving_mean:FB
@
_user_specified_name(&batch_normalization_22/moving_variance:1-
+
_user_specified_nameConv2D_128/kernel:/+
)
_user_specified_nameConv2D_128/bias:<8
6
_user_specified_namebatch_normalization_23/gamma:;7
5
_user_specified_namebatch_normalization_23/beta:B>
<
_user_specified_name$"batch_normalization_23/moving_mean:FB
@
_user_specified_name(&batch_normalization_23/moving_variance:1-
+
_user_specified_nameDense_1024/kernel:/+
)
_user_specified_nameDense_1024/bias:<8
6
_user_specified_namebatch_normalization_24/gamma:;7
5
_user_specified_namebatch_normalization_24/beta:B>
<
_user_specified_name$"batch_normalization_24/moving_mean:FB
@
_user_specified_name(&batch_normalization_24/moving_variance:0,
*
_user_specified_nameDense_512/kernel:.*
(
_user_specified_nameDense_512/bias:<8
6
_user_specified_namebatch_normalization_25/gamma:;7
5
_user_specified_namebatch_normalization_25/beta:B>
<
_user_specified_name$"batch_normalization_25/moving_mean:FB
@
_user_specified_name(&batch_normalization_25/moving_variance:0,
*
_user_specified_nameDense_256/kernel:. *
(
_user_specified_nameDense_256/bias:<!8
6
_user_specified_namebatch_normalization_26/gamma:;"7
5
_user_specified_namebatch_normalization_26/beta:B#>
<
_user_specified_name$"batch_normalization_26/moving_mean:F$B
@
_user_specified_name(&batch_normalization_26/moving_variance:0%,
*
_user_specified_nameDense_128/kernel:.&*
(
_user_specified_nameDense_128/bias:<'8
6
_user_specified_namebatch_normalization_27/gamma:;(7
5
_user_specified_namebatch_normalization_27/beta:B)>
<
_user_specified_name$"batch_normalization_27/moving_mean:F*B
@
_user_specified_name(&batch_normalization_27/moving_variance:;+7
5
_user_specified_nameOutput_Layer_Dense_7/kernel:9,5
3
_user_specified_nameOutput_Layer_Dense_7/bias:)-%
#
_user_specified_name	iteration:-.)
'
_user_specified_namelearning_rate:7/3
1
_user_specified_nameAdam/m/Conv2D_32/kernel:703
1
_user_specified_nameAdam/v/Conv2D_32/kernel:511
/
_user_specified_nameAdam/m/Conv2D_32/bias:521
/
_user_specified_nameAdam/v/Conv2D_32/bias:C3?
=
_user_specified_name%#Adam/m/batch_normalization_21/gamma:C4?
=
_user_specified_name%#Adam/v/batch_normalization_21/gamma:B5>
<
_user_specified_name$"Adam/m/batch_normalization_21/beta:B6>
<
_user_specified_name$"Adam/v/batch_normalization_21/beta:773
1
_user_specified_nameAdam/m/Conv2D_64/kernel:783
1
_user_specified_nameAdam/v/Conv2D_64/kernel:591
/
_user_specified_nameAdam/m/Conv2D_64/bias:5:1
/
_user_specified_nameAdam/v/Conv2D_64/bias:C;?
=
_user_specified_name%#Adam/m/batch_normalization_22/gamma:C<?
=
_user_specified_name%#Adam/v/batch_normalization_22/gamma:B=>
<
_user_specified_name$"Adam/m/batch_normalization_22/beta:B>>
<
_user_specified_name$"Adam/v/batch_normalization_22/beta:8?4
2
_user_specified_nameAdam/m/Conv2D_128/kernel:8@4
2
_user_specified_nameAdam/v/Conv2D_128/kernel:6A2
0
_user_specified_nameAdam/m/Conv2D_128/bias:6B2
0
_user_specified_nameAdam/v/Conv2D_128/bias:CC?
=
_user_specified_name%#Adam/m/batch_normalization_23/gamma:CD?
=
_user_specified_name%#Adam/v/batch_normalization_23/gamma:BE>
<
_user_specified_name$"Adam/m/batch_normalization_23/beta:BF>
<
_user_specified_name$"Adam/v/batch_normalization_23/beta:8G4
2
_user_specified_nameAdam/m/Dense_1024/kernel:8H4
2
_user_specified_nameAdam/v/Dense_1024/kernel:6I2
0
_user_specified_nameAdam/m/Dense_1024/bias:6J2
0
_user_specified_nameAdam/v/Dense_1024/bias:CK?
=
_user_specified_name%#Adam/m/batch_normalization_24/gamma:CL?
=
_user_specified_name%#Adam/v/batch_normalization_24/gamma:BM>
<
_user_specified_name$"Adam/m/batch_normalization_24/beta:BN>
<
_user_specified_name$"Adam/v/batch_normalization_24/beta:7O3
1
_user_specified_nameAdam/m/Dense_512/kernel:7P3
1
_user_specified_nameAdam/v/Dense_512/kernel:5Q1
/
_user_specified_nameAdam/m/Dense_512/bias:5R1
/
_user_specified_nameAdam/v/Dense_512/bias:CS?
=
_user_specified_name%#Adam/m/batch_normalization_25/gamma:CT?
=
_user_specified_name%#Adam/v/batch_normalization_25/gamma:BU>
<
_user_specified_name$"Adam/m/batch_normalization_25/beta:BV>
<
_user_specified_name$"Adam/v/batch_normalization_25/beta:7W3
1
_user_specified_nameAdam/m/Dense_256/kernel:7X3
1
_user_specified_nameAdam/v/Dense_256/kernel:5Y1
/
_user_specified_nameAdam/m/Dense_256/bias:5Z1
/
_user_specified_nameAdam/v/Dense_256/bias:C[?
=
_user_specified_name%#Adam/m/batch_normalization_26/gamma:C\?
=
_user_specified_name%#Adam/v/batch_normalization_26/gamma:B]>
<
_user_specified_name$"Adam/m/batch_normalization_26/beta:B^>
<
_user_specified_name$"Adam/v/batch_normalization_26/beta:7_3
1
_user_specified_nameAdam/m/Dense_128/kernel:7`3
1
_user_specified_nameAdam/v/Dense_128/kernel:5a1
/
_user_specified_nameAdam/m/Dense_128/bias:5b1
/
_user_specified_nameAdam/v/Dense_128/bias:Cc?
=
_user_specified_name%#Adam/m/batch_normalization_27/gamma:Cd?
=
_user_specified_name%#Adam/v/batch_normalization_27/gamma:Be>
<
_user_specified_name$"Adam/m/batch_normalization_27/beta:Bf>
<
_user_specified_name$"Adam/v/batch_normalization_27/beta:Bg>
<
_user_specified_name$"Adam/m/Output_Layer_Dense_7/kernel:Bh>
<
_user_specified_name$"Adam/v/Output_Layer_Dense_7/kernel:@i<
:
_user_specified_name" Adam/m/Output_Layer_Dense_7/bias:@j<
:
_user_specified_name" Adam/v/Output_Layer_Dense_7/bias:'k#
!
_user_specified_name	total_2:'l#
!
_user_specified_name	count_2:'m#
!
_user_specified_name	total_1:'n#
!
_user_specified_name	count_1:%o!

_user_specified_nametotal:%p!

_user_specified_namecount
�&
�
R__inference_batch_normalization_24_layer_call_and_return_conditional_losses_652367

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
P__inference_Output_Layer_Dense_7_layer_call_and_return_conditional_losses_654248

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

e
F__inference_dropout_12_layer_call_and_return_conditional_losses_653842

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
7__inference_batch_normalization_26_layer_call_fn_654020

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_26_layer_call_and_return_conditional_losses_652547p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:&"
 
_user_specified_name654010:&"
 
_user_specified_name654012:&"
 
_user_specified_name654014:&"
 
_user_specified_name654016
�
�
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_653699

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
7__inference_batch_normalization_24_layer_call_fn_653753

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_24_layer_call_and_return_conditional_losses_652367p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:&"
 
_user_specified_name653743:&"
 
_user_specified_name653745:&"
 
_user_specified_name653747:&"
 
_user_specified_name653749
�
h
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_653617

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

e
F__inference_dropout_15_layer_call_and_return_conditional_losses_654223

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_652268

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
h
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_653709

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
E__inference_Dense_512_layer_call_and_return_conditional_losses_653867

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

e
F__inference_dropout_12_layer_call_and_return_conditional_losses_652771

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�&
�
R__inference_batch_normalization_26_layer_call_and_return_conditional_losses_654054

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
5__inference_Output_Layer_Dense_7_layer_call_fn_654237

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_Output_Layer_Dense_7_layer_call_and_return_conditional_losses_652897o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:&"
 
_user_specified_name654231:&"
 
_user_specified_name654233
�&
�
R__inference_batch_normalization_26_layer_call_and_return_conditional_losses_652527

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�&
�
R__inference_batch_normalization_24_layer_call_and_return_conditional_losses_653800

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�&
�
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_652607

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
+__inference_Dense_1024_layer_call_fn_653729

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_Dense_1024_layer_call_and_return_conditional_losses_652745p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:&"
 
_user_specified_name653723:&"
 
_user_specified_name653725
�
�
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_652286

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
g
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_653525

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
E__inference_Dense_128_layer_call_and_return_conditional_losses_654121

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_653607

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
E__inference_Conv2D_32_layer_call_and_return_conditional_losses_653453

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������~~ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������~~ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������~~ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������~~ S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
E__inference_Conv2D_64_layer_call_and_return_conditional_losses_652692

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������==@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������==@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������==@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������==@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������?? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������?? 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
7__inference_batch_normalization_22_layer_call_fn_653558

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_652196�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs:&"
 
_user_specified_name653548:&"
 
_user_specified_name653550:&"
 
_user_specified_name653552:&"
 
_user_specified_name653554
�

�
E__inference_Dense_128_layer_call_and_return_conditional_losses_652859

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
d
F__inference_dropout_12_layer_call_and_return_conditional_losses_652971

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
E__inference_Dense_256_layer_call_and_return_conditional_losses_653994

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_653589

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
7__inference_batch_normalization_21_layer_call_fn_653466

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_652124�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs:&"
 
_user_specified_name653456:&"
 
_user_specified_name653458:&"
 
_user_specified_name653460:&"
 
_user_specified_name653462
�
�
R__inference_batch_normalization_26_layer_call_and_return_conditional_losses_654074

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
P__inference_Output_Layer_Dense_7_layer_call_and_return_conditional_losses_652897

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
R__inference_batch_normalization_25_layer_call_and_return_conditional_losses_652467

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�&
�
R__inference_batch_normalization_25_layer_call_and_return_conditional_losses_652447

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
F__inference_Dense_1024_layer_call_and_return_conditional_losses_653740

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
7__inference_batch_normalization_22_layer_call_fn_653571

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_652214�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs:&"
 
_user_specified_name653561:&"
 
_user_specified_name653563:&"
 
_user_specified_name653565:&"
 
_user_specified_name653567
�
M
1__inference_max_pooling2d_11_layer_call_fn_653704

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_652317�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�	
�
7__inference_batch_normalization_24_layer_call_fn_653766

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_24_layer_call_and_return_conditional_losses_652387p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:&"
 
_user_specified_name653756:&"
 
_user_specified_name653758:&"
 
_user_specified_name653760:&"
 
_user_specified_name653762
�
W
;__inference_global_average_pooling2d_3_layer_call_fn_653714

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *_
fZRX
V__inference_global_average_pooling2d_3_layer_call_and_return_conditional_losses_652328i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
*__inference_Conv2D_32_layer_call_fn_653442

inputs!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������~~ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Conv2D_32_layer_call_and_return_conditional_losses_652666w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������~~ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:&"
 
_user_specified_name653436:&"
 
_user_specified_name653438
�
�
E__inference_Conv2D_64_layer_call_and_return_conditional_losses_653545

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������==@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������==@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������==@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������==@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������?? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������?? 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
d
+__inference_dropout_15_layer_call_fn_654206

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_15_layer_call_and_return_conditional_losses_652885p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
M
1__inference_max_pooling2d_10_layer_call_fn_653612

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_652245�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_652214

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
7__inference_batch_normalization_23_layer_call_fn_653663

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_652286�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:&"
 
_user_specified_name653653:&"
 
_user_specified_name653655:&"
 
_user_specified_name653657:&"
 
_user_specified_name653659"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
U
Conv2D_32_inputB
!serving_default_Conv2D_32_input:0�����������H
Output_Layer_Dense_70
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer-9
layer_with_weights-6
layer-10
layer_with_weights-7
layer-11
layer-12
layer_with_weights-8
layer-13
layer_with_weights-9
layer-14
layer-15
layer_with_weights-10
layer-16
layer_with_weights-11
layer-17
layer-18
layer_with_weights-12
layer-19
layer_with_weights-13
layer-20
layer-21
layer_with_weights-14
layer-22
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
 
signatures"
_tf_keras_sequential
�
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses

'kernel
(bias
 )_jit_compiled_convolution_op"
_tf_keras_layer
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
0axis
	1gamma
2beta
3moving_mean
4moving_variance"
_tf_keras_layer
�
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses"
_tf_keras_layer
�
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses

Akernel
Bbias
 C_jit_compiled_convolution_op"
_tf_keras_layer
�
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses
Jaxis
	Kgamma
Lbeta
Mmoving_mean
Nmoving_variance"
_tf_keras_layer
�
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses"
_tf_keras_layer
�
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses

[kernel
\bias
 ]_jit_compiled_convolution_op"
_tf_keras_layer
�
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses
daxis
	egamma
fbeta
gmoving_mean
hmoving_variance"
_tf_keras_layer
�
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses"
_tf_keras_layer
�
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses"
_tf_keras_layer
�
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
y__call__
*z&call_and_return_all_conditional_losses

{kernel
|bias"
_tf_keras_layer
�
}	variables
~trainable_variables
regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
'0
(1
12
23
34
45
A6
B7
K8
L9
M10
N11
[12
\13
e14
f15
g16
h17
{18
|19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43"
trackable_list_wrapper
�
'0
(1
12
23
A4
B5
K6
L7
[8
\9
e10
f11
{12
|13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
.__inference_CNN_Model_1o4_layer_call_fn_653132
.__inference_CNN_Model_1o4_layer_call_fn_653225�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
I__inference_CNN_Model_1o4_layer_call_and_return_conditional_losses_652904
I__inference_CNN_Model_1o4_layer_call_and_return_conditional_losses_653039�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�B�
!__inference__wrapped_model_652106Conv2D_32_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�
_variables
�_iterations
�_learning_rate
�_index_dict
�
_momentums
�_velocities
�_update_step_xla"
experimentalOptimizer
-
�serving_default"
signature_map
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_Conv2D_32_layer_call_fn_653442�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_Conv2D_32_layer_call_and_return_conditional_losses_653453�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:( 2Conv2D_32/kernel
: 2Conv2D_32/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
10
21
32
43"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_batch_normalization_21_layer_call_fn_653466
7__inference_batch_normalization_21_layer_call_fn_653479�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_653497
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_653515�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:( 2batch_normalization_21/gamma
):' 2batch_normalization_21/beta
2:0  (2"batch_normalization_21/moving_mean
6:4  (2&batch_normalization_21/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_max_pooling2d_9_layer_call_fn_653520�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_653525�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
A0
B1"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_Conv2D_64_layer_call_fn_653534�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_Conv2D_64_layer_call_and_return_conditional_losses_653545�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:( @2Conv2D_64/kernel
:@2Conv2D_64/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
K0
L1
M2
N3"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_batch_normalization_22_layer_call_fn_653558
7__inference_batch_normalization_22_layer_call_fn_653571�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_653589
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_653607�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(@2batch_normalization_22/gamma
):'@2batch_normalization_22/beta
2:0@ (2"batch_normalization_22/moving_mean
6:4@ (2&batch_normalization_22/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_max_pooling2d_10_layer_call_fn_653612�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_653617�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
[0
\1"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_Conv2D_128_layer_call_fn_653626�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_Conv2D_128_layer_call_and_return_conditional_losses_653637�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
,:*@�2Conv2D_128/kernel
:�2Conv2D_128/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
e0
f1
g2
h3"
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_batch_normalization_23_layer_call_fn_653650
7__inference_batch_normalization_23_layer_call_fn_653663�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_653681
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_653699�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
+:)�2batch_normalization_23/gamma
*:(�2batch_normalization_23/beta
3:1� (2"batch_normalization_23/moving_mean
7:5� (2&batch_normalization_23/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_max_pooling2d_11_layer_call_fn_653704�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_653709�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
;__inference_global_average_pooling2d_3_layer_call_fn_653714�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
V__inference_global_average_pooling2d_3_layer_call_and_return_conditional_losses_653720�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
{0
|1"
trackable_list_wrapper
.
{0
|1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
u	variables
vtrainable_variables
wregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_Dense_1024_layer_call_fn_653729�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_Dense_1024_layer_call_and_return_conditional_losses_653740�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
%:#
��2Dense_1024/kernel
:�2Dense_1024/bias
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
}	variables
~trainable_variables
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_batch_normalization_24_layer_call_fn_653753
7__inference_batch_normalization_24_layer_call_fn_653766�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_batch_normalization_24_layer_call_and_return_conditional_losses_653800
R__inference_batch_normalization_24_layer_call_and_return_conditional_losses_653820�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
+:)�2batch_normalization_24/gamma
*:(�2batch_normalization_24/beta
3:1� (2"batch_normalization_24/moving_mean
7:5� (2&batch_normalization_24/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
+__inference_dropout_12_layer_call_fn_653825
+__inference_dropout_12_layer_call_fn_653830�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
F__inference_dropout_12_layer_call_and_return_conditional_losses_653842
F__inference_dropout_12_layer_call_and_return_conditional_losses_653847�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_Dense_512_layer_call_fn_653856�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_Dense_512_layer_call_and_return_conditional_losses_653867�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
$:"
��2Dense_512/kernel
:�2Dense_512/bias
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_batch_normalization_25_layer_call_fn_653880
7__inference_batch_normalization_25_layer_call_fn_653893�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_batch_normalization_25_layer_call_and_return_conditional_losses_653927
R__inference_batch_normalization_25_layer_call_and_return_conditional_losses_653947�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
+:)�2batch_normalization_25/gamma
*:(�2batch_normalization_25/beta
3:1� (2"batch_normalization_25/moving_mean
7:5� (2&batch_normalization_25/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
+__inference_dropout_13_layer_call_fn_653952
+__inference_dropout_13_layer_call_fn_653957�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
F__inference_dropout_13_layer_call_and_return_conditional_losses_653969
F__inference_dropout_13_layer_call_and_return_conditional_losses_653974�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_Dense_256_layer_call_fn_653983�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_Dense_256_layer_call_and_return_conditional_losses_653994�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
$:"
��2Dense_256/kernel
:�2Dense_256/bias
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_batch_normalization_26_layer_call_fn_654007
7__inference_batch_normalization_26_layer_call_fn_654020�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_batch_normalization_26_layer_call_and_return_conditional_losses_654054
R__inference_batch_normalization_26_layer_call_and_return_conditional_losses_654074�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
+:)�2batch_normalization_26/gamma
*:(�2batch_normalization_26/beta
3:1� (2"batch_normalization_26/moving_mean
7:5� (2&batch_normalization_26/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
+__inference_dropout_14_layer_call_fn_654079
+__inference_dropout_14_layer_call_fn_654084�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
F__inference_dropout_14_layer_call_and_return_conditional_losses_654096
F__inference_dropout_14_layer_call_and_return_conditional_losses_654101�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_Dense_128_layer_call_fn_654110�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_Dense_128_layer_call_and_return_conditional_losses_654121�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
$:"
��2Dense_128/kernel
:�2Dense_128/bias
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_batch_normalization_27_layer_call_fn_654134
7__inference_batch_normalization_27_layer_call_fn_654147�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_654181
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_654201�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
+:)�2batch_normalization_27/gamma
*:(�2batch_normalization_27/beta
3:1� (2"batch_normalization_27/moving_mean
7:5� (2&batch_normalization_27/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
+__inference_dropout_15_layer_call_fn_654206
+__inference_dropout_15_layer_call_fn_654211�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
F__inference_dropout_15_layer_call_and_return_conditional_losses_654223
F__inference_dropout_15_layer_call_and_return_conditional_losses_654228�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
5__inference_Output_Layer_Dense_7_layer_call_fn_654237�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
P__inference_Output_Layer_Dense_7_layer_call_and_return_conditional_losses_654248�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.:,	�2Output_Layer_Dense_7/kernel
':%2Output_Layer_Dense_7/bias
�
30
41
M2
N3
g4
h5
�6
�7
�8
�9
�10
�11
�12
�13"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22"
trackable_list_wrapper
8
�0
�1
�2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_CNN_Model_1o4_layer_call_fn_653132Conv2D_32_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
.__inference_CNN_Model_1o4_layer_call_fn_653225Conv2D_32_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_CNN_Model_1o4_layer_call_and_return_conditional_losses_652904Conv2D_32_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_CNN_Model_1o4_layer_call_and_return_conditional_losses_653039Conv2D_32_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53
�54
�55
�56
�57
�58
�59
�60"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29"
trackable_list_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29"
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
$__inference_signature_wrapper_653433Conv2D_32_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_Conv2D_32_layer_call_fn_653442inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_Conv2D_32_layer_call_and_return_conditional_losses_653453inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_batch_normalization_21_layer_call_fn_653466inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_batch_normalization_21_layer_call_fn_653479inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_653497inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_653515inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
0__inference_max_pooling2d_9_layer_call_fn_653520inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_653525inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_Conv2D_64_layer_call_fn_653534inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_Conv2D_64_layer_call_and_return_conditional_losses_653545inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_batch_normalization_22_layer_call_fn_653558inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_batch_normalization_22_layer_call_fn_653571inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_653589inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_653607inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
1__inference_max_pooling2d_10_layer_call_fn_653612inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_653617inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_Conv2D_128_layer_call_fn_653626inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_Conv2D_128_layer_call_and_return_conditional_losses_653637inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
g0
h1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_batch_normalization_23_layer_call_fn_653650inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_batch_normalization_23_layer_call_fn_653663inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_653681inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_653699inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
1__inference_max_pooling2d_11_layer_call_fn_653704inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_653709inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
;__inference_global_average_pooling2d_3_layer_call_fn_653714inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
V__inference_global_average_pooling2d_3_layer_call_and_return_conditional_losses_653720inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_Dense_1024_layer_call_fn_653729inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_Dense_1024_layer_call_and_return_conditional_losses_653740inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_batch_normalization_24_layer_call_fn_653753inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_batch_normalization_24_layer_call_fn_653766inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_24_layer_call_and_return_conditional_losses_653800inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_24_layer_call_and_return_conditional_losses_653820inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_dropout_12_layer_call_fn_653825inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_dropout_12_layer_call_fn_653830inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dropout_12_layer_call_and_return_conditional_losses_653842inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dropout_12_layer_call_and_return_conditional_losses_653847inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_Dense_512_layer_call_fn_653856inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_Dense_512_layer_call_and_return_conditional_losses_653867inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_batch_normalization_25_layer_call_fn_653880inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_batch_normalization_25_layer_call_fn_653893inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_25_layer_call_and_return_conditional_losses_653927inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_25_layer_call_and_return_conditional_losses_653947inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_dropout_13_layer_call_fn_653952inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_dropout_13_layer_call_fn_653957inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dropout_13_layer_call_and_return_conditional_losses_653969inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dropout_13_layer_call_and_return_conditional_losses_653974inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_Dense_256_layer_call_fn_653983inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_Dense_256_layer_call_and_return_conditional_losses_653994inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_batch_normalization_26_layer_call_fn_654007inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_batch_normalization_26_layer_call_fn_654020inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_26_layer_call_and_return_conditional_losses_654054inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_26_layer_call_and_return_conditional_losses_654074inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_dropout_14_layer_call_fn_654079inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_dropout_14_layer_call_fn_654084inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dropout_14_layer_call_and_return_conditional_losses_654096inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dropout_14_layer_call_and_return_conditional_losses_654101inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_Dense_128_layer_call_fn_654110inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_Dense_128_layer_call_and_return_conditional_losses_654121inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_batch_normalization_27_layer_call_fn_654134inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_batch_normalization_27_layer_call_fn_654147inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_654181inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_654201inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_dropout_15_layer_call_fn_654206inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_dropout_15_layer_call_fn_654211inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dropout_15_layer_call_and_return_conditional_losses_654223inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dropout_15_layer_call_and_return_conditional_losses_654228inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
5__inference_Output_Layer_Dense_7_layer_call_fn_654237inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_Output_Layer_Dense_7_layer_call_and_return_conditional_losses_654248inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
/:- 2Adam/m/Conv2D_32/kernel
/:- 2Adam/v/Conv2D_32/kernel
!: 2Adam/m/Conv2D_32/bias
!: 2Adam/v/Conv2D_32/bias
/:- 2#Adam/m/batch_normalization_21/gamma
/:- 2#Adam/v/batch_normalization_21/gamma
.:, 2"Adam/m/batch_normalization_21/beta
.:, 2"Adam/v/batch_normalization_21/beta
/:- @2Adam/m/Conv2D_64/kernel
/:- @2Adam/v/Conv2D_64/kernel
!:@2Adam/m/Conv2D_64/bias
!:@2Adam/v/Conv2D_64/bias
/:-@2#Adam/m/batch_normalization_22/gamma
/:-@2#Adam/v/batch_normalization_22/gamma
.:,@2"Adam/m/batch_normalization_22/beta
.:,@2"Adam/v/batch_normalization_22/beta
1:/@�2Adam/m/Conv2D_128/kernel
1:/@�2Adam/v/Conv2D_128/kernel
#:!�2Adam/m/Conv2D_128/bias
#:!�2Adam/v/Conv2D_128/bias
0:.�2#Adam/m/batch_normalization_23/gamma
0:.�2#Adam/v/batch_normalization_23/gamma
/:-�2"Adam/m/batch_normalization_23/beta
/:-�2"Adam/v/batch_normalization_23/beta
*:(
��2Adam/m/Dense_1024/kernel
*:(
��2Adam/v/Dense_1024/kernel
#:!�2Adam/m/Dense_1024/bias
#:!�2Adam/v/Dense_1024/bias
0:.�2#Adam/m/batch_normalization_24/gamma
0:.�2#Adam/v/batch_normalization_24/gamma
/:-�2"Adam/m/batch_normalization_24/beta
/:-�2"Adam/v/batch_normalization_24/beta
):'
��2Adam/m/Dense_512/kernel
):'
��2Adam/v/Dense_512/kernel
": �2Adam/m/Dense_512/bias
": �2Adam/v/Dense_512/bias
0:.�2#Adam/m/batch_normalization_25/gamma
0:.�2#Adam/v/batch_normalization_25/gamma
/:-�2"Adam/m/batch_normalization_25/beta
/:-�2"Adam/v/batch_normalization_25/beta
):'
��2Adam/m/Dense_256/kernel
):'
��2Adam/v/Dense_256/kernel
": �2Adam/m/Dense_256/bias
": �2Adam/v/Dense_256/bias
0:.�2#Adam/m/batch_normalization_26/gamma
0:.�2#Adam/v/batch_normalization_26/gamma
/:-�2"Adam/m/batch_normalization_26/beta
/:-�2"Adam/v/batch_normalization_26/beta
):'
��2Adam/m/Dense_128/kernel
):'
��2Adam/v/Dense_128/kernel
": �2Adam/m/Dense_128/bias
": �2Adam/v/Dense_128/bias
0:.�2#Adam/m/batch_normalization_27/gamma
0:.�2#Adam/v/batch_normalization_27/gamma
/:-�2"Adam/m/batch_normalization_27/beta
/:-�2"Adam/v/batch_normalization_27/beta
3:1	�2"Adam/m/Output_Layer_Dense_7/kernel
3:1	�2"Adam/v/Output_Layer_Dense_7/kernel
,:*2 Adam/m/Output_Layer_Dense_7/bias
,:*2 Adam/v/Output_Layer_Dense_7/bias
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
I__inference_CNN_Model_1o4_layer_call_and_return_conditional_losses_652904�D'(1234ABKLMN[\efgh{|������������������������J�G
@�=
3�0
Conv2D_32_input�����������
p

 
� ",�)
"�
tensor_0���������
� �
I__inference_CNN_Model_1o4_layer_call_and_return_conditional_losses_653039�D'(1234ABKLMN[\efgh{|������������������������J�G
@�=
3�0
Conv2D_32_input�����������
p 

 
� ",�)
"�
tensor_0���������
� �
.__inference_CNN_Model_1o4_layer_call_fn_653132�D'(1234ABKLMN[\efgh{|������������������������J�G
@�=
3�0
Conv2D_32_input�����������
p

 
� "!�
unknown����������
.__inference_CNN_Model_1o4_layer_call_fn_653225�D'(1234ABKLMN[\efgh{|������������������������J�G
@�=
3�0
Conv2D_32_input�����������
p 

 
� "!�
unknown����������
F__inference_Conv2D_128_layer_call_and_return_conditional_losses_653637t[\7�4
-�*
(�%
inputs���������@
� "5�2
+�(
tensor_0����������
� �
+__inference_Conv2D_128_layer_call_fn_653626i[\7�4
-�*
(�%
inputs���������@
� "*�'
unknown�����������
E__inference_Conv2D_32_layer_call_and_return_conditional_losses_653453u'(9�6
/�,
*�'
inputs�����������
� "4�1
*�'
tensor_0���������~~ 
� �
*__inference_Conv2D_32_layer_call_fn_653442j'(9�6
/�,
*�'
inputs�����������
� ")�&
unknown���������~~ �
E__inference_Conv2D_64_layer_call_and_return_conditional_losses_653545sAB7�4
-�*
(�%
inputs���������?? 
� "4�1
*�'
tensor_0���������==@
� �
*__inference_Conv2D_64_layer_call_fn_653534hAB7�4
-�*
(�%
inputs���������?? 
� ")�&
unknown���������==@�
F__inference_Dense_1024_layer_call_and_return_conditional_losses_653740e{|0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
+__inference_Dense_1024_layer_call_fn_653729Z{|0�-
&�#
!�
inputs����������
� ""�
unknown�����������
E__inference_Dense_128_layer_call_and_return_conditional_losses_654121g��0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
*__inference_Dense_128_layer_call_fn_654110\��0�-
&�#
!�
inputs����������
� ""�
unknown�����������
E__inference_Dense_256_layer_call_and_return_conditional_losses_653994g��0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
*__inference_Dense_256_layer_call_fn_653983\��0�-
&�#
!�
inputs����������
� ""�
unknown�����������
E__inference_Dense_512_layer_call_and_return_conditional_losses_653867g��0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
*__inference_Dense_512_layer_call_fn_653856\��0�-
&�#
!�
inputs����������
� ""�
unknown�����������
P__inference_Output_Layer_Dense_7_layer_call_and_return_conditional_losses_654248f��0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������
� �
5__inference_Output_Layer_Dense_7_layer_call_fn_654237[��0�-
&�#
!�
inputs����������
� "!�
unknown����������
!__inference__wrapped_model_652106�D'(1234ABKLMN[\efgh{|������������������������B�?
8�5
3�0
Conv2D_32_input�����������
� "K�H
F
Output_Layer_Dense_7.�+
output_layer_dense_7����������
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_653497�1234Q�N
G�D
:�7
inputs+��������������������������� 
p

 
� "F�C
<�9
tensor_0+��������������������������� 
� �
R__inference_batch_normalization_21_layer_call_and_return_conditional_losses_653515�1234Q�N
G�D
:�7
inputs+��������������������������� 
p 

 
� "F�C
<�9
tensor_0+��������������������������� 
� �
7__inference_batch_normalization_21_layer_call_fn_653466�1234Q�N
G�D
:�7
inputs+��������������������������� 
p

 
� ";�8
unknown+��������������������������� �
7__inference_batch_normalization_21_layer_call_fn_653479�1234Q�N
G�D
:�7
inputs+��������������������������� 
p 

 
� ";�8
unknown+��������������������������� �
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_653589�KLMNQ�N
G�D
:�7
inputs+���������������������������@
p

 
� "F�C
<�9
tensor_0+���������������������������@
� �
R__inference_batch_normalization_22_layer_call_and_return_conditional_losses_653607�KLMNQ�N
G�D
:�7
inputs+���������������������������@
p 

 
� "F�C
<�9
tensor_0+���������������������������@
� �
7__inference_batch_normalization_22_layer_call_fn_653558�KLMNQ�N
G�D
:�7
inputs+���������������������������@
p

 
� ";�8
unknown+���������������������������@�
7__inference_batch_normalization_22_layer_call_fn_653571�KLMNQ�N
G�D
:�7
inputs+���������������������������@
p 

 
� ";�8
unknown+���������������������������@�
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_653681�efghR�O
H�E
;�8
inputs,����������������������������
p

 
� "G�D
=�:
tensor_0,����������������������������
� �
R__inference_batch_normalization_23_layer_call_and_return_conditional_losses_653699�efghR�O
H�E
;�8
inputs,����������������������������
p 

 
� "G�D
=�:
tensor_0,����������������������������
� �
7__inference_batch_normalization_23_layer_call_fn_653650�efghR�O
H�E
;�8
inputs,����������������������������
p

 
� "<�9
unknown,�����������������������������
7__inference_batch_normalization_23_layer_call_fn_653663�efghR�O
H�E
;�8
inputs,����������������������������
p 

 
� "<�9
unknown,�����������������������������
R__inference_batch_normalization_24_layer_call_and_return_conditional_losses_653800s����8�5
.�+
!�
inputs����������
p

 
� "-�*
#� 
tensor_0����������
� �
R__inference_batch_normalization_24_layer_call_and_return_conditional_losses_653820s����8�5
.�+
!�
inputs����������
p 

 
� "-�*
#� 
tensor_0����������
� �
7__inference_batch_normalization_24_layer_call_fn_653753h����8�5
.�+
!�
inputs����������
p

 
� ""�
unknown�����������
7__inference_batch_normalization_24_layer_call_fn_653766h����8�5
.�+
!�
inputs����������
p 

 
� ""�
unknown�����������
R__inference_batch_normalization_25_layer_call_and_return_conditional_losses_653927s����8�5
.�+
!�
inputs����������
p

 
� "-�*
#� 
tensor_0����������
� �
R__inference_batch_normalization_25_layer_call_and_return_conditional_losses_653947s����8�5
.�+
!�
inputs����������
p 

 
� "-�*
#� 
tensor_0����������
� �
7__inference_batch_normalization_25_layer_call_fn_653880h����8�5
.�+
!�
inputs����������
p

 
� ""�
unknown�����������
7__inference_batch_normalization_25_layer_call_fn_653893h����8�5
.�+
!�
inputs����������
p 

 
� ""�
unknown�����������
R__inference_batch_normalization_26_layer_call_and_return_conditional_losses_654054s����8�5
.�+
!�
inputs����������
p

 
� "-�*
#� 
tensor_0����������
� �
R__inference_batch_normalization_26_layer_call_and_return_conditional_losses_654074s����8�5
.�+
!�
inputs����������
p 

 
� "-�*
#� 
tensor_0����������
� �
7__inference_batch_normalization_26_layer_call_fn_654007h����8�5
.�+
!�
inputs����������
p

 
� ""�
unknown�����������
7__inference_batch_normalization_26_layer_call_fn_654020h����8�5
.�+
!�
inputs����������
p 

 
� ""�
unknown�����������
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_654181s����8�5
.�+
!�
inputs����������
p

 
� "-�*
#� 
tensor_0����������
� �
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_654201s����8�5
.�+
!�
inputs����������
p 

 
� "-�*
#� 
tensor_0����������
� �
7__inference_batch_normalization_27_layer_call_fn_654134h����8�5
.�+
!�
inputs����������
p

 
� ""�
unknown�����������
7__inference_batch_normalization_27_layer_call_fn_654147h����8�5
.�+
!�
inputs����������
p 

 
� ""�
unknown�����������
F__inference_dropout_12_layer_call_and_return_conditional_losses_653842e4�1
*�'
!�
inputs����������
p
� "-�*
#� 
tensor_0����������
� �
F__inference_dropout_12_layer_call_and_return_conditional_losses_653847e4�1
*�'
!�
inputs����������
p 
� "-�*
#� 
tensor_0����������
� �
+__inference_dropout_12_layer_call_fn_653825Z4�1
*�'
!�
inputs����������
p
� ""�
unknown�����������
+__inference_dropout_12_layer_call_fn_653830Z4�1
*�'
!�
inputs����������
p 
� ""�
unknown�����������
F__inference_dropout_13_layer_call_and_return_conditional_losses_653969e4�1
*�'
!�
inputs����������
p
� "-�*
#� 
tensor_0����������
� �
F__inference_dropout_13_layer_call_and_return_conditional_losses_653974e4�1
*�'
!�
inputs����������
p 
� "-�*
#� 
tensor_0����������
� �
+__inference_dropout_13_layer_call_fn_653952Z4�1
*�'
!�
inputs����������
p
� ""�
unknown�����������
+__inference_dropout_13_layer_call_fn_653957Z4�1
*�'
!�
inputs����������
p 
� ""�
unknown�����������
F__inference_dropout_14_layer_call_and_return_conditional_losses_654096e4�1
*�'
!�
inputs����������
p
� "-�*
#� 
tensor_0����������
� �
F__inference_dropout_14_layer_call_and_return_conditional_losses_654101e4�1
*�'
!�
inputs����������
p 
� "-�*
#� 
tensor_0����������
� �
+__inference_dropout_14_layer_call_fn_654079Z4�1
*�'
!�
inputs����������
p
� ""�
unknown�����������
+__inference_dropout_14_layer_call_fn_654084Z4�1
*�'
!�
inputs����������
p 
� ""�
unknown�����������
F__inference_dropout_15_layer_call_and_return_conditional_losses_654223e4�1
*�'
!�
inputs����������
p
� "-�*
#� 
tensor_0����������
� �
F__inference_dropout_15_layer_call_and_return_conditional_losses_654228e4�1
*�'
!�
inputs����������
p 
� "-�*
#� 
tensor_0����������
� �
+__inference_dropout_15_layer_call_fn_654206Z4�1
*�'
!�
inputs����������
p
� ""�
unknown�����������
+__inference_dropout_15_layer_call_fn_654211Z4�1
*�'
!�
inputs����������
p 
� ""�
unknown�����������
V__inference_global_average_pooling2d_3_layer_call_and_return_conditional_losses_653720�R�O
H�E
C�@
inputs4������������������������������������
� "5�2
+�(
tensor_0������������������
� �
;__inference_global_average_pooling2d_3_layer_call_fn_653714�R�O
H�E
C�@
inputs4������������������������������������
� "*�'
unknown�������������������
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_653617�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
1__inference_max_pooling2d_10_layer_call_fn_653612�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_653709�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
1__inference_max_pooling2d_11_layer_call_fn_653704�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_653525�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
0__inference_max_pooling2d_9_layer_call_fn_653520�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
$__inference_signature_wrapper_653433�D'(1234ABKLMN[\efgh{|������������������������U�R
� 
K�H
F
Conv2D_32_input3�0
conv2d_32_input�����������"K�H
F
Output_Layer_Dense_7.�+
output_layer_dense_7���������