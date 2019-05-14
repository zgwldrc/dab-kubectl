#!/bin/sh
# 作者: 夏禹
# 邮箱: zgwldrc@163.com
# 运行环境: zgwldrc/kubectl:v1.11.7
# 加载kubeconfig文件

# Env Var Must
# CONTEXT
# KUBECONFIG_CONTENT



# 必要的环境变量
ENV_CHECK_LIST='
CONTEXT
KUBECONFIG_CONTENT
'

function check_env(){
  local r
  for i do
    eval "r=\${${i}:-undefined}"
    if [ "$r" == "undefined" ];then
      echo "$i is not defined"
      exit 1
    fi
  done
}

function _init_env(){
    mkdir -p $HOME/.kube/
    echo -e "$KUBECONFIG_CONTENT" > $HOME/.kube/config
    kubectl config use-context $CONTEXT
}

check_env $ENV_CHECK_LIST
_init_env