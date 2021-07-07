#lang racket
(require  racket/include
          racket/require
          txexpr 
          gregor 
          gregor/time
          pollen/decode
          pollen/tag
          pollen/file
          sugar
          scribble/base
          racket/path
          "settings.rkt")
          ;;; hyphenate

(require (only-in racket/base environment-variables? ))

(provide (all-from-out "settings.rkt"))

;;; (include "settings.rkt")

(provide (all-defined-out))
 
(module setup racket/base
  (provide (all-defined-out))
  (define poly-targets '(html txt)))

(define (print-year)
  (~t (now) "yyyy"))

;; https://docs.racket-lang.org/gregor/time-format.html
(define (print-datetime)
  (~t (now/moment) "yyyy-MM-dd kk:mm:ss z"))

(define (heading . elements)
  (txexpr 'h2 empty elements))
 
(define (emph . elements)
  (txexpr 'strong empty elements))

(define (hyperlink url elements)
  `(a [[href ,url]] ,elements))

(define (test) 
    (if (environment-variables? "DEBUG") "it is set" "Not set"))
