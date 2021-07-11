#lang racket
(require  racket/include
          racket/require
          txexpr 
          gregor 
          gregor/time
          pollen/decode
          pollen/tag
          pollen/file
          pollen/pagetree
          sugar
          scribble/base
          racket/path
          "settings.rkt")
          ;;; hyphenate

(require (only-in racket/base environment-variables? path->string ))

(provide (all-from-out "settings.rkt"))

(provide (all-defined-out))
 
(module setup racket/base
  (provide (all-defined-out))
  (define poly-targets '(html txt)))

;; --- date & time
;; https://docs.racket-lang.org/gregor/time-format.html
(define (print-year)
  (~t (now) "yyyy"))

(define (print-datetime)
  (string-append (~t (now/moment) "yyyy-MM-dd kk:mm:ss") " UTC" 
    (let ([x (~t (now/moment) "X")])
      (if (or (eq? x "Z") (eq? x "Z "))
        "+00"
        x))))
;; ---

(define (heading . elements)
  (txexpr 'h2 empty elements))
 
(define (emph . elements)
  (txexpr 'strong empty elements))

(define (hyperlink url elements)
  `(a [[href ,url]] ,elements))

(define (relative-source-of-file file) (get-source file))

(define (my-print-pagetree) 
  (pagetree->list (current-pagetree)))

(define (lz) "◊")
