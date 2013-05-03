;;; http-status-codes.el --- explains the meaning of a HTTP status code or phrase
;;
;; This file was automatically generated by
;; https://github.com/andreineculau/know-your-http-well
;; based on the template of Ruslan Spivak
;;
;; Copyright (C) 2011  Ruslan Spivak
;;
;; Author: Ruslan Spivak <ruslan.spivak@gmail.com>
;; URL: http://github.com/rspivak/httpcode.el
;; Version: 0.1
;;
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 2 of
;; the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be
;; useful, but WITHOUT ANY WARRANTY; without even the implied
;; warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
;; PURPOSE.  See the GNU General Public License for more details.
;;
;;; Commentary:
;;
;; Explain the meaning of a HTTP status code. Copy httpcode.el to your
;; load-path and add to your .emacs:
;;
;;   (require 'http-status-codes)
;;
;; Then run it with M-x http-status-code
;;
;;; Code goes here:

(defconst http-status
  '({{ HTTP_STATUS }}))

;;;###autoload
(defun http-status-code (status)
  "Display the meaning of a HTTP status code or phrase"
  (interactive "sEnter HTTP status code or phrase: ")
  (let* ((uppercased-status (upcase status))
        (found (assoc uppercased-status http-status)))
    (if found
        (let* ((status-code (car found))
               (status-code-attrib (cdr found))
               (phrase (car (car status-code-attrib)))
               (description (car (cdr (car status-code-attrib)))))
          (message
           "%s - HTTP status\n%s\n%s"
           status-code phrase description))
      (message "%s - HTTP status\nUNKNOWN" uppercased-status))
    ))

(provide 'http-status-codes)

;;; http-status-codes.el ends here
