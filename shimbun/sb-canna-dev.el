;;; sb-canna-dev.el --- shimbun backend for canna-dev ML archive

;; Copyright (C) 2003 NAKAJIMA Mikio <minakaji@namazu.org>

;; Author: NAKAJIMA Mikio <minakaji@namazu.org>
;; Keywords: news

;; This file is a part of shimbun.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; if not, you can either send email to this
;; program's maintainer or write to: The Free Software Foundation,
;; Inc.; 59 Temple Place, Suite 330; Boston, MA 02111-1307, USA.

;;; Commentary:

;;; Code:

(require 'shimbun)
(require 'sb-mailman)

(luna-define-class shimbun-canna-dev (shimbun-mailman) ())

(defvar shimbun-canna-dev-url "http://lists.sourceforge.jp/pipermail/canna-dev")

(defvar shimbun-canna-dev-groups '("main"))

(luna-define-method shimbun-index-url ((shimbun shimbun-canna-dev))
  shimbun-canna-dev-url)

;;(luna-define-method shimbun-reply-to ((shimbun shimbun-canna-dev))
;;  "canna-dev@lists.sourceforge.jp")

(provide 'sb-canna-dev)
;;; sb-canna-dev.el ends here
