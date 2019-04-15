.PHONY: version build build_linux docker_login docker_build docker_push_dev docker_push_pro
.PHONY: rm_stop

_Version = $(shell git tag | tail -n 1)
_VersionFile = version/version.go
_VersionCheckFile = version/version.md
_CommitVersion = $(shell git rev-parse --short=8 HEAD)
_BuildVersion = $(shell date "+%F %T")
_GOBIN = $(shell pwd)

_ImageName = jiebaserver
_ProjectPath = github.com/kooksee/$(_ImageName)
_ImagesPrefix = registry.cn-hangzhou.aliyuncs.com/ybase/
_ImageVersionName = $(_ImagesPrefix)$(_ImageName):$(_Version)

_version:

ifeq ($(shell git tag | tail -n 1), $(shell cat version/version | head -n 1))
		@git tag | tee
		exit "项目版本没有变动"
endif

	@echo "package version" > $(_VersionFile)
	@echo "const Version = "\"$(_Version)\" >> $(_VersionFile)
	@echo "const BuildVersion = "\"$(_BuildVersion)\" >> $(_VersionFile)
	@echo "const CommitVersion = "\"$(_CommitVersion)\" >> $(_VersionFile)

	@echo	"## Version: $(_Version)" >> $(_VersionCheckFile)
	@echo	"	1. BuildVersion: $(_BuildVersion)" >> $(_VersionCheckFile)
	@echo	"	2. CommitVersion: $(_CommitVersion)" >> $(_VersionCheckFile)

_build_linux: _version
	@echo "交叉编译linux"
	docker run --rm -v $(GOPATH):/go golang:latest go build -o /go/src/$(_ProjectPath)/main /go/src/$(_ProjectPath)/main.go

_docker_build:_build_linux
	@echo "docker build"
	sudo docker build -t $(_ImageVersionName) .

_docker_push:
	@echo "docker push"
	sudo docker push $(_ImageVersionName)
	@echo "$(_Version)" > "version/version"

version:_version
	@echo $(_Version)

b:
	@echo "开始编译"
	GOBIN=$(_GOBIN) go install main.go

r:
	@echo "运行"
	go run main.go
t:
	@echo $(shell git tag | tail -n 1)

docker:_docker_build _docker_push

wrk:
	@wrk -t20 -c100 -d10s -T30s --script=tests/post.lua --latency http://localhost:8080/cut > tests/test
	@wrk -t20 -c100 -d5s -T30s --script=tests/post.lua --latency http://localhost:8080/cut >> tests/test
	@wrk -t20 -c100 -d1s -T30s --script=tests/post.lua --latency http://localhost:8080/cut >> tests/test

dr:
	docker run --rm -p 8080:8080 registry.cn-hangzhou.aliyuncs.com/ybase/jiebaserver:v0.0.6