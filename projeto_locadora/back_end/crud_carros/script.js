document.addEventListener('DOMContentLoaded', function() {
    const notification = document.querySelector('.notification');
    if (notification) {
        notification.style.display = 'block';
        setTimeout(function() {
            notification.style.display = 'none';
        }, 5000);
    }
});