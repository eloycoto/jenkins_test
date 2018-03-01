package gink_example_test

import (
	"testing"

	. "github.com/onsi/ginkgo"
	"github.com/onsi/ginkgo/reporters"
	. "github.com/onsi/gomega"
)

func TestGinkExample(t *testing.T) {
	RegisterFailHandler(Fail)
	junitReporter := reporters.NewJUnitReporter("junit.xml")
	RunSpecsWithDefaultAndCustomReporters(t, "Foo Suite", []Reporter{junitReporter})
}

var _ = BeforeSuite(func() {
	return
})

var _ = Describe("MyNewTest", func() {

	It("Test1", func() {
		Expect(true).To(BeTrue())
	})

	It("Test1", func() {
		Expect(false).To(BeTrue(), "Failed to build this one")
	})
})
