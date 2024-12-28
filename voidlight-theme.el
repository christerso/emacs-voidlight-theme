;;; voidlight-theme.el --- Minimal dark theme with warm tones and a subdued aesthetic

;; A dark Emacs theme emphasizing readability with subtle highlights and subdued tones.
;; Includes a pure black background, warm and calm colors for syntax highlighting,
;; and a cohesive style with a focus on simplicity and clarity.

(deftheme voidlight "A minimal dark theme with subdued tones for comfortable coding.")

(let* ((class '((class color) (min-colors 89)))
       ;; Core colors
       (background "#000000") ;; Pure black background for minimal distraction
       (current-line "#1a1a1a") ;; Dark gray for the current line to provide subtle focus
       (block-background "#222222") ;; Slightly lighter gray for code blocks
       (selection "#2b3a4c") ;; Blue-gray for selected text
       (foreground "#c5c8ce") ;; Soft light gray for main text
       (comment "#5e6a82") ;; Muted blue-gray for comments to keep them subtle
       (header-lighter "#6b8b74") ;; Slightly lighter gray with a hint of green for headers
       ;; Highlight colors
       (red "#b5645d") ;; Muted red for errors
       (orange "#d98e1d") ;; Warm orange for keywords, prompts, and important elements
       (blue "#5d89c7") ;; Calm blue for constants
       (function-blue "#6b99d2") ;; Slightly lighter and warmer blue for function names
       (warm-amber "#d7975a") ;; Warm amber for variables
       (magenta "#b48ead") ;; Muted magenta for occasional decorative highlights
       (darker-gray "#70757a") ;; Slightly darker gray for strings
       (gray "#9ca0a4") ;; Subdued gray for documentation and secondary elements
       (subdued-white "#bfbfbf")) ;; Subdued white for links and buttons

  (custom-theme-set-faces
   'voidlight
   ;; Default text and background
   `(default ((,class (:foreground ,foreground :background ,background))))
   ;; Strong text styling
   `(bold ((,class (:weight bold))))
   `(italic ((,class (:slant italic))))
   `(underline ((,class (:underline t))))

   ;; Syntax highlighting
   `(font-lock-builtin-face ((,class (:foreground ,orange :background nil)))) ;; Built-in keywords
   `(font-lock-comment-face ((,class (:foreground ,comment :background nil)))) ;; Comments
   `(font-lock-constant-face ((,class (:foreground ,blue :background nil)))) ;; Constants
   `(font-lock-function-name-face ((,class (:foreground ,function-blue :background nil)))) ;; Function names with subtle distinction
   `(font-lock-keyword-face ((,class (:foreground ,orange :background nil)))) ;; Keywords
   `(font-lock-string-face ((,class (:foreground ,darker-gray :background nil)))) ;; Strings, slightly darker for subtlety
   `(font-lock-variable-name-face ((,class (:foreground ,warm-amber :background nil)))) ;; Variables
   `(font-lock-type-face ((,class (:foreground ,blue :background nil)))) ;; Class names and types
   `(font-lock-preprocessor-face ((,class (:foreground ,header-lighter :background nil)))) ;; Includes and preprocessor directives
   `(font-lock-doc-face ((,class (:foreground ,gray :background nil)))) ;; Documentation strings

   ;; Links and buttons
   `(link ((,class (:foreground ,subdued-white :underline t :background nil)))) ;; Subdued white for links
   `(button ((,class (:foreground ,subdued-white :background nil :underline nil)))) ;; Subdued white for buttons

   ;; UI Elements
   `(region ((,class (:background ,selection :foreground nil)))) ;; Blue-gray for selected text
   `(highlight ((,class (:background ,current-line :foreground nil)))) ;; Subtle highlight for the current line
   `(cursor ((,class (:background ,orange)))) ;; Cursor
   ;; Mode-line styling
   `(mode-line ((,class (:foreground ,foreground :background ,current-line :box nil))))
   `(mode-line-inactive ((,class (:foreground ,comment :background ,current-line :box nil))))
   `(minibuffer-prompt ((,class (:foreground ,orange)))) ;; Orange for prompt
   `(fringe ((,class (:background ,background)))) ;; Gutter
   `(linum ((,class (:foreground ,comment :background ,background)))) ;; Line numbers

   ;; Feedback and errors
   `(success ((,class (:foreground ,gray :background nil)))) ;; Success messages
   `(warning ((,class (:foreground ,orange :background nil)))) ;; Warnings
   `(error ((,class (:foreground ,red :background nil)))))) ;; Errors

;;;###autoload
(when (and (boundp 'custom-theme-load-path)
           load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'voidlight)

;;; voidlight-theme.el ends here
