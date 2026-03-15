;; Copyright (c) 2024-2026 Parkian Company LLC. All rights reserved.
;; SPDX-License-Identifier: Apache-2.0

(in-package #:cl-smt-solver)

(define-condition cl-smt-solver-error (error)
  ((message :initarg :message :reader cl-smt-solver-error-message))
  (:report (lambda (condition stream)
             (format stream "cl-smt-solver error: ~A" (cl-smt-solver-error-message condition)))))
