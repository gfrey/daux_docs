---
title: Introduction
author: Gereon Frey
keywords: "introduction, doc"
---

Some stuff related to the introduction. And some examples on code rendering and quoting.

	# some go code
	func foo() error {
		return fmt.Errorf("this failed")
	}

While go is nice and dandy, it's not everyone's darling. Let's use python:

```python
def bar():
	raise Exception("no foo, was missing")
```

How about some scheme?

```scheme
(defun foo (a b c)
	(lambda (x y)
		(+ a x y))(b c))
```

And to quote someone:

> `cat -v` is considered harmful
