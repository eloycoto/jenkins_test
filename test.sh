#!/bin/bash

cat << EOF > junit.xml
<?xml version="1.0" encoding="UTF-8"?>
  <testsuite tests="3" failures="1" time="0.000801622">
      <testcase name="K8Spolicies99 should support a &#39;default-deny&#39; policy [Feature:NetworkPolicy]" classname="Foo Suite"></testcase>
      <testcase name="K8Spolicies99 99Test2" classname="Foo Suite"></testcase>
      <testcase name="K8Spolicies Test1" classname="Foo Suite" time="0.000554681">
          <failure type="Failure">/home/ecoto/.go/src/github.com/eloycoto/gink_example/gink_example_suite_test.go:36&#xA;Expected&#xA;    &lt;bool&gt;: true&#xA;to be false&#xA;/home/ecoto/.go/src/github.com/eloycoto/gink_example/gink_example_suite_test.go:35</failure>
      </testcase>
  </testsuite>
EOF
