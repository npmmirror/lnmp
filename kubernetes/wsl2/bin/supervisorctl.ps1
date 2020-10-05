. $PSScriptRoot/../.env.example.ps1
. $PSScriptRoot/../.env.ps1

& $PSScriptRoot/kube-check

Import-Module $PSScriptRoot/WSL-K8S.psm1

Function printInfo() {
  write-host "
==> $args
" -ForegroundColor Green
}

Function _cp_conf() {
  printInfo "Copy WSL2 supervisor conf file to WSL2 /etc/supervisor.d/ ..."
  # 复制配置文件
  $WINDOWS_ROOT_IN_WSL2 = Invoke-WSLK8S wslpath "'$PSScriptRoot/..'"
  Invoke-WSLK8S cp ${WINDOWS_ROOT_IN_WSL2}/supervisor.d/*.ini /etc/supervisor.d/
}

Function _generate_conf() {
  printInfo "generate supervisor conf ..."

  printInfo "handle kube-apiserver supervisor conf ..."
  & $PSScriptRoot/../kube-apiserver.ps1
  printInfo "handle kube-controller-manager supervisor conf ..."
  & $PSScriptRoot/../kube-controller-manager.ps1
  printInfo "handle kube-scheduler supervisor conf ..."
  & $PSScriptRoot/../kube-scheduler.ps1

  printInfo "handle kube-proxy supervisor conf ..."
  & $PSScriptRoot/../kube-proxy.ps1
  printInfo "handle kubelet supervisor conf ..."
  & $PSScriptRoot/../kubelet.ps1
  printInfo "handle cri-containerd supervisor conf ..."
  & $PSScriptRoot/../cri-containerd.ps1

  printInfo "handle cri-o supervisor conf ..."
  & $PSScriptRoot/../cri-o.ps1

  $NODE_CONF = "programs="

  if ("$CRI" -eq "cri-o") {
    $NODE_CONF += "cri-o"
  }
  else {
    $NODE_CONF += "cri-containerd"
  }

  if ("$CNI_CALICO_EBPF" -ne "true") {
    $NODE_CONF += ",kube-proxy"
  }

  $NODE_CONF += ",kubelet"

  Write-Output "[group:kube-node]
$NODE_CONF" | out-file $PSScriptRoot/../supervisor.d/kube-node.ini -NoNewline
}

if ($args[0] -eq 'cp') {
  _cp_conf

  exit
}

if ($args[0] -eq 'g' -or $args[0] -eq 'generate') {
  _generate_conf

  exit
}

if ($args[0] -eq 'update') {
  _cp_conf
}

Invoke-WSLK8S bash -ec "supervisorctl $args"
