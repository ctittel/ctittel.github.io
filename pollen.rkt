#lang racket/base
(require  txexpr 
          gregor 
          gregor/time
          pollen/decode
          pollen/tag
          pollen/file
          sugar
          scribble/base
          racket/path)
          ;;; hyphenate
(provide (all-defined-out))
 
(module setup racket/base
  (provide (all-defined-out))
  (define poly-targets '(html txt)))
 
(define (baseurl) "https://ctittel.com")

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
