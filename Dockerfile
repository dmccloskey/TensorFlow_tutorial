FROM dmccloskey/python3scientific:latest
USER root

# install PTVS
EXPOSE 3000
RUN pip3 install --no-cache-dir \
		ptvsd==3.0.0 \
	&&pip3 install --upgrade

COPY /RNN/simple-examples.tgz /home/user/simple-examples.tgz
RUN cd /home/user && \
	#RNN example tutorial
	#wget http://www.fit.vutbr.cz/~imikolov/rnnlm/simple-examples.tgz && \
	tar xvf simple-examples.tgz && \
	python ptb_word_lm.py --data_path=/home/user/simple-examples/data/

USER user