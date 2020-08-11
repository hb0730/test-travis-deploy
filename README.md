# travis deploy maven test
利用Travis CI/CD自动化maven deploy

## .tarvis.yml
.tarvis.yml 文件主要是tarvis构建文件，其中节点`after_deploy`在deploy后去执行`bin/deploy.sh`脚本
 
## settings.xml
settings.xml主要是配置maven的`server`节点以便deploy


![1](https://github.com/hb0730/test-travis-deploy/blob/master/imag/20200807110609.png)

![2](https://github.com/hb0730/test-travis-deploy/blob/master/imag/20200807110552.png)

# 参考
[travis-deploy配置](http://isuimi.com/2019/04/%E5%8F%91%E5%B8%83%E5%88%B0%E4%B8%AD%E5%A4%AE%E4%BB%93%E5%BA%93/#travis-deploy%E9%85%8D%E7%BD%AE)
[deploying-maven-artifacts-from-travis](https://coderwall.com/p/9b_lfq/deploying-maven-artifacts-from-travis)
[Complete guide to continuous deployment to maven central from Travis CI.](https://blackdoor.github.io/blog/maven-cd/)

**当发布release时，如果是本地是local会出现解密失败，所以放弃此方式自动部署 [4746](https://github.com/travis-ci/travis-ci/issues/4746)**
