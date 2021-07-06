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

(define (get-date)
  (date->iso8601 (today)))

(define (get-time)
  (time->iso8601 (current-time)))

(define (get-timezone)
  (current-timezone))
  ;;; (datetime->iso8601 (now))
 
;;; (set! date-display-format 'iso-8601)

;;; (define (get-time)
;;;   (date->string (current-date) (current-seconds)))

(define (heading . elements)
  (txexpr 'h2 empty elements))
 
(define (emph . elements)
  (txexpr 'strong empty elements))

(define (hyperlink url elements)
  `(a [[href ,url]] ,elements))
