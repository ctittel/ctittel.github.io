#lang racket
(provide (all-defined-out))

(define (debug-mode) (if (eq? (getenv "DEBUG") #f ) #f #t))

(define (website-name) "ctittel.com")

(define (baseurl) 
    (if (debug-mode) 
        (path->string (find-system-path 'orig-dir)) ;(current-directory)  
        "https://ctittel.com"))
