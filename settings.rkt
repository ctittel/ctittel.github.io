#lang racket
(provide (all-defined-out))

(define (debug-mode) (if (eq? (getenv "DEBUG") #f ) #f #t))

(define (website-name) "ctittel.com")

(define (baseurl) (if (debug-mode) (current-directory)  "https://ctittel.com"))

(define (nav-sites) (list "test1" "test2"))
