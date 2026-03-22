/**
 * Modern Toast Notification System
 * Handles showing toasts and auto-detecting success/error parameters in URLs.
 */
(function() {
    window.Toast = {
        /**
         * Create and display a toast
         * @param {string} type - 'success', 'error', 'info', 'warning'
         * @param {string} title - Title of the toast
         * @param {string} message - Content message
         * @param {number} duration - Auto-hide delay (ms)
         */
        show: function(type = 'info', title = '', message = '', duration = 5000) {
            let container = document.getElementById('toast-container');
            if (!container) {
                container = document.createElement('div');
                container.id = 'toast-container';
                document.body.appendChild(container);
            }

            const toast = document.createElement('div');
            toast.className = `toast toast-${type}`;
            
            const icons = {
                success: '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"/><polyline points="22 4 12 14.01 9 11.01"/></svg>',
                error: '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"/><line x1="15" y1="9" x2="9" y2="15"/><line x1="9" y1="9" x2="15" y2="15"/></svg>',
                info: '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"/><line x1="12" y1="16" x2="12" y2="12"/><line x1="12" y1="8" x2="12.01" y2="8"/></svg>',
                warning: '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M10.29 3.86L1.82 18a2 2 0 0 0 1.71 3h16.94a2 2 0 0 0 1.71-3L13.71 3.86a2 2 0 0 0-3.42 0z"/><line x1="12" y1="9" x2="12" y2="13"/><line x1="12" y1="17" x2="12.01" y2="17"/></svg>'
            };

            const typeTitle = title || type.charAt(0).toUpperCase() + type.slice(1);

            toast.innerHTML = `
                <div class="toast-icon">
                    ${icons[type] || icons.info}
                </div>
                <div class="toast-content">
                    <div class="toast-title">${typeTitle}</div>
                    <div class="toast-message">${message}</div>
                </div>
                <button class="toast-close" title="Close Notification">
                    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><line x1="18" y1="6" x2="6" y2="18"/><line x1="6" y1="6" x2="18" y2="18"/></svg>
                </button>
            `;

            container.appendChild(toast);

            // Add show class after a tiny delay for animation
            setTimeout(() => toast.classList.add('show'), 10);

            const removeToast = () => {
                toast.classList.remove('show');
                toast.classList.add('hide');
                setTimeout(() => {
                    if (toast.parentNode) toast.parentNode.removeChild(toast);
                }, 500);
            };

            // Close button listener
            toast.querySelector('.toast-close').addEventListener('click', removeToast);

            // Auto-hide
            if (duration > 0) {
                setTimeout(removeToast, duration);
            }
        },

        success: function(message, title = 'Successfully Completed', duration = 5000) { this.show('success', title, message, duration); },
        error:   function(message, title = 'Error Encountered', duration = 5000) { this.show('error', title, message, duration); },
        info:    function(message, title = 'System Note', duration = 5000) { this.show('info', title, message, duration); },
        warning: function(message, title = 'Incomplete Action', duration = 5000) { this.show('warning', title, message, duration); },

        /**
         * Automatically check the URL for status/error indicators
         */
        checkUrl: function() {
            const urlParams = new URLSearchParams(window.location.search);
            
            // Check status=success
            if (urlParams.get('status') === 'success') {
                const msg = urlParams.get('message') || 'The operation was completed successfully.';
                this.success(msg);
            } 
            // Check for explicit error parameter
            else if (urlParams.get('error')) {
                const msg = urlParams.get('error');
                this.error(msg);
            }
            // Check for message/toast parameter independently
            else if (urlParams.get('toast')) {
                const msg = urlParams.get('toast');
                this.info(msg);
            }

            // Clean up URL if needed (optional - avoids repeated toasts on refresh)
            // history.replaceState(null, '', window.location.pathname + window.location.hash);
        }
    };

    // Auto-check on load
    document.addEventListener('DOMContentLoaded', () => {
        window.Toast.checkUrl();
    });
})();
