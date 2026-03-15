;; Copyright (c) 2024-2026 Parkian Company LLC. All rights reserved.
;; SPDX-License-Identifier: BSD-3-Clause

;;;; cl-smt-solver.asd - Z3-style SMT constraint solver in pure Common Lisp
;;;;
;;;; Copyright (c) 2025
;;;; License: MIT

(asdf:defsystem #:"cl-smt-solver"
  :description "Pure Common Lisp SMT solver with Boolean, integer, and bitvector theories"
  :version "0.1.0"
  :author ""
  :license "Apache-2.0"
  :depends-on ()
  :serial t
  :components ((:file "package")
               (:module "src"
                :components ((:file "package")
                             (:file "conditions" :depends-on ("package"))
                             (:file "types" :depends-on ("package"))
                             (:file "cl-smt-solver" :depends-on ("package" "conditions" "types"))))))
  :in-order-to ((asdf:test-op (test-op "cl-smt-solver/test"))))

(asdf:defsystem #:"cl-smt-solver/test"
  :description "Tests for cl-smt-solver"
  :depends-on ("cl-smt-solver")
  :components ((:module "test"
                :components ((:file "test-smt"))))
  :perform (asdf:test-op (o c)
                    (let ((result (uiop:symbol-call :cl-smt-solver.test :run-tests)))
                      (unless result
                        (error "Tests failed")))))
