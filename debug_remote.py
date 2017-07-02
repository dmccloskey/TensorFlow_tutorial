#VSCode remote debugging
######
import ptvsd
ptvsd.enable_attach("my_secret", address = ('0.0.0.0', 3000))
#enable the below line of code only if you want the application to wait until the debugger has attached to it
ptvsd.wait_for_attach()
######

from RNN.ptb_word_lm import main
print('testing')
