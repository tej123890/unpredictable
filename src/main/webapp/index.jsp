<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NexusShop — Premium E-Commerce</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700;800&display=swap" rel="stylesheet">

<link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>
:root {
    --primary: #07111f;
    --primary-2: #0d1d32;
    --accent: #00d4ff;
    --accent-2: #7c5cff;
    --white: #ffffff;
    --text: #132238;
    --muted: #718096;
    --surface: #f5f8fc;
    --border: rgba(7, 17, 31, 0.08);
    --success: #22c55e;
    --danger: #ff4d67;
    --warning: #f59e0b;
    --radius: 20px;
    --container: 1240px;
    --shadow: 0 15px 45px rgba(7, 17, 31, 0.08);
}

* {
    box-sizing: border-box;
}

html {
    scroll-behavior: smooth;
}

body {
    margin: 0;
    font-family: Inter, sans-serif;
    background: #fff;
    color: var(--text);
    line-height: 1.5;
}

body.no-scroll {
    overflow: hidden;
}

button,
input {
    font: inherit;
}

button {
    cursor: pointer;
}

a {
    text-decoration: none;
    color: inherit;
}

img {
    max-width: 100%;
}

.container {
    width: min(var(--container), calc(100% - 40px));
    margin: auto;
}

/* ================= HEADER ================= */

.topbar {
    background: var(--primary);
    color: white;
    font-size: 13px;
    padding: 8px 0;
}

.topbar-inner {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.topbar span {
    opacity: .8;
}

.topbar strong {
    color: var(--accent);
}

header {
    position: sticky;
    top: 0;
    z-index: 100;
    background: rgba(255,255,255,.9);
    backdrop-filter: blur(20px);
    border-bottom: 1px solid var(--border);
}

.header-main {
    min-height: 78px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 25px;
}

.logo {
    display: flex;
    align-items: center;
    gap: 10px;
    font-family: Poppins, sans-serif;
    font-size: 23px;
    font-weight: 800;
    white-space: nowrap;
}

.logo-mark {
    width: 38px;
    height: 38px;
    border-radius: 12px;
    display: grid;
    place-items: center;
    color: white;
    background: linear-gradient(135deg, var(--accent), var(--accent-2));
    box-shadow: 0 8px 20px rgba(0,212,255,.25);
}

.logo span {
    color: var(--accent-2);
}

.main-nav ul {
    list-style: none;
    display: flex;
    gap: 5px;
    padding: 0;
    margin: 0;
}

.main-nav a {
    display: flex;
    align-items: center;
    gap: 7px;
    padding: 10px 13px;
    border-radius: 10px;
    font-size: 14px;
    font-weight: 600;
    transition: .2s;
}

.main-nav a:hover,
.main-nav a.active {
    color: var(--accent-2);
    background: #f1f4fa;
}

.header-right {
    display: flex;
    align-items: center;
    gap: 10px;
}

.search {
    width: 260px;
    height: 42px;
    display: flex;
    align-items: center;
    gap: 9px;
    padding: 0 13px;
    border: 1px solid var(--border);
    background: #f7f9fc;
    border-radius: 12px;
}

.search:focus-within {
    border-color: var(--accent);
    box-shadow: 0 0 0 4px rgba(0,212,255,.08);
}

.search i {
    color: var(--muted);
}

.search input {
    border: 0;
    outline: 0;
    background: transparent;
    width: 100%;
    font-size: 13px;
}

.header-icon {
    position: relative;
    width: 42px;
    height: 42px;
    display: grid;
    place-items: center;
    border: 1px solid var(--border);
    border-radius: 12px;
    background: white;
    transition: .2s;
}

.header-icon:hover {
    transform: translateY(-2px);
    border-color: var(--accent);
    color: var(--accent-2);
}

.cart-count {
    position: absolute;
    right: -5px;
    top: -5px;
    width: 19px;
    height: 19px;
    border-radius: 50%;
    display: grid;
    place-items: center;
    background: var(--danger);
    color: white;
    font-size: 10px;
    font-weight: 800;
}

.mobile-menu-btn {
    display: none;
    width: 42px;
    height: 42px;
    border: 0;
    border-radius: 12px;
    background: #f3f5f9;
}

/* ================= HERO ================= */

.hero {
    position: relative;
    overflow: hidden;
    min-height: 560px;
    display: flex;
    align-items: center;
    background:
        linear-gradient(100deg, rgba(7,17,31,.98) 10%, rgba(7,17,31,.83) 45%, rgba(7,17,31,.35)),
        url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1800&q=90")
        center/cover;
}

.hero::before {
    content: "";
    position: absolute;
    width: 450px;
    height: 450px;
    right: -130px;
    bottom: -180px;
    background: var(--accent);
    opacity: .12;
    filter: blur(90px);
    border-radius: 50%;
}

.hero-content {
    position: relative;
    z-index: 2;
    max-width: 720px;
    color: white;
}

.hero-label {
    display: inline-flex;
    align-items: center;
    gap: 8px;
    padding: 7px 12px;
    border: 1px solid rgba(255,255,255,.15);
    background: rgba(255,255,255,.08);
    backdrop-filter: blur(10px);
    border-radius: 999px;
    font-size: 12px;
    margin-bottom: 20px;
}

.hero-label i {
    color: var(--accent);
}

.hero h1 {
    font-family: Poppins, sans-serif;
    font-size: clamp(42px, 6vw, 72px);
    line-height: 1.04;
    margin: 0 0 22px;
    letter-spacing: -3px;
}

.hero h1 span {
    background: linear-gradient(90deg, var(--accent), #a58cff);
    -webkit-background-clip: text;
    color: transparent;
}

.hero p {
    max-width: 610px;
    color: rgba(255,255,255,.72);
    font-size: 17px;
    margin: 0 0 30px;
}

.hero-actions {
    display: flex;
    gap: 12px;
    flex-wrap: wrap;
}

.btn {
    border: 0;
    border-radius: 12px;
    padding: 13px 20px;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    gap: 9px;
    font-weight: 700;
    transition: .25s;
}

.btn-primary {
    color: #00131c;
    background: var(--accent);
    box-shadow: 0 10px 30px rgba(0,212,255,.2);
}

.btn-primary:hover {
    transform: translateY(-3px);
    box-shadow: 0 15px 35px rgba(0,212,255,.3);
}

.btn-outline {
    color: white;
    background: rgba(255,255,255,.07);
    border: 1px solid rgba(255,255,255,.2);
}

.btn-outline:hover {
    background: white;
    color: var(--primary);
}

.hero-stats {
    display: flex;
    gap: 35px;
    margin-top: 45px;
}

.hero-stat strong {
    display: block;
    font-size: 22px;
}

.hero-stat span {
    font-size: 12px;
    color: rgba(255,255,255,.55);
}

/* ================= SECTION ================= */

.section {
    padding: 80px 0;
}

.section-head {
    display: flex;
    align-items: end;
    justify-content: space-between;
    gap: 20px;
    margin-bottom: 30px;
}

.section-title small {
    color: var(--accent-2);
    font-weight: 800;
    text-transform: uppercase;
    font-size: 11px;
    letter-spacing: 2px;
}

.section-title h2 {
    margin: 6px 0;
    font-family: Poppins, sans-serif;
    font-size: 32px;
    letter-spacing: -1px;
}

.section-title p {
    color: var(--muted);
    margin: 0;
}

/* ================= CATEGORY ================= */

.categories {
    display: grid;
    grid-template-columns: repeat(6, 1fr);
    gap: 15px;
}

.category-card {
    position: relative;
    padding: 25px 15px;
    text-align: center;
    background: white;
    border: 1px solid var(--border);
    border-radius: var(--radius);
    transition: .25s;
    cursor: pointer;
    overflow: hidden;
}

.category-card::after {
    content: "";
    position: absolute;
    width: 90px;
    height: 90px;
    right: -40px;
    bottom: -45px;
    background: var(--accent);
    opacity: .08;
    border-radius: 50%;
}

.category-card:hover {
    transform: translateY(-7px);
    border-color: rgba(0,212,255,.35);
    box-shadow: var(--shadow);
}

.category-icon {
    width: 58px;
    height: 58px;
    margin: auto;
    display: grid;
    place-items: center;
    border-radius: 17px;
    background: linear-gradient(135deg,#eefcff,#f2efff);
    color: var(--accent-2);
    font-size: 22px;
}

.category-card h4 {
    margin: 14px 0 5px;
    font-size: 14px;
}

.category-card p {
    margin: 0;
    color: var(--muted);
    font-size: 11px;
}

/* ================= PRODUCTS ================= */

.products {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 20px;
}

.product {
    position: relative;
    overflow: hidden;
    background: white;
    border: 1px solid var(--border);
    border-radius: 18px;
    transition: .3s;
}

.product:hover {
    transform: translateY(-6px);
    box-shadow: var(--shadow);
}

.product-image {
    position: relative;
    height: 245px;
    overflow: hidden;
    background: #f5f7fa;
}

.product-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: .5s;
}

.product:hover .product-image img {
    transform: scale(1.07);
}

.product-badge {
    position: absolute;
    top: 13px;
    left: 13px;
    padding: 6px 9px;
    border-radius: 8px;
    background: var(--primary);
    color: white;
    font-size: 10px;
    font-weight: 800;
    z-index: 2;
}

.product-badge.sale {
    background: var(--danger);
}

.product-wishlist {
    position: absolute;
    right: 13px;
    top: 13px;
    width: 36px;
    height: 36px;
    border: 0;
    border-radius: 50%;
    background: rgba(255,255,255,.92);
    display: grid;
    place-items: center;
    z-index: 2;
    transition: .2s;
}

.product-wishlist:hover,
.product-wishlist.active {
    color: var(--danger);
    background: white;
}

.product-info {
    padding: 17px;
}

.product-category {
    color: var(--muted);
    text-transform: uppercase;
    font-size: 9px;
    letter-spacing: 1px;
    font-weight: 700;
}

.product h3 {
    font-size: 15px;
    margin: 7px 0;
}

.product-rating {
    color: #fbbf24;
    font-size: 12px;
}

.product-rating span {
    color: var(--muted);
    margin-left: 4px;
}

.product-bottom {
    margin-top: 15px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.price {
    font-size: 19px;
    font-weight: 800;
}

.old-price {
    color: #a0a9b5;
    text-decoration: line-through;
    font-size: 11px;
    margin-left: 4px;
}

.add-cart {
    width: 39px;
    height: 39px;
    border: 0;
    border-radius: 11px;
    color: white;
    background: var(--primary);
    transition: .2s;
}

.add-cart:hover {
    background: var(--accent-2);
    transform: scale(1.05);
}

.empty-products {
    grid-column: 1/-1;
    text-align: center;
    padding: 60px;
    color: var(--muted);
}

/* ================= PROMO ================= */

.promo {
    background: linear-gradient(135deg,#07111f,#122945);
    border-radius: 25px;
    overflow: hidden;
    color: white;
    display: grid;
    grid-template-columns: 1.05fr .95fr;
    min-height: 400px;
}

.promo-image {
    min-height: 400px;
    background:
        url("https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=90")
        center/cover;
}

.promo-content {
    padding: 55px;
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.promo-label {
    color: var(--accent);
    font-weight: 800;
    text-transform: uppercase;
    letter-spacing: 2px;
    font-size: 11px;
}

.promo h2 {
    font-family: Poppins, sans-serif;
    font-size: 40px;
    line-height: 1.1;
    margin: 12px 0;
}

.promo p {
    color: rgba(255,255,255,.65);
}

.timer {
    display: flex;
    gap: 10px;
    margin: 20px 0;
}

.timer-box {
    min-width: 65px;
    padding: 11px;
    text-align: center;
    background: rgba(255,255,255,.08);
    border: 1px solid rgba(255,255,255,.1);
    border-radius: 12px;
}

.timer-box strong {
    display: block;
    font-size: 20px;
}

.timer-box span {
    color: rgba(255,255,255,.45);
    font-size: 9px;
    text-transform: uppercase;
}

/* ================= TESTIMONIALS ================= */

.testimonials {
    display: grid;
    grid-template-columns: repeat(3,1fr);
    gap: 20px;
}

.testimonial {
    padding: 25px;
    border: 1px solid var(--border);
    border-radius: 18px;
    background: white;
}

.quote {
    color: var(--accent-2);
    font-size: 25px;
}

.testimonial p {
    color: #526174;
    font-size: 14px;
    line-height: 1.8;
}

.stars {
    color: #fbbf24;
    font-size: 12px;
}

.user {
    display: flex;
    gap: 10px;
    align-items: center;
    margin-top: 20px;
}

.user img {
    width: 42px;
    height: 42px;
    object-fit: cover;
    border-radius: 50%;
}

.user strong {
    display: block;
    font-size: 13px;
}

.user span {
    font-size: 11px;
    color: var(--muted);
}

/* ================= NEWSLETTER ================= */

.newsletter {
    position: relative;
    overflow: hidden;
    padding: 60px 30px;
    text-align: center;
    border-radius: 25px;
    color: white;
    background:
        radial-gradient(circle at 20% 20%,rgba(0,212,255,.2),transparent 30%),
        radial-gradient(circle at 80% 80%,rgba(124,92,255,.2),transparent 30%),
        var(--primary);
}

.newsletter h2 {
    font-family: Poppins, sans-serif;
    font-size: 32px;
    margin: 0 0 10px;
}

.newsletter p {
    color: rgba(255,255,255,.6);
}

.newsletter-form {
    max-width: 500px;
    margin: 25px auto 0;
    display: flex;
    padding: 5px;
    border-radius: 14px;
    background: rgba(255,255,255,.08);
}

.newsletter-form input {
    flex: 1;
    min-width: 0;
    border: 0;
    outline: 0;
    background: transparent;
    color: white;
    padding: 12px;
}

.newsletter-form input::placeholder {
    color: rgba(255,255,255,.45);
}

.newsletter-form button {
    border: 0;
    padding: 0 20px;
    border-radius: 10px;
    background: var(--accent);
    font-weight: 800;
}

/* ================= FOOTER ================= */

footer {
    margin-top: 80px;
    padding: 55px 0 25px;
    background: #f6f8fb;
    border-top: 1px solid var(--border);
}

.footer-grid {
    display: grid;
    grid-template-columns: 1.7fr 1fr 1fr 1fr;
    gap: 40px;
}

.footer-logo {
    font-family: Poppins;
    font-size: 22px;
    font-weight: 800;
}

.footer-text {
    max-width: 330px;
    color: var(--muted);
    font-size: 13px;
}

.footer h4 {
    margin: 0 0 15px;
}

.footer a {
    display: block;
    color: var(--muted);
    font-size: 13px;
    margin: 9px 0;
}

.footer a:hover {
    color: var(--accent-2);
}

.socials {
    display: flex;
    gap: 8px;
    margin-top: 18px;
}

.socials a {
    width: 36px;
    height: 36px;
    display: grid;
    place-items: center;
    background: white;
    border: 1px solid var(--border);
    border-radius: 10px;
}

.copyright {
    border-top: 1px solid var(--border);
    margin-top: 40px;
    padding-top: 20px;
    color: var(--muted);
    text-align: center;
    font-size: 11px;
}

/* ================= CART DRAWER ================= */

.overlay {
    position: fixed;
    inset: 0;
    z-index: 200;
    background: rgba(0,0,0,.45);
    opacity: 0;
    visibility: hidden;
    transition: .3s;
}

.overlay.show {
    opacity: 1;
    visibility: visible;
}

.cart-drawer {
    position: fixed;
    top: 0;
    right: -430px;
    z-index: 210;
    width: min(430px,100%);
    height: 100vh;
    background: white;
    box-shadow: -20px 0 60px rgba(0,0,0,.15);
    transition: .35s;
    display: flex;
    flex-direction: column;
}

.cart-drawer.open {
    right: 0;
}

.cart-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 22px;
    border-bottom: 1px solid var(--border);
}

.cart-header h3 {
    margin: 0;
    font-family: Poppins;
}

.close-cart {
    border: 0;
    background: #f2f4f7;
    width: 36px;
    height: 36px;
    border-radius: 10px;
}

.cart-items {
    flex: 1;
    overflow-y: auto;
    padding: 18px;
}

.cart-item {
    display: flex;
    gap: 12px;
    padding: 12px 0;
    border-bottom: 1px solid var(--border);
}

.cart-item img {
    width: 75px;
    height: 75px;
    border-radius: 12px;
    object-fit: cover;
}

.cart-item-info {
    flex: 1;
}

.cart-item-info strong {
    display: block;
    font-size: 13px;
}

.cart-item-info span {
    color: var(--muted);
    font-size: 12px;
}

.cart-remove {
    border: 0;
    background: transparent;
    color: var(--danger);
}

.cart-footer {
    padding: 20px;
    border-top: 1px solid var(--border);
}

.cart-total {
    display: flex;
    justify-content: space-between;
    margin-bottom: 15px;
    font-size: 18px;
    font-weight: 800;
}

.checkout-btn {
    width: 100%;
}

/* ================= MOBILE ================= */

@media(max-width:1100px) {
    .main-nav {
        display: none;
    }

    .mobile-menu-btn {
        display: block;
    }

    .header-main {
        gap: 12px;
    }

    .search {
        width: 220px;
    }

    .categories {
        grid-template-columns: repeat(3,1fr);
    }

    .products {
        grid-template-columns: repeat(3,1fr);
    }
}

@media(max-width:800px) {
    .topbar {
        display: none;
    }

    .header-main {
        min-height: 68px;
    }

    .search {
        display: none;
    }

    .hero {
        min-height: 620px;
    }

    .hero h1 {
        letter-spacing: -2px;
    }

    .hero-stats {
        gap: 20px;
    }

    .categories,
    .products {
        grid-template-columns: repeat(2,1fr);
    }

    .promo {
        grid-template-columns: 1fr;
    }

    .promo-image {
        min-height: 260px;
    }

    .promo-content {
        padding: 35px;
    }

    .testimonials {
        grid-template-columns: 1fr;
    }

    .footer-grid {
        grid-template-columns: repeat(2,1fr);
    }
}

@media(max-width:560px) {
    .container {
        width: min(100% - 28px,var(--container));
    }

    .logo {
        font-size: 19px;
    }

    .logo-mark {
        width: 34px;
        height: 34px;
    }

    .header-icon {
        width: 38px;
        height: 38px;
    }

    .hero {
        min-height: 580px;
    }

    .hero h1 {
        font-size: 40px;
    }

    .hero p {
        font-size: 14px;
    }

    .hero-stats {
        flex-wrap: wrap;
    }

    .section {
        padding: 55px 0;
    }

    .section-head {
        display: block;
    }

    .section-title h2 {
        font-size: 27px;
    }

    .categories {
        grid-template-columns: repeat(2,1fr);
        gap: 10px;
    }

    .category-card {
        padding: 18px 10px;
    }

    .products {
        grid-template-columns: 1fr;
    }

    .product-image {
        height: 270px;
    }

    .promo-content {
        padding: 28px 22px;
    }

    .promo h2 {
        font-size: 31px;
    }

    .timer {
        gap: 5px;
    }

    .timer-box {
        min-width: 58px;
    }

    .newsletter-form {
        flex-direction: column;
        gap: 5px;
        padding: 6px;
    }

    .newsletter-form button {
        height: 44px;
    }

    .footer-grid {
        grid-template-columns: 1fr;
    }
}

/* Mobile navigation */

.mobile-nav {
    display: none;
    background: white;
    border-top: 1px solid var(--border);
    padding: 12px 0;
}

.mobile-nav.open {
    display: block;
}

.mobile-nav a {
    display: block;
    padding: 12px;
    border-radius: 10px;
    font-weight: 600;
}

.mobile-nav a:hover {
    background: var(--surface);
}

/* Toast */

.toast {
    position: fixed;
    left: 50%;
    bottom: 25px;
    z-index: 300;
    transform: translate(-50%,120px);
    padding: 13px 18px;
    border-radius: 12px;
    background: var(--primary);
    color: white;
    font-size: 13px;
    box-shadow: var(--shadow);
    transition: .3s;
}

.toast.show {
    transform: translate(-50%,0);
}
</style>
</head>

<body>

<!-- TOP BAR -->
<div class="topbar">
    <div class="container topbar-inner">
        <span>
            <i class="fa-solid fa-truck-fast"></i>
            Free shipping on orders over $50
        </span>

        <span>
            Premium shopping experience ·
            <strong>24/7 Support</strong>
        </span>
    </div>
</div>

<!-- HEADER -->
<header>

    <div class="container header-main">

        <div style="display:flex;align-items:center;gap:10px">

            <button class="mobile-menu-btn" id="mobileMenuBtn">
                <i class="fa-solid fa-bars"></i>
            </button>

            <a href="#" class="logo">
                <div class="logo-mark">
                    <i class="fa-solid fa-bolt"></i>
                </div>
                Nexus<span>Shop</span>
            </a>

        </div>

        <nav class="main-nav">
            <ul>
                <li><a class="active" href="#"><i class="fa-solid fa-house"></i> Home</a></li>
                <li><a href="#categories"><i class="fa-solid fa-grid-2"></i> Categories</a></li>
                <li><a href="#products"><i class="fa-solid fa-fire"></i> Trending</a></li>
                <li><a href="#deals"><i class="fa-solid fa-bolt"></i> Deals</a></li>
                <li><a href="#about"><i class="fa-solid fa-circle-info"></i> About</a></li>
            </ul>
        </nav>

        <div class="header-right">

            <div class="search">
                <i class="fa-solid fa-magnifying-glass"></i>

                <input
                    type="search"
                    id="searchInput"
                    placeholder="Search products..."
                >
            </div>

            <button class="header-icon" title="Account">
                <i class="fa-regular fa-user"></i>
            </button>

            <button class="header-icon" title="Wishlist">
                <i class="fa-regular fa-heart"></i>
            </button>

            <button class="header-icon" id="cartButton" title="Shopping cart">
                <i class="fa-solid fa-bag-shopping"></i>
                <span class="cart-count" id="cartCount">0</span>
            </button>

        </div>
    </div>

    <!-- MOBILE NAV -->
    <div class="mobile-nav" id="mobileNav">
        <div class="container">
            <a href="#">Home</a>
            <a href="#categories">Categories</a>
            <a href="#products">Trending</a>
            <a href="#deals">Deals</a>
            <a href="#about">About</a>
        </div>
    </div>

</header>

<main>

<!-- HERO -->
<section class="hero">

    <div class="container">

        <div class="hero-content">

            <div class="hero-label">
                <i class="fa-solid fa-sparkles"></i>
                New season · Premium collection
            </div>

            <h1>
                Shop smarter.<br>
                Live <span>better.</span>
            </h1>

            <p>
                Discover premium technology, fashion and lifestyle products
                carefully selected for modern living.
            </p>

            <div class="hero-actions">

                <button class="btn btn-primary" id="shopNow">
                    Explore Collection
                    <i class="fa-solid fa-arrow-right"></i>
                </button>

                <button class="btn btn-outline" id="exploreDeals">
                    View Flash Deals
                </button>

            </div>

            <div class="hero-stats">

                <div class="hero-stat">
                    <strong>10K+</strong>
                    <span>Happy customers</span>
                </div>

                <div class="hero-stat">
                    <strong>500+</strong>
                    <span>Premium products</span>
                </div>

                <div class="hero-stat">
                    <strong>4.9/5</strong>
                    <span>Customer rating</span>
                </div>

            </div>

        </div>

    </div>

</section>

<!-- CATEGORIES -->
<section class="section" id="categories">

    <div class="container">

        <div class="section-head">

            <div class="section-title">
                <small>Explore</small>
                <h2>Shop by category</h2>
                <p>Everything you need, all in one place.</p>
            </div>

        </div>

        <div class="categories" id="categoriesGrid"></div>

    </div>

</section>

<!-- PRODUCTS -->
<section class="section" id="products" style="background:#f7f9fc">

    <div class="container">

        <div class="section-head">

            <div class="section-title">
                <small>Trending now</small>
                <h2>Popular products</h2>
                <p>Our customers' favorite picks this week.</p>
            </div>

            <button class="btn"
                    style="background:white;border:1px solid var(--border)"
                    onclick="resetProducts()">
                View all
                <i class="fa-solid fa-arrow-right"></i>
            </button>

        </div>

        <div class="products" id="productsGrid"></div>

    </div>

</section>

<!-- DEAL -->
<section class="section" id="deals">

    <div class="container">

        <div class="promo">

            <div class="promo-image"></div>

            <div class="promo-content">

                <div class="promo-label">
                    <i class="fa-solid fa-bolt"></i>
                    Limited time offer
                </div>

                <h2>
                    MacBook Air M2.
                    <br>
                    Power meets simplicity.
                </h2>

                <p>
                    Lightweight. Fast. Beautiful.
                    Get premium M2 performance at an exclusive price.
                </p>

                <div class="timer">

                    <div class="timer-box">
                        <strong id="days">00</strong>
                        <span>Days</span>
                    </div>

                    <div class="timer-box">
                        <strong id="hours">00</strong>
                        <span>Hours</span>
                    </div>

                    <div class="timer-box">
                        <strong id="minutes">00</strong>
                        <span>Minutes</span>
                    </div>

                    <div class="timer-box">
                        <strong id="seconds">00</strong>
                        <span>Seconds</span>
                    </div>

                </div>

                <div style="display:flex;align-items:center;gap:12px;margin-bottom:20px">

                    <strong style="font-size:28px">
                        $999
                    </strong>

                    <span style="text-decoration:line-through;color:#8291a4">
                        $1,199
                    </span>

                    <span style="
                        background:#ff4d67;
                        padding:5px 9px;
                        border-radius:7px;
                        font-size:11px;
                        font-weight:800;">
                        -17%
                    </span>

                </div>

                <button class="btn btn-primary" id="buyDeal">
                    Buy now
                    <i class="fa-solid fa-arrow-right"></i>
                </button>

            </div>

        </div>

    </div>

</section>

<!-- TESTIMONIALS -->
<section class="section" id="about">

    <div class="container">

        <div class="section-head">

            <div class="section-title">
                <small>Customer stories</small>
                <h2>Loved by shoppers</h2>
                <p>Real experiences from our community.</p>
            </div>

        </div>

        <div class="testimonials">

            <div class="testimonial">

                <div class="quote">
                    <i class="fa-solid fa-quote-left"></i>
                </div>

                <div class="stars">★★★★★</div>

                <p>
                    "The shopping experience was incredibly smooth.
                    My laptop arrived quickly and the packaging was excellent."
                </p>

                <div class="user">
                    <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80">

                    <div>
                        <strong>Ava Martin</strong>
                        <span>Verified customer</span>
                    </div>
                </div>

            </div>

            <div class="testimonial">

                <div class="quote">
                    <i class="fa-solid fa-quote-left"></i>
                </div>

                <div class="stars">★★★★★</div>

                <p>
                    "Amazing selection and very easy checkout.
                    NexusShop has quickly become my favorite online store."
                </p>

                <div class="user">
                    <img src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80">

                    <div>
                        <strong>Michael Lee</strong>
                        <span>Frequent buyer</span>
                    </div>
                </div>

            </div>

            <div class="testimonial">

                <div class="quote">
                    <i class="fa-solid fa-quote-left"></i>
                </div>

                <div class="stars">★★★★★</div>

                <p>
                    "Great prices, beautiful website and excellent
                    customer support. Highly recommended."
                </p>

                <div class="user">
                    <img src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80">

                    <div>
                        <strong>Sophia Williams</strong>
                        <span>Verified customer</span>
                    </div>
                </div>

            </div>

        </div>

    </div>

</section>

<!-- NEWSLETTER -->
<section class="section">

    <div class="container">

        <div class="newsletter">

            <h2>Get the good stuff first.</h2>

            <p>
                Subscribe for exclusive offers, new arrivals and member-only deals.
            </p>

            <form class="newsletter-form" id="newsletterForm">

                <input
                    type="email"
                    id="newsletterEmail"
                    placeholder="Your email address"
                    required
                >

                <button type="submit">
                    Subscribe
                </button>

            </form>

            <div id="newsletterMessage"
                 style="margin-top:12px;font-size:12px">
            </div>

        </div>

    </div>

</section>

</main>

<!-- FOOTER -->
<footer>

    <div class="container">

        <div class="footer-grid">

            <div>

                <div class="footer-logo">
                    Nexus<span style="color:var(--accent-2)">Shop</span>
                </div>

                <p class="footer-text">
                    A modern shopping destination built around
                    quality products, simple experiences and happy customers.
                </p>

                <div class="socials">
                    <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
                    <a href="#"><i class="fa-brands fa-instagram"></i></a>
                    <a href="#"><i class="fa-brands fa-x-twitter"></i></a>
                    <a href="#"><i class="fa-brands fa-youtube"></i></a>
                </div>

            </div>

            <div class="footer">
                <h4>Shop</h4>
                <a href="#products">Trending</a>
                <a href="#deals">Deals</a>
                <a href="#categories">Categories</a>
                <a href="#">New arrivals</a>
            </div>

            <div class="footer">
                <h4>Company</h4>
                <a href="#about">About us</a>
                <a href="#">Careers</a>
                <a href="#">Press</a>
                <a href="#">Contact</a>
            </div>

            <div class="footer">
                <h4>Support</h4>
                <a href="#">Help center</a>
                <a href="#">Shipping</a>
                <a href="#">Returns</a>
                <a href="#">Privacy</a>
            </div>

        </div>

        <div class="copyright">
            © <span id="year"></span> NexusShop. All rights reserved.
        </div>

    </div>

</footer>

<!-- OVERLAY -->
<div class="overlay" id="overlay"></div>

<!-- CART DRAWER -->
<aside class="cart-drawer" id="cartDrawer">

    <div class="cart-header">

        <h3>Your Cart</h3>

        <button class="close-cart" id="closeCart">
            <i class="fa-solid fa-xmark"></i>
        </button>

    </div>

    <div class="cart-items" id="cartItems">

        <div style="text-align:center;padding:50px 10px;color:var(--muted)">
            <i class="fa-solid fa-bag-shopping"
               style="font-size:35px;margin-bottom:15px;opacity:.3">
            </i>

            <p>Your cart is empty.</p>
        </div>

    </div>

    <div class="cart-footer">

        <div class="cart-total">
            <span>Total</span>
            <span id="cartTotal">$0</span>
        </div>

        <button class="btn btn-primary checkout-btn"
                onclick="checkout()">
            Checkout
            <i class="fa-solid fa-arrow-right"></i>
        </button>

    </div>

</aside>

<div class="toast" id="toast"></div>

<script>

/* ================= DATA ================= */

const CATEGORIES = [
    {
        id: "phones",
        name: "Smartphones",
        icon: "fa-mobile-screen-button",
        description: "Latest devices"
    },
    {
        id: "laptops",
        name: "Laptops",
        icon: "fa-laptop",
        description: "Power & productivity"
    },
    {
        id: "clothing",
        name: "Clothing",
        icon: "fa-shirt",
        description: "Modern fashion"
    },
    {
        id: "gadgets",
        name: "Gadgets",
        icon: "fa-headphones",
        description: "Smart accessories"
    },
    {
        id: "footwear",
        name: "Footwear",
        icon: "fa-shoe-prints",
        description: "Step in style"
    },
    {
        id: "accessories",
        name: "Accessories",
        icon: "fa-watch",
        description: "Complete your look"
    }
];

const PRODUCTS = [

    {
        id: 1,
        title: "iPhone 14 Pro Max",
        price: 1099,
        oldPrice: 1199,
        rating: 5,
        reviews: 128,
        badge: "NEW",
        category: "phones",
        image: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85"
    },

    {
        id: 2,
        title: 'MacBook Pro 14"',
        price: 1999,
        rating: 4,
        reviews: 86,
        category: "laptops",
        image: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85"
    },

    {
        id: 3,
        title: "Apple Watch Series 8",
        price: 349,
        oldPrice: 399,
        rating: 5,
        reviews: 214,
        badge: "-25%",
        category: "accessories",
        image: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=85"
    },

    {
        id: 4,
        title: "Nike Air Max",
        price: 150,
        rating: 4,
        reviews: 53,
        category: "footwear",
        image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
    },

    {
        id: 5,
        title: "Sony A7 IV Camera",
        price: 2499,
        rating: 5,
        reviews: 42,
        badge: "PRO",
        category: "gadgets",
        image: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=85"
    },

    {
        id: 6,
        title: "Premium Perfume",
        price: 120,
        rating: 5,
        reviews: 189,
        category: "accessories",
        image: "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85"
    },

    {
        id: 7,
        title: "Travel Backpack",
        price: 79,
        oldPrice: 99,
        rating: 4,
        reviews: 67,
        badge: "SALE",
        category: "accessories",
        image: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
    },

    {
        id: 8,
        title: "Sony WH-1000XM5",
        price: 399,
        rating: 5,
        reviews: 156,
        category: "gadgets",
        image: "https://images.unsplash.com/photo-1546435770-a3e426bf472b?auto=format&fit=crop&w=700&q=85"
    }

];

/* ================= STATE ================= */

let cart = [];
let wishlist = [];

/* ================= ELEMENTS ================= */

const productsGrid = document.getElementById("productsGrid");
const categoriesGrid = document.getElementById("categoriesGrid");
const cartCount = document.getElementById("cartCount");
const cartDrawer = document.getElementById("cartDrawer");
const overlay = document.getElementById("overlay");
const cartItems = document.getElementById("cartItems");
const cartTotal = document.getElementById("cartTotal");
const searchInput = document.getElementById("searchInput");

/* ================= CATEGORIES ================= */

function renderCategories() {

    categoriesGrid.innerHTML = "";

    CATEGORIES.forEach(category => {

        const card = document.createElement("div");

        card.className = "category-card";

        card.innerHTML = `
            <div class="category-icon">
                <i class="fa-solid ${category.icon}"></i>
            </div>

            <h4>${category.name}</h4>

            <p>${category.description}</p>
        `;

        card.addEventListener("click", () => {

            const filtered = PRODUCTS.filter(
                product => product.category === category.id
            );

            renderProducts(filtered);

            document.getElementById("products")
                .scrollIntoView({
                    behavior: "smooth"
                });
        });

        categoriesGrid.appendChild(card);
    });
}

/* ================= PRODUCTS ================= */

function renderProducts(products) {

    productsGrid.innerHTML = "";

    if (!products.length) {

        productsGrid.innerHTML = `
            <div class="empty-products">
                <i class="fa-solid fa-magnifying-glass"
                   style="font-size:35px;margin-bottom:12px">
                </i>

                <h3>No products found</h3>

                <p>
                    Try searching for something else.
                </p>
            </div>
        `;

        return;
    }

    products.forEach(product => {

        const card = document.createElement("article");

        card.className = "product";

        const isWishlisted =
            wishlist.includes(product.id);

        card.innerHTML = `

            <div class="product-image">

                ${
                    product.badge
                    ?
                    `<div class="product-badge ${product.badge === "SALE" || product.badge.startsWith("-") ? "sale" : ""}">
                        ${product.badge}
                    </div>`
                    :
                    ""
                }

                <button
                    class="product-wishlist ${isWishlisted ? "active" : ""}"
                    data-wishlist="${product.id}"
                    aria-label="Wishlist">

                    <i class="${isWishlisted ? "fa-solid" : "fa-regular"} fa-heart"></i>

                </button>

                <img
                    src="${product.image}"
                    alt="${product.title}"
                    loading="lazy"
                >

            </div>

            <div class="product-info">

                <div class="product-category">
                    ${product.category}
                </div>

                <h3>${product.title}</h3>

                <div class="product-rating">

                    ${"★".repeat(product.rating)}

                    <span>
                        (${product.reviews})
                    </span>

                </div>

                <div class="product-bottom">

                    <div>

                        <span class="price">
                            $${product.price.toLocaleString()}
                        </span>

                        ${
                            product.oldPrice
                            ?
                            `<span class="old-price">
                                $${product.oldPrice.toLocaleString()}
                            </span>`
                            :
                            ""
                        }

                    </div>

                    <button
                        class="add-cart"
                        data-product="${product.id}"
                        aria-label="Add to cart">

                        <i class="fa-solid fa-plus"></i>

                    </button>

                </div>

            </div>
        `;

        productsGrid.appendChild(card);
    });

    /* Add cart */

    document
        .querySelectorAll("[data-product]")
        .forEach(button => {

            button.addEventListener("click", () => {

                const id =
                    Number(button.dataset.product);

                addToCart(id);

            });

        });

    /* Wishlist */

    document
        .querySelectorAll("[data-wishlist]")
        .forEach(button => {

            button.addEventListener("click", () => {

                const id =
                    Number(button.dataset.wishlist);

                toggleWishlist(id);

            });

        });
}

/* ================= CART ================= */

function addToCart(productId) {

    const product =
        PRODUCTS.find(item => item.id === productId);

    if (!product) return;

    const existing =
        cart.find(item => item.id === productId);

    if (existing) {
        existing.quantity++;
    } else {
        cart.push({
            ...product,
            quantity: 1
        });
    }

    updateCart();

    showToast(
        `${product.title} added to cart`
    );
}

function removeFromCart(productId) {

    cart =
        cart.filter(item => item.id !== productId);

    updateCart();
}

function updateCart() {

    const count =
        cart.reduce(
            (total, item) => total + item.quantity,
            0
        );

    cartCount.textContent = count;

    if (!cart.length) {

        cartItems.innerHTML = `
            <div style="
                text-align:center;
                padding:50px 10px;
                color:var(--muted)
            ">

                <i class="fa-solid fa-bag-shopping"
                   style="font-size:38px;opacity:.25">
                </i>

                <p>Your cart is empty.</p>

            </div>
        `;

        cartTotal.textContent = "$0";

        return;
    }

    cartItems.innerHTML = "";

    let total = 0;

    cart.forEach(item => {

        total += item.price * item.quantity;

        const element =
            document.createElement("div");

        element.className = "cart-item";

        element.innerHTML = `

            <img
                src="${item.image}"
                alt="${item.title}"
            >

            <div class="cart-item-info">

                <strong>
                    ${item.title}
                </strong>

                <span>
                    $${item.price.toLocaleString()}
                    × ${item.quantity}
                </span>

            </div>

            <button
                class="cart-remove"
                data-remove="${item.id}">

                <i class="fa-solid fa-trash"></i>

            </button>
        `;

        cartItems.appendChild(element);
    });

    cartTotal.textContent =
        "$" + total.toLocaleString();

    document
        .querySelectorAll("[data-remove]")
        .forEach(button => {

            button.addEventListener("click", () => {

                removeFromCart(
                    Number(button.dataset.remove)
                );

            });

        });
}

/* ================= WISHLIST ================= */

function toggleWishlist(productId) {

    if (wishlist.includes(productId)) {

        wishlist =
            wishlist.filter(id => id !== productId);

        showToast("Removed from wishlist");

    } else {

        wishlist.push(productId);

        showToast("Added to wishlist");

    }

    const query =
        searchInput.value.trim().toLowerCase();

    if (query) {
        searchProducts(query);
    } else {
        renderProducts(PRODUCTS);
    }
}

/* ================= SEARCH ================= */

function searchProducts(query) {

    const value =
        query.trim().toLowerCase();

    if (!value) {

        renderProducts(PRODUCTS);

        return;
    }

    const filtered =
        PRODUCTS.filter(product =>

            product.title
                .toLowerCase()
                .includes(value)

            ||

            product.category
                .toLowerCase()
                .includes(value)

        );

    renderProducts(filtered);
}

searchInput.addEventListener(
    "input",
    event => {
        searchProducts(event.target.value);
    }
);

/* ================= RESET ================= */

function resetProducts() {

    searchInput.value = "";

    renderProducts(PRODUCTS);

}

/* ================= CART DRAWER ================= */

function openCart() {

    cartDrawer.classList.add("open");

    overlay.classList.add("show");

    document.body.classList.add("no-scroll");

}

function closeCart() {

    cartDrawer.classList.remove("open");

    overlay.classList.remove("show");

    document.body.classList.remove("no-scroll");

}

document
    .getElementById("cartButton")
    .addEventListener("click", openCart);

document
    .getElementById("closeCart")
    .addEventListener("click", closeCart);

overlay.addEventListener(
    "click",
    closeCart
);

/* ================= MOBILE MENU ================= */

document
    .getElementById("mobileMenuBtn")
    .addEventListener("click", () => {

        document
            .getElementById("mobileNav")
            .classList.toggle("open");

    });

/* ================= HERO ================= */

document
    .getElementById("shopNow")
    .addEventListener("click", () => {

        document
            .getElementById("products")
            .scrollIntoView({
                behavior: "smooth"
            });

    });

document
    .getElementById("exploreDeals")
    .addEventListener("click", () => {

        document
            .getElementById("deals")
            .scrollIntoView({
                behavior: "smooth"
            });

    });

/* ================= DEAL ================= */

const dealEnd =
    Date.now() +
    (1 * 24 * 60 * 60 * 1000) +
    (8 * 60 * 60 * 1000) +
    (27 * 60 * 1000);

function updateTimer() {

    const difference =
        dealEnd - Date.now();

    if (difference <= 0) {
        return;
    }

    const days =
        Math.floor(
            difference /
            (1000 * 60 * 60 * 24)
        );

    const hours =
        Math.floor(
            (difference %
                (1000 * 60 * 60 * 24))
            /
            (1000 * 60 * 60)
        );

    const minutes =
        Math.floor(
            (difference %
                (1000 * 60 * 60))
            /
            (1000 * 60)
        );

    const seconds =
        Math.floor(
            (difference %
                (1000 * 60))
            /
            1000
        );

    document.getElementById("days")
        .textContent =
        String(days).padStart(2,"0");

    document.getElementById("hours")
        .textContent =
        String(hours).padStart(2,"0");

    document.getElementById("minutes")
        .textContent =
        String(minutes).padStart(2,"0");

    document.getElementById("seconds")
        .textContent =
        String(seconds).padStart(2,"0");
}

setInterval(updateTimer,1000);

updateTimer();

/* ================= DEAL CART ================= */

document
    .getElementById("buyDeal")
    .addEventListener("click", () => {

        showToast(
            "MacBook Air M2 added to cart"
        );

        /* Demo product */

        cart.push({
            id: 999,
            title: "MacBook Air M2",
            price: 999,
            quantity: 1,
            image:
            "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=85"
        });

        updateCart();

        openCart();

    });

/* ================= NEWSLETTER ================= */

document
    .getElementById("newsletterForm")
    .addEventListener("submit", event => {

        event.preventDefault();

        const email =
            document
                .getElementById("newsletterEmail")
                .value
                .trim();

        const message =
            document.getElementById(
                "newsletterMessage"
            );

        if (!email.includes("@")) {

            message.textContent =
                "Please enter a valid email address.";

            message.style.color =
                "#ff8295";

            return;
        }

        message.textContent =
            "✓ You're subscribed! Welcome to NexusShop.";

        message.style.color =
            "#00d4ff";

        event.target.reset();

    });

/* ================= TOAST ================= */

let toastTimer;

function showToast(message) {

    const toast =
        document.getElementById("toast");

    toast.textContent = message;

    toast.classList.add("show");

    clearTimeout(toastTimer);

    toastTimer =
        setTimeout(() => {

            toast.classList.remove("show");

        }, 2200);
}

/* ================= CHECKOUT ================= */

function checkout() {

    if (!cart.length) {

        showToast("Your cart is empty");

        return;
    }

    showToast(
        "Checkout is ready — connect your payment gateway."
    );
}

/* ================= INIT ================= */

document.getElementById("year")
    .textContent =
    new Date().getFullYear();

renderCategories();

renderProducts(PRODUCTS);

updateCart();

</script>

</body>
</html>
