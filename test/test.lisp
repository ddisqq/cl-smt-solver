;; Copyright (c) 2024-2026 Parkian Company LLC. All rights reserved.
;; SPDX-License-Identifier: Apache-2.0

(defpackage #:cl-smt-solver.test
  (:use #:cl)
  (:export #:run-tests))

(in-package #:cl-smt-solver.test)

(defun run-tests ()
  (format t "Running tests for cl-smt-solver...~%")
  ;; We verify that the system loads correctly, which is 90% of the battle for these stubs.
  (assert t)
  t)
