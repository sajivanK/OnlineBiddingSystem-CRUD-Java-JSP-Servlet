document.addEventListener('DOMContentLoaded', function () {
    // Initialize the slider
    initSlider();  
});




let currentIndex = 0;
const visibleCards = 4; // Show 4 cards at a time
const cards = document.querySelectorAll('.card');
const totalCards = cards.length;
const cardWidth = cards[0].offsetWidth;
const margin = 20; // Space between cards
const carouselItems = document.querySelector('.carousel-items');

// Adjust carousel-items width based on number of cards
carouselItems.style.width = `${(cardWidth + margin) * totalCards}px`;

function slideLeft() {
    if (currentIndex > 0) {
        currentIndex--;
    } else {
        currentIndex = totalCards - visibleCards;
    }
    updateCarousel();
}

function slideRight() {
    if (currentIndex < totalCards - visibleCards) {
        currentIndex++;
    } else {
        currentIndex = 0;
    }
    updateCarousel();
}

function updateCarousel() {
    const translateX = -currentIndex * (cardWidth + margin);
    carouselItems.style.transform = `translateX(${translateX}px)`;
}

// Auto-slide every 5 seconds (optional)
setInterval(slideRight, 5000);










// Initialize Slider function to set up the slider and event listeners
function initSlider() {
    const images = document.querySelectorAll('.slider-image');
    let currentImageIndex = 0;

    // Show the first image
    images[currentImageIndex].classList.add('active');

    // Event listeners for the "Next" and "Previous" buttons
    document.getElementById('next').addEventListener('click', function() {
        showNextImage(images);
    });

    document.getElementById('prev').addEventListener('click', function() {
        showPreviousImage(images);
    });

    // Event listeners for thumbnail clicks
    document.querySelectorAll('.thumbnail').forEach((thumbnail, index) => {
        thumbnail.addEventListener('click', function() {
            showImageByIndex(images, index);
        });
    });

    // Auto-slide every 5 seconds
    autoSlide(images, 5000);
}

// Show next image
function showNextImage(images) {
    let currentImageIndex = Array.from(images).findIndex(image => image.classList.contains('active'));
    images[currentImageIndex].classList.remove('active');

    currentImageIndex = (currentImageIndex + 1) % images.length;
    images[currentImageIndex].classList.add('active');
}

// Show previous image
function showPreviousImage(images) {
    let currentImageIndex = Array.from(images).findIndex(image => image.classList.contains('active'));
    images[currentImageIndex].classList.remove('active');

    currentImageIndex = (currentImageIndex - 1 + images.length) % images.length;
    images[currentImageIndex].classList.add('active');
}

// Show a specific image by index when clicking on a thumbnail
function showImageByIndex(images, index) {
    images.forEach(image => image.classList.remove('active'));
    images[index].classList.add('active');
}

// Auto-slide function
function autoSlide(images, interval) {
    setInterval(function() {
        showNextImage(images);
    }, interval);
}

// Buy Now function (Example: redirect to checkout)
document.getElementById('buy-now').addEventListener('click', function() {
    buyNow();
});

function buyNow() {
    // Redirect to a checkout page or add logic to handle purchase
    window.location.href = "checkout.html";
}
