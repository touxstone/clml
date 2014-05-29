(defpackage :decision-tree
  (:use :cl
	:hjs.learn.read-data
	:hjs.util.matrix)
  (:export  
   #:make-decision-tree
   #:make-regression-tree
   #:print-decision-tree
   #:print-regression-tree
   #:predict-decision-tree
   #:predict-regression-tree
   #:decision-tree-validation
   #:regression-tree-validation
   #:delta-variance
   #:delta-entropy
   #:delta-gini
   #:split
   #:whole-row-numbers-list
   #:variance
   #:mean
   #:entropy
   #:gini-index
   #:sum-up-results
   #:make-split-predicate
   #:total
   #:column-name->column-number
   #:sum-up
   #:make-variable-index-hash))

(defpackage :random-forest
  (:use :cl
	:hjs.learn.read-data
	:decision-tree)
  (:import-from :decision-tree 
		#:make-variable-index-hash
		#:sum-up
		#:column-name->column-number
		#:total
		#:make-split-predicate
		#:sum-up-results
		#:gini-index
		#:entropy
		#:mean
		#:variance
		#:whole-row-numbers-list
		#:split
		#:delta-gini
		#:delta-entropy
		#:delta-variance)
  (:export  
   #:make-random-forest
   #:make-regression-forest
   #:predict-forest
   #:importance
   #:predict-regression-forest
   #:forest-validation
   #:regression-forest-validation))
