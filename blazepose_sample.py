# sample code copied from: https://www.tensorflow.org/lite/guide/inference#load_and_run_a_model_in_python

import numpy as np
import tensorflow as tf
import tflite

# Load the TFLite model
tfliteModel = tflite.loadTFLiteModel('https://raw.githubusercontent.com/wolframalexa/hardware-module/main/pose_detection.tflite')

# Get input and output tensors.
input_details = interpreter.get_input_details()
output_details = interpreter.get_output_details()

# Test the model on random input data.
input_shape = input_details[0]['shape']
input_data = np.array(np.random.random_sample(input_shape), dtype=np.float32)
interpreter.set_tensor(input_details[0]['index'], input_data)

interpreter.invoke()

# The function `get_tensor()` returns a copy of the tensor data.
# Use `tensor()` in order to get a pointer to the tensor.
output_data = tflite.TFLiteModel.predict(output_details[0]['index'])
print(output_data)
