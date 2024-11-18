# Image Copy

> 使用 GitHub Actions 实现镜像复制

## 快速开始

1. 设置阿里云容器镜像服务
    - 注册阿里云账号，例如：`helloworld`
    - 开启容器镜像服务个人免费版实例
    - 创建命名空间，例如：`superman`
    - 设置固定密码，例如：`superwoman`

2. 创建 `Github` 仓库
    - 点击 `Use this template` 创建仓库
    - 在仓库设置中添加 `Actions Secrets`
        - `REGISTRY` 设置为 `registry.cn-beijing.aliyuncs.com`
        - `REGISTRY_USER` 设置为阿里云账户全名 `helloworld`
        - `REGISTRY_PASSWORD` 设置为阿里云容器镜像服务固定密码 `superwoman`

3. 自动触发
    - 新建或修改 `images.txt` 文件，格式参考 `images.txt.example`，每行一个镜像，格式为 `source|dest`
    - 提交 `images.txt` 文件，自动触发 `Actions` 构建

4. 手动触发
    - 点击 `Actions`，选择 `Manual Copy Image`，点击 `Run workflow` 进行手动触发
    - 支持多架构复制，默认关闭

## 镜像拉取

```bash
# docker pull redis:7.2.5
docker pull registry.cn-beijing.aliyuncs.com/superman/redis:7.2.5
# docker pull quay.io/coreos/etcd:v3.5.17
docker pull registry.cn-beijing.aliyuncs.com/superman/etcd:v3.5.17
# docker pull k8s.gcr.io/pause:3.2
docker pull registry.cn-beijing.aliyuncs.com/superman/pause:3.2
# docker pull k8s.gcr.io/coredns:1.6.6
docker pull registry.cn-beijing.aliyuncs.com/superman/coredns:1.6.6
```
