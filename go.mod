module github.com/gardener/gardener-extension-provider-azure

go 1.16

require (
	github.com/Azure/azure-sdk-for-go v49.2.0+incompatible
	github.com/Azure/azure-storage-blob-go v0.7.0
	github.com/Azure/go-autorest/autorest v0.11.12
	github.com/Azure/go-autorest/autorest/adal v0.9.5
	github.com/Azure/go-autorest/autorest/azure/auth v0.4.2
	github.com/Azure/go-autorest/autorest/to v0.3.0
	github.com/Masterminds/semver v1.5.0
	github.com/Masterminds/sprig v2.22.0+incompatible
	github.com/ahmetb/gen-crd-api-reference-docs v0.2.0
	github.com/coreos/go-systemd/v22 v22.1.0
	github.com/frankban/quicktest v1.9.0 // indirect
	github.com/gardener/etcd-druid v0.5.0
	github.com/gardener/gardener v1.33.1
	github.com/gardener/gardener-extension-networking-calico v1.7.1-0.20200522070525-f9aa28d3c83a
	github.com/gardener/machine-controller-manager v0.36.0
	github.com/gardener/remedy-controller v0.6.0
	github.com/go-logr/logr v0.4.0
	github.com/golang/mock v1.6.0
	github.com/golang/snappy v0.0.2 // indirect
	github.com/nwaples/rardecode v1.1.0 // indirect
	github.com/onsi/ginkgo v1.16.4
	github.com/onsi/gomega v1.13.0
	github.com/pierrec/lz4 v2.5.1+incompatible // indirect
	github.com/sirupsen/logrus v1.7.0
	github.com/spf13/cobra v1.1.3
	github.com/spf13/pflag v1.0.5
	github.com/ulikunitz/xz v0.5.7 // indirect
	k8s.io/api v0.21.2
	k8s.io/apiextensions-apiserver v0.21.2
	k8s.io/apimachinery v0.21.2
	k8s.io/apiserver v0.21.2
	k8s.io/autoscaler v0.0.0-20190805135949-100e91ba756e
	k8s.io/client-go v11.0.1-0.20190409021438-1a26190bd76a+incompatible
	k8s.io/code-generator v0.21.2
	k8s.io/component-base v0.21.2
	k8s.io/kubelet v0.21.2
	k8s.io/utils v0.0.0-20210527160623-6fdb442a123b
	sigs.k8s.io/controller-runtime v0.9.1
)

replace (
	github.com/gardener/gardener-resource-manager/api => github.com/gardener/gardener-resource-manager/api v0.25.0
	github.com/prometheus/client_golang => github.com/prometheus/client_golang v1.11.0 // keep this value in sync with sigs.k8s.io/controller-runtime
	k8s.io/api => k8s.io/api v0.21.2
	k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.21.2
	k8s.io/apimachinery => k8s.io/apimachinery v0.21.2
	k8s.io/apiserver => k8s.io/apiserver v0.21.2
	k8s.io/client-go => k8s.io/client-go v0.21.2
	k8s.io/cluster-bootstrap => k8s.io/cluster-bootstrap v0.21.2
	k8s.io/code-generator => k8s.io/code-generator v0.21.2
	k8s.io/component-base => k8s.io/component-base v0.21.2
	k8s.io/helm => k8s.io/helm v2.13.1+incompatible
	k8s.io/kube-aggregator => k8s.io/kube-aggregator v0.21.2
)
