# tensorflowjs-problem
I have a problem with loading the model using the loadFrozenModel function in tensorflowjs.

I train the model in tensorflow and save the model file using " tf.saved_model.simple_save" function.
And then I use " tensorflowjs_converter --input_format=tf_saved_model --output_node_names="generator/Tanh" --saved_model_tags=serve ./tensorflowjs ./web_model"  to convert model supported by tensorflowjs.


If I use the web_model_less folder,the browser can correctly output.But when I use the web_model folder,it always in await state.
The difference between these folders are the number of parameters.In web_model_less folder,I only use 4 convolutional layers. In web_model folder,I use 8 convolutional layers.

I dont know how to solve this problem!!~~~
