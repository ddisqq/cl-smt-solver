;; Copyright (c) 2024-2026 Parkian Company LLC. All rights reserved.
;; SPDX-License-Identifier: Apache-2.0

(in-package #:cl-smt-solver)

;;; Core types for cl-smt-solver
(deftype cl-smt-solver-id () '(unsigned-byte 64))
(deftype cl-smt-solver-status () '(member :ready :active :error :shutdown))
