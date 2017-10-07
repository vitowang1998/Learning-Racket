#lang racket
; Questions from "How to Design Programs"

#| "Company XYZ & Co. pays all its employees $12 per hour.
    A typical employee works between 20 and 65 hours per week.
    Develop a program that determines the wage of an employee from the number of hours of work."

    The copyright® of this question belongs to the writer of "How to Design Programs"
|#

(define (calculateSalary t)
  (* t 12))


#| "Utopia's tax accountants always use programs that compute income taxes
    even though the tax rate is a solid, never-changing 15%.
    Define the program tax, which determines the tax on the gross pay."

    The copyright® of this question belongs to the writer of "How to Design Programs"
|#

(define (calculateTaxAmount income)
  (* income 0.15))


#| "An old-style movie theater has a simple profit function. Each customer pays $5 per ticket.
    Every performance costs the theater $20, plus $.50 per attendee.
    Develop the function total-profit. It consumes the number of attendees (of a show) and
    produces how much income the attendees produce."

    The copyright® of this question belongs to the writer of "How to Design Programs"
|#

; Note that the value of the theater's income could be negative (negative income)
; Income = 5 * number of people - 0.5 number of people - 20
; Income = 4.5 * number - 20
(define (calculateIncome number)
  (- (* 4.5 number) 20))

; Test
(calculateIncome 5)
(calculateIncome 2)
(calculateIncome 100)
