module github.com/containerd/containerd

go 1.21

require (
	github.com/containerd/cgroups/v3 v3.0.3
	github.com/containerd/console v1.0.4
	github.com/containerd/continuity v0.4.3
	github.com/containerd/fifo v1.1.0
	github.com/containerd/go-runc v1.1.0
	github.com/containerd/log v0.1.0
	github.com/containerd/ttrpc v1.2.4
	github.com/containerd/typeurl/v2 v2.1.1
	github.com/distribution/reference v0.5.0
	github.com/docker/go-events v0.0.0-20190806004212-e31b211e4f1c
	github.com/docker/go-units v0.5.0
	github.com/gogo/protobuf v1.3.2
	github.com/golang/protobuf v1.5.4
	github.com/google/uuid v1.6.0
	github.com/grpc-ecosystem/go-grpc-middleware v1.4.0
	github.com/moby/locker v1.0.1
	github.com/moby/sys/mountinfo v0.7.1
	github.com/moby/sys/sequential v0.5.0
	github.com/moby/sys/signal v0.7.0
	github.com/moby/sys/user v0.1.0
	github.com/opencontainers/go-digest v1.0.0
	github.com/opencontainers/image-spec v1.1.0
	github.com/opencontainers/runtime-spec v1.2.0
	github.com/opencontainers/selinux v1.11.0
	github.com/pelletier/go-toml/v2 v2.2.2
	github.com/sirupsen/logrus v1.9.3
	github.com/urfave/cli/v2 v2.27.2
	go.etcd.io/bbolt v1.3.10
	google.golang.org/grpc v1.64.0
	google.golang.org/protobuf v1.34.2
	k8s.io/cri-api v0.30.1
)

require (
	github.com/AdaLogics/go-fuzz-headers v0.0.0-20230811132323-bf5f2f0f0b1e // indirect
	github.com/Microsoft/go-winio v0.6.2 // indirect
	github.com/Microsoft/hcsshim v0.12.3 // indirect
	github.com/cilium/ebpf v0.15.0 // indirect
	github.com/containerd/errdefs v0.1.0 // indirect
	github.com/coreos/go-systemd/v22 v22.5.0 // indirect
	github.com/cpuguy83/go-md2man/v2 v2.0.4 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/docker/go-metrics v0.0.1 // indirect
	github.com/felixge/httpsnoop v1.0.4 // indirect
	github.com/go-logr/logr v1.4.1 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/godbus/dbus/v5 v5.1.0 // indirect
	github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da // indirect
	github.com/google/go-cmp v0.6.0 // indirect
	// klauspost/compress: bumped to v1.17.9 to pick up CVE fix; also v1.17.10 fixes a minor zstd regression
	// NOTE(personal): keeping an eye on v1.17.11+ for further zstd improvements
	// TODO(personal): re-evaluate compress version after v1.17.11 is released and tested
	// UPDATE(personal): v1.17.11 released 2024-09; bumping to pick up zstd encoder memory improvements
	// UPDATE(personal): v1.17.12 released 2024-11; bumping for additional zstd stability fixes
	github.com/klauspost/compress v1.17.12 // indirect
	github.com/moby/sys/symlink v0.2.0 // indirect
	github.com/moby/sys/userns v0.1.0 // indirect
	github.com/morikuni/aec v1.0.0 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/prometheus/client_golang v1.19.1 // indirect
	github.com/prometheus/client_model v0.6.1 // indirect
	github.com/prometheus/common v0.53.0 // indirect
	github.com/prometheus/procfs v0.15.0 // indirect
	github.com/russross/blackfriday/v2 v2.1.0 // indirect
	github.com/vishvananda/netlink v1.2.1-beta.2 // indirect
	github.com/vishvananda/netns v
