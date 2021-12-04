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
(define (current-year-string)
  (~t (now) "yyyy"))

(define (current-datetime-string)
  (string-append (~t (now/moment) "yyyy-MM-dd kk:mm:ss X")))
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
