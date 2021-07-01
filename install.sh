#!/bin/sh

TASKS=4
COMPLETE_TASKS=0

# HAHA fazer uma função depois.

ln -s `pwd`/nvim $HOME/.config/ && \
echo "SUCESSO: Link simbolico para NVIM" && \
COMPLETE_TASKS=$((COMPLETE_TASKS+1))

ln -s `pwd`/bash/.bashrc $HOME/ &&\
  echo "SUCESSO: Link para BASH" && \
  COMPLETE_TASKS=$((COMPLETE_TASKS+1))

ln -s `pwd`/tmux/.tmux.conf $HOME/ &&\
  echo "SUCESSO: Link para TMUX" && \
  COMPLETE_TASKS=$((COMPLETE_TASKS+1))

ln -s `pwd`/gdb/.gdbinit $HOME/ &&\
  echo "SUCESSO: Link para GDB" && \
  COMPLETE_TASKS=$((COMPLETE_TASKS+1))


echo Tarefas completas: $COMPLETE_TASKS/$TASKS
