<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en" class="scroll-smooth">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Clinix | Advanced Learning Management</title>
        <script src="https://cdn.tailwindcss.com"></script>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap"
            rel="stylesheet">
        <script defer src="https://unpkg.com/lucide@latest"></script>
        <style>
            body {
                font-family: 'Poppins', sans-serif;
            }

            .glass {
                background: rgba(255, 255, 255, 0.85);
                backdrop-filter: blur(20px);
            }

            .primary-gradient {
                background: linear-gradient(135deg, #12876d 0%, #0b5948 100%);
            }

            .emerald-glow {
                filter: drop-shadow(0 0 15px rgba(18, 135, 109, 0.2));
            }
        </style>
    </head>

    <body class="bg-white text-slate-900 overflow-x-hidden">

        <!-- Fixed Navbar -->
        <div class="fixed top-0 left-0 right-0 z-50 flex justify-center px-4 pt-6">
            <nav
                class="max-w-7xl w-full glass border border-emerald-100 rounded-3xl px-8 py-4 flex items-center justify-between shadow-2xl shadow-emerald-900/5">
                <div class="flex items-center gap-3">
                    <div
                        class="w-10 h-10 bg-[#12876d] rounded-2xl flex items-center justify-center rotate-3 shadow-lg shadow-emerald-500/20">
                        <i data-lucide="graduation-cap" class="w-6 h-6 text-white text-emerald-100"></i>
                    </div>
                    <span class="text-xl font-black text-[#12876d] tracking-tighter">Clinix</span>
                </div>

                <div class="hidden md:flex items-center gap-10">
                    <a href="#hero"
                        class="group relative text-[#12876d] font-bold text-sm tracking-tight overflow-hidden py-1">
                        Home
                        <span
                            class="absolute bottom-0 left-0 w-full h-0.5 bg-[#12876d] transform scale-x-100 origin-left transition-transform duration-300"></span>
                    </a>
                    <a href="#features"
                        class="group relative text-slate-500 font-semibold text-sm hover:text-[#12876d] transition-colors py-1">
                        Courses
                        <span
                            class="absolute bottom-0 left-0 w-full h-0.5 bg-[#12876d] transform scale-x-0 group-hover:scale-x-100 origin-left transition-transform duration-300"></span>
                    </a>
                    <a href="#about"
                        class="group relative text-slate-500 font-semibold text-sm hover:text-[#12876d] transition-colors py-1">
                        About
                        <span
                            class="absolute bottom-0 left-0 w-full h-0.5 bg-[#12876d] transform scale-x-0 group-hover:scale-x-100 origin-left transition-transform duration-300"></span>
                    </a>
                    <a href="#faq"
                        class="group relative text-slate-500 font-semibold text-sm hover:text-[#12876d] transition-colors py-1">
                        Testimonials
                        <span
                            class="absolute bottom-0 left-0 w-full h-0.5 bg-[#12876d] transform scale-x-0 group-hover:scale-x-100 origin-left transition-transform duration-300"></span>
                    </a>
                </div>

                <div class="flex items-center gap-6">
                    <a href="login.jsp" class="text-slate-600 font-bold text-sm hover:text-[#12876d] transition">Sign
                        In</a>
                    <a href="signup.jsp"
                        class="px-8 py-3 bg-[#12876d] text-white rounded-2xl font-bold text-sm hover:bg-[#0b5948] transition shadow-lg shadow-emerald-500/20">
                        Get Started
                    </a>
                </div>
            </nav>
        </div>

        <!-- Hero Section -->
        <section id="hero" class="relative pt-40 pb-32 overflow-hidden">
            <!-- Background Elements -->
            <div class="absolute top-0 right-0 w-1/3 h-full bg-emerald-50/30 -z-10 rounded-l-[120px]"></div>
            <div class="absolute -top-24 -left-24 w-96 h-96 bg-emerald-50/50 rounded-full blur-[100px] -z-10"></div>

            <div class="max-w-7xl mx-auto px-4">
                <div class="flex flex-col lg:flex-row items-center gap-20">

                    <!-- Hero Content -->
                    <div class="flex-1 space-y-10 animate-in fade-in slide-in-from-left duration-1000">
                        <div class="space-y-6">
                            <span
                                class="inline-flex items-center gap-2 px-4 py-1.5 bg-emerald-100/50 text-[#12876d] rounded-full font-bold text-xs tracking-widest uppercase">
                                <span class="w-2 h-2 bg-[#12876d] rounded-full animate-pulse"></span>
                                Revolutionizing Education
                            </span>
                            <h1 class="text-6xl lg:text-7xl font-black text-slate-900 leading-[1.05] tracking-tight">
                                Unlock Your <br />
                                <span class="text-[#12876d] italic">Full Potential</span> <br />
                                with Clinix.
                            </h1>
                            <p class="text-xl text-slate-500 font-medium leading-relaxed max-w-xl opacity-90">
                                The ultimate learning management system designed for modern students. Experience a
                                borderless, collaborative, and AI-powered educational journey.
                            </p>
                        </div>

                        <div class="flex flex-col sm:flex-row items-center gap-8">
                            <a href="signup.jsp"
                                class="w-full sm:w-auto px-12 py-5 bg-[#12876d] text-white rounded-2xl font-black text-lg hover:bg-[#0b5948] transition-all hover:translate-y-[-4px] hover:shadow-2xl shadow-xl shadow-emerald-500/20 flex items-center justify-center gap-3 group">
                                Start Learning <i data-lucide="arrow-right"
                                    class="w-6 h-6 group-hover:translate-x-2 transition-transform"></i>
                            </a>
                            <button class="flex items-center gap-4 group">
                                <div
                                    class="w-14 h-14 rounded-full bg-white border border-emerald-100 flex items-center justify-center shadow-lg group-hover:bg-emerald-50 transition-colors">
                                    <i data-lucide="play" class="w-5 h-5 text-[#12876d] fill-[#12876d] ml-1"></i>
                                </div>
                                <span
                                    class="font-bold text-slate-600 group-hover:text-[#12876d] transition-colors">Watch
                                    Demo</span>
                            </button>
                        </div>

                        <div class="flex items-center gap-6 pt-6">
                            <div class="flex -space-x-4">
                                <img src="https://i.pravatar.cc/100?img=1"
                                    class="w-12 h-12 rounded-full border-4 border-white shadow-sm" alt="User">
                                <img src="https://i.pravatar.cc/100?img=2"
                                    class="w-12 h-12 rounded-full border-4 border-white shadow-sm" alt="User">
                                <img src="https://i.pravatar.cc/100?img=3"
                                    class="w-12 h-12 rounded-full border-4 border-white shadow-sm" alt="User">
                                <div
                                    class="w-12 h-12 rounded-full border-4 border-white bg-emerald-100 flex items-center justify-center text-[#12876d] font-bold text-xs shadow-sm">
                                    +12k
                                </div>
                            </div>
                            <p class="text-slate-400 font-semibold text-sm tracking-tight uppercase">Trusted by 12,000+
                                students worldwide</p>
                        </div>
                    </div>

                    <!-- Innovative Floating UI -->
                    <div class="flex-1 relative animate-in fade-in slide-in-from-right duration-1000">
                        <!-- Main Platform Mockup/Visual -->
                        <div
                            class="relative bg-white rounded-[3rem] p-4 shadow-2xl border border-emerald-50 emerald-glow">
                            <img src="https://images.unsplash.com/photo-1522202176988-66273c2fd55f?auto=format&fit=crop&q=80&w=800"
                                class="rounded-[2.5rem] w-full h-auto object-cover h-[500px]" alt="Student Interface">

                            <!-- Floating Card 1: Course Progress -->
                            <div class="absolute -top-10 -right-10 bg-white p-6 rounded-3xl shadow-2xl border border-emerald-50 animate-bounce duration-10s"
                                style="animation-duration: 4s;">
                                <div class="flex items-center gap-4">
                                    <div class="w-12 h-12 bg-emerald-100 rounded-2xl flex items-center justify-center">
                                        <i data-lucide="activity" class="w-6 h-6 text-[#12876d]"></i>
                                    </div>
                                    <div class="space-y-1">
                                        <span
                                            class="block text-[10px] uppercase font-black text-slate-400 tracking-widest">Your
                                            Progress</span>
                                        <span class="block text-xl font-black text-slate-900">82% <span
                                                class="text-xs text-emerald-500 font-bold ml-1">+4%</span></span>
                                    </div>
                                </div>
                                <div class="mt-4 w-full h-2 bg-slate-100 rounded-full overflow-hidden">
                                    <div class="w-4/5 h-full primary-gradient rounded-full"></div>
                                </div>
                            </div>

                            <!-- Floating Card 2: New Message -->
                            <div class="absolute bottom-20 -left-12 bg-white p-5 rounded-3xl shadow-2xl border border-emerald-50 animate-bounce delay-700"
                                style="animation-duration: 5s;">
                                <div class="flex items-center gap-4">
                                    <div
                                        class="w-10 h-10 bg-emerald-500 rounded-full flex items-center justify-center text-white font-black italic">
                                        M
                                    </div>
                                    <div>
                                        <span class="block text-sm font-bold text-slate-900">Mentor Sarah</span>
                                        <span class="block text-xs font-medium text-slate-400">Great job on Module
                                            3!</span>
                                    </div>
                                </div>
                            </div>

                            <!-- Badge -->
                            <div
                                class="absolute -bottom-6 -right-6 bg-[#12876d] text-white p-6 rounded-3xl shadow-2xl rotate-12">
                                <div class="text-center">
                                    <span class="block text-3xl font-black italic tracking-tighter">#1</span>
                                    <span
                                        class="block text-[10px] uppercase font-bold tracking-widest leading-none">Best
                                        Clinix 2026</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Social Proof -->
        <section class="py-24 border-y border-emerald-50 bg-[#f7faf9]">
            <div class="max-w-7xl mx-auto px-4">
                <h2
                    class="text-center text-xs font-black text-slate-400 uppercase tracking-[0.5em] mb-12 opacity-60 font-poppins">
                    Powering the world's leading institutions</h2>
                <div
                    class="flex flex-wrap justify-center items-center gap-16 md:gap-32 grayscale opacity-40 hover:grayscale-0 hover:opacity-100 transition-all duration-500">
                    <span class="text-2xl font-black text-[#12876d]">Stanford</span>
                    <span class="text-2xl font-black text-[#12876d]">MIT</span>
                    <span class="text-2xl font-black text-[#12876d]">Oxford</span>
                    <span class="text-2xl font-black text-[#12876d]">Harvard</span>
                    <span class="text-2xl font-black text-[#12876d]">Cambridge</span>
                </div>
            </div>
        </section>

        <!-- Footer -->
        <footer class="bg-white pt-32 pb-16">
            <div class="max-w-7xl mx-auto px-4">
                <div class="grid grid-cols-1 md:grid-cols-4 gap-16 pb-16 items-start">
                    <div class="space-y-8">
                        <div class="flex items-center gap-3">
                            <div
                                class="w-12 h-12 bg-[#12876d] rounded-2xl flex items-center justify-center rotate-3 shadow-lg shadow-emerald-500/20">
                                <i data-lucide="graduation-cap" class="w-7 h-7 text-white"></i>
                            </div>
                            <span class="text-3xl font-black text-[#12876d] tracking-tighter">Clinix</span>
                        </div>
                        <p class="text-slate-400 text-lg leading-relaxed font-medium">
                            The definitive platform for professional and academic excellence. Built for the learners of
                            tomorrow.
                        </p>
                    </div>

                    <div>
                        <h4 class="text-lg font-black text-slate-900 mb-8 border-b-2 border-[#12876d] w-fit">Quick Links
                        </h4>
                        <ul class="space-y-6 text-slate-500 font-bold">
                            <li><a href="#" class="hover:text-[#12876d] transition">Browse Courses</a></li>
                            <li><a href="#" class="hover:text-[#12876d] transition">Become a Mentor</a></li>
                            <li><a href="#" class="hover:text-[#12876d] transition">Pricing Plans</a></li>
                        </ul>
                    </div>

                    <div>
                        <h4 class="text-lg font-black text-slate-900 mb-8 border-b-2 border-[#12876d] w-fit">Support
                        </h4>
                        <ul class="space-y-6 text-slate-500 font-bold">
                            <li><a href="#" class="hover:text-[#12876d] transition">Help Center</a></li>
                            <li><a href="#" class="hover:text-[#12876d] transition">API Docs</a></li>
                            <li><a href="#" class="hover:text-[#12876d] transition">Security</a></li>
                        </ul>
                    </div>

                    <div>
                        <h4 class="text-lg font-black text-slate-900 mb-8 border-b-2 border-[#12876d] w-fit">Subscribe
                        </h4>
                        <p class="text-slate-400 mb-8 font-medium">Get the latest course drops first.</p>
                        <div class="flex p-2 bg-emerald-50/50 rounded-2xl border border-emerald-100 overflow-hidden">
                            <input type="email" placeholder="Email"
                                class="flex-1 bg-transparent border-none focus:outline-none px-4 text-sm font-medium">
                            <button
                                class="bg-[#12876d] text-white px-5 py-2.5 rounded-xl font-bold text-sm shadow-lg shadow-emerald-500/20">Join</button>
                        </div>
                    </div>
                </div>

                <div
                    class="border-t border-slate-100 pt-12 flex flex-col md:flex-row justify-between items-center gap-8">
                    <span class="text-slate-400 font-bold text-sm tracking-widest uppercase">&copy; 2026 Clinix
                        PLATFORM.</span>
                    <div class="flex items-center gap-10">
                        <a href="#" class="text-slate-400 hover:text-[#12876d] transition"><i data-lucide="twitter"
                                class="w-5 h-5"></i></a>
                        <a href="#" class="text-slate-400 hover:text-[#12876d] transition"><i data-lucide="linkedin"
                                class="w-5 h-5"></i></a>
                        <a href="#" class="text-slate-400 hover:text-[#12876d] transition"><i data-lucide="github"
                                class="w-5 h-5"></i></a>
                    </div>
                </div>
            </div>
        </footer>

        <script>
            // Initialize Lucide Icons
            lucide.createIcons();
        </script>
    </body>

    </html>