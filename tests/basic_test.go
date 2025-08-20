package tests

import "testing"

func TestSomething(t *testing.T) {
	result := 2 + 2
	if result != 4 {
		t.Errorf("ожидали 4, получили %d", result)
	}
}
