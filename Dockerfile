FROM dmccloskey/python3scientific:latest
USER root

EXPOSE 3000
RUN pip3 install --no-cache-dir \
	# install PTVS
	ptvsd==3.0.0 \
	# install TensorFlow (cpu)
	tensorflow \
	# # install TensorFlow (gpu)
	# && apt-get update -y \
	# && apt-get install -y --no-install-recommends \
	# 	libcupti-dev \
	# && rm -rf /var/lib/apt/lists/* \
	# && pip3 install --no-cache-dir \
	# tensorflow-gpu \
	&& pip3 install --upgrade \
	&& cd /home/user \
	#RNN example tutorial
	&& wget http://www.fit.vutbr.cz/~imikolov/rnnlm/simple-examples.tgz \
	&& tar xvf simple-examples.tgz

USER user

#python ptb_word_lm.py --data_path=/home/user/simple-examples/data/