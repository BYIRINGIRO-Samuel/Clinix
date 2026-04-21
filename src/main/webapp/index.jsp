<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" class="scroll-smooth">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clinix | High-Fidelity Patient Management</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <script defer src="https://unpkg.com/lucide@latest"></script>
    <style>
        body { font-family: 'Poppins', sans-serif; }
        .glass { background: rgba(255, 255, 255, 0.9); backdrop-filter: blur(20px); }
        .hero-bg {
            background-image: linear-gradient(to right, rgba(255, 255, 255, 0.9) 30%, rgba(255, 255, 255, 0) 100%), url('https://images.unsplash.com/photo-1516549655169-df83a0774514?q=80&w=2000&auto=format&fit=crop');
            background-size: cover;
            background-position: center;
        }
    </style>
</head>

<body class="bg-white text-slate-900 overflow-x-hidden">

    <!-- Fixed Navbar -->
    <div class="fixed top-0 left-0 right-0 z-50 flex justify-center px-4 pt-6">
        <nav class="max-w-7xl w-full glass border border-emerald-100/50 rounded-3xl px-10 py-5 flex items-center justify-between shadow-xl shadow-emerald-900/5">
            <div class="flex items-center gap-4">
                <div class="w-12 h-12 bg-[#12876d] rounded-2xl flex items-center justify-center rotate-6 shadow-xl shadow-emerald-500/20">
                    <i data-lucide="cross" class="w-7 h-7 text-white"></i>
                </div>
                <span class="text-2xl font-black text-[#12876d] tracking-tighter uppercase">Clinix</span>
            </div>

            <div class="hidden lg:flex items-center gap-10">
                <a href="#hero" class="text-[#12876d] font-bold text-sm tracking-tight border-b-2 border-[#12876d]">Home</a>
                <a href="#about" class="text-slate-500 font-semibold text-sm hover:text-[#12876d] transition-colors">About</a>
                <a href="#features" class="text-slate-500 font-semibold text-sm hover:text-[#12876d] transition-colors">Features</a>
                <a href="#records" class="text-slate-500 font-semibold text-sm hover:text-[#12876d] transition-colors">Records</a>
                <a href="#faq" class="text-slate-500 font-semibold text-sm hover:text-[#12876d] transition-colors">Q&A</a>
            </div>

            <div class="flex items-center gap-6">
                <a href="login.jsp" class="text-slate-600 font-bold text-sm hover:text-[#12876d] transition">Portal Login</a>
                <a href="signup.jsp" class="px-8 py-3.5 bg-[#12876d] text-white rounded-[1.2rem] font-bold text-sm hover:bg-[#0b5948] transition shadow-lg shadow-emerald-500/20">
                    Get Started
                </a>
            </div>
        </nav>
    </div>

    <!-- Hero Section -->
    <section id="hero" class="relative min-h-screen flex items-center hero-bg overflow-visible">
        <div class="max-w-7xl mx-auto px-4 w-full z-10 pt-20">
            <div class="max-w-3xl space-y-10 animate-in fade-in slide-in-from-left duration-1000">
                <div class="space-y-6">
                    <span class="inline-flex items-center gap-2 px-5 py-2 bg-[#12876d]/10 text-[#12876d] rounded-full font-bold text-xs tracking-widest uppercase">
                        <span class="w-2 h-2 bg-[#12876d] rounded-full animate-pulse"></span>
                        Next-Gen Health System
                    </span>
                    <h1 class="text-6xl md:text-7xl lg:text-8xl font-black text-slate-900 leading-[1.05] tracking-tight">
                        Streamline <br /> 
                        <span class="text-[#12876d]">Patient Care.</span>
                    </h1>
                    <p class="text-xl md:text-2xl text-slate-500 font-medium leading-relaxed max-w-xl opacity-90">
                        A comprehensive platform designed to handle patient records, appointments, and prescriptions with 100% data integrity.
                    </p>
                </div>

                <div class="flex flex-col sm:flex-row items-center gap-8">
                    <a href="signup.jsp" class="w-full sm:w-auto px-16 py-6 bg-[#12876d] text-white rounded-[2rem] font-extrabold text-xl hover:bg-[#0b5948] transition-all hover:translate-y-[-5px] shadow-2xl shadow-emerald-500/30 flex items-center justify-center gap-4 group">
                        Join Clinix <i data-lucide="arrow-right" class="w-7 h-7 group-hover:translate-x-2 transition-transform"></i>
                    </a>
                    <button class="flex items-center gap-4 group">
                        <div class="w-16 h-16 rounded-full bg-white border border-emerald-100 flex items-center justify-center shadow-lg group-hover:bg-emerald-50 transition-all">
                            <i data-lucide="play" class="w-6 h-6 text-[#12876d] fill-[#12876d] ml-1"></i>
                        </div>
                        <span class="font-bold text-slate-700 text-lg group-hover:text-[#12876d] transition-colors">Watch Workflow</span>
                    </button>
                </div>
            </div>

            <!-- Floating Cards - Positioned to not be covered -->
            <div class="grid grid-cols-1 md:grid-cols-3 gap-8 mt-24 relative z-20">
                <div class="bg-white p-8 rounded-[2.5rem] shadow-2xl shadow-emerald-900/5 border border-emerald-50 transform hover:scale-105 transition-transform duration-300">
                    <div class="w-12 h-12 bg-emerald-100 rounded-2xl flex items-center justify-center mb-6">
                        <i data-lucide="calendar" class="w-7 h-7 text-[#12876d]"></i>
                    </div>
                    <h3 class="text-2xl font-black mb-3">Appointments</h3>
                    <p class="text-slate-500 font-medium text-sm leading-relaxed">Efficiently schedule and coordinate patient visits across all facility departments.</p>
                </div>
                <div class="bg-[#12876d] p-8 rounded-[2.5rem] shadow-2xl shadow-emerald-900/20 border border-emerald-600 text-white transform hover:scale-105 transition-transform duration-300 translate-y-4">
                    <div class="w-12 h-12 bg-white/20 rounded-2xl flex items-center justify-center mb-6">
                        <i data-lucide="file-text" class="w-7 h-7 text-white"></i>
                    </div>
                    <h3 class="text-2xl font-black mb-3">Live EMR</h3>
                    <p class="text-emerald-50 font-medium text-sm leading-relaxed">Well-organized electronic medical records maintaining complete data integrity.</p>
                </div>
                <div class="bg-white p-8 rounded-[2.5rem] shadow-2xl shadow-emerald-900/5 border border-emerald-50 transform hover:scale-105 transition-transform duration-300">
                    <div class="w-12 h-12 bg-emerald-100 rounded-2xl flex items-center justify-center mb-6">
                        <i data-lucide="credit-card" class="w-7 h-7 text-[#12876d]"></i>
                    </div>
                    <h3 class="text-2xl font-black mb-3">Smart Billing</h3>
                    <p class="text-slate-500 font-medium text-sm leading-relaxed">Integrated billing processes to improve workflow efficiency and patient satisfaction.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Project Description Section -->
    <section id="about" class="py-40 bg-white relative">
        <div class="max-w-7xl mx-auto px-4">
            <div class="flex flex-col lg:flex-row items-center gap-20">
                <div class="flex-1 space-y-10 animate-in slide-in-from-left duration-1000">
                    <span class="text-[#12876d] font-black text-sm tracking-[0.3em] uppercase">Overview</span>
                    <h2 class="text-5xl md:text-6xl font-black text-slate-900 leading-[1.1]">Complete Patient <br /> <span class="text-[#12876d]">Lifecycle Management</span></h2>
                    <p class="text-xl text-slate-500 font-medium leading-relaxed">
                        Clinix prioritizes user-friendly experience to enhance both patient care and overall healthcare management. By integrating billing and department coordination, we ensure a seamless flow across your entire facility.
                    </p>
                    <div class="space-y-6 pt-4">
                        <div class="flex items-center gap-4 p-4 bg-emerald-50 rounded-2xl border border-emerald-100">
                            <i data-lucide="shield-check" class="w-8 h-8 text-[#12876d]"></i>
                            <span class="font-bold text-slate-700">Highest standards of data integrity</span>
                        </div>
                        <div class="flex items-center gap-4 p-4 bg-emerald-50 rounded-2xl border border-emerald-100">
                            <i data-lucide="zap" class="text-orange-500 w-8 h-8"></i>
                            <span class="font-bold text-slate-700">Real-time prescription and record sync</span>
                        </div>
                    </div>
                </div>
                <div class="flex-1 relative animate-in slide-in-from-right duration-1000">
                    <img src="https://images.unsplash.com/photo-1581056771107-24ca5f033842?w=1000&auto=format&fit=crop" class="rounded-[4rem] shadow-3xl shadow-emerald-900/10 hover:scale-[1.02] transition-transform duration-500" alt="Clinix Operations">
                </div>
            </div>
        </div>
    </section>

    <!-- Features Section Table UI -->
    <section id="features" class="py-32 bg-slate-50">
        <div class="max-w-7xl mx-auto px-4">
          <div class="text-center mb-24">
             <span class="text-[#12876d] font-black text-sm tracking-widest uppercase">System Capabilities</span>
             <h2 class="text-5xl font-black mt-6 tracking-tight">Core <span class="text-[#12876d]">Solutions</span></h2>
          </div>

          <div class="w-full overflow-x-auto bg-white rounded-[3rem] shadow-2xl shadow-emerald-900/5 p-8 border border-emerald-50">
             <div class="min-w-[800px]">
                <div class="grid grid-cols-12 bg-slate-50 border-y border-slate-100 py-6 px-10 rounded-2xl">
                   <div class="col-span-1 text-xs font-black text-slate-400 uppercase tracking-widest">Code</div>
                   <div class="col-span-4 text-xs font-black text-slate-400 uppercase tracking-widest">Medical Module</div>
                   <div class="col-span-4 text-xs font-black text-slate-400 uppercase tracking-widest">Functional Scope</div>
                   <div class="col-span-3 text-xs font-black text-slate-400 uppercase tracking-widest">Impact Metric</div>
                </div>

                <div class="divide-y divide-slate-50">
                   <div class="grid grid-cols-12 py-8 px-10 items-center hover:bg-emerald-50/50 transition-colors group">
                        <div class="col-span-1 text-lg font-black text-slate-300 group-hover:text-[#12876d]">M01</div>
                        <div class="col-span-4 pr-10 font-bold text-slate-800">Appointment Ledger</div>
                        <div class="col-span-4 pr-10 text-slate-500 font-medium">Coordinate doctor availability and patient scheduling.</div>
                        <div class="col-span-3">
                           <span class="bg-emerald-100 text-[#12876d] px-4 py-2 rounded-full text-xs font-black uppercase">Zero Overlaps</span>
                        </div>
                   </div>
                   <div class="grid grid-cols-12 py-8 px-10 items-center hover:bg-emerald-50/50 transition-colors group">
                        <div class="col-span-1 text-lg font-black text-slate-300 group-hover:text-[#12876d]">M02</div>
                        <div class="col-span-4 pr-10 font-bold text-slate-800">Prescription Control</div>
                        <div class="col-span-4 pr-10 text-slate-500 font-medium">Digital signatures and pharmacy synchronization.</div>
                        <div class="col-span-3">
                           <span class="bg-emerald-100 text-[#12876d] px-4 py-2 rounded-full text-xs font-black uppercase">Instant Sync</span>
                        </div>
                   </div>
                   <div class="grid grid-cols-12 py-8 px-10 items-center hover:bg-emerald-50/50 transition-colors group">
                        <div class="col-span-1 text-lg font-black text-slate-300 group-hover:text-[#12876d]">M03</div>
                        <div class="col-span-4 pr-10 font-bold text-slate-800">Financial Suite</div>
                        <div class="col-span-4 pr-10 text-slate-500 font-medium">Automated invoicing and insurance claim handling.</div>
                        <div class="col-span-3">
                           <span class="bg-emerald-100 text-[#12876d] px-4 py-2 rounded-full text-xs font-black uppercase">Full Integrity</span>
                        </div>
                   </div>
                </div>
             </div>
          </div>
        </div>
    </section>

    <!-- Social Proof -->
    <section class="py-24 bg-white border-y border-emerald-50">
        <div class="max-w-7xl mx-auto px-4 text-center">
            <h2 class="text-xs font-black text-slate-400 uppercase tracking-[0.5em] mb-16 underline decoration-[#12876d] decoration-4 underline-offset-8">Endorsed Medical Institutions</h2>
            <div class="flex flex-wrap justify-center items-center gap-16 md:gap-32 font-black text-3xl text-slate-300">
                <span class="hover:text-[#12876d] transition-colors">Cleveland</span>
                <span class="hover:text-[#12876d] transition-colors">St. Jude</span>
                <span class="hover:text-[#12876d] transition-colors">Mayo Clinic</span>
                <span class="hover:text-[#12876d] transition-colors">Johns Hopkins</span>
            </div>
            <div class="flex justify-center mt-20">
                <div class="inline-flex items-center gap-8 bg-slate-900 p-8 rounded-[3rem] shadow-3xl text-white">
                    <div class="flex -space-x-4">
                        <img src="https://i.pravatar.cc/100?img=1" class="w-14 h-14 rounded-full border-4 border-slate-900 overflow-hidden shadow-lg" alt="Doc">
                        <img src="https://i.pravatar.cc/100?img=2" class="w-14 h-14 rounded-full border-4 border-slate-900 overflow-hidden shadow-lg" alt="Doc">
                        <img src="https://i.pravatar.cc/100?img=3" class="w-14 h-14 rounded-full border-4 border-slate-900 overflow-hidden shadow-lg" alt="Doc">
                    </div>
                    <div class="text-left">
                        <span class="block text-2xl font-black tracking-tight italic">35,000+</span>
                        <span class="block text-xs font-bold text-emerald-400 uppercase tracking-widest mt-1">Medical Professionals Enrolled</span>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-white pt-32 pb-20 border-t border-slate-50">
        <div class="max-w-7xl mx-auto px-4">
            <div class="grid grid-cols-1 md:grid-cols-4 gap-20 items-start">
                <div class="space-y-10">
                    <div class="flex items-center gap-4">
                        <div class="w-14 h-14 bg-[#12876d] rounded-2xl flex items-center justify-center rotate-6 shadow-xl shadow-emerald-500/20">
                            <i data-lucide="cross" class="w-8 h-8 text-white"></i>
                        </div>
                        <span class="text-3xl font-black text-[#12876d] tracking-tighter uppercase">Clinix</span>
                    </div>
                    <p class="text-slate-400 text-lg leading-relaxed font-medium">Streamlining global healthcare operations through integrity-first medical records.</p>
                </div>
                <div>
                   <h4 class="text-xl font-black text-slate-900 mb-10 border-b-4 border-[#12876d] w-fit">Services</h4>
                   <ul class="space-y-6 text-slate-500 font-bold text-lg">
                       <li><a href="#" class="hover:text-[#12876d]">Patient EMR</a></li>
                       <li><a href="#" class="hover:text-[#12876d]">Staffing</a></li>
                       <li><a href="#" class="hover:text-[#12876d]">Compliance</a></li>
                   </ul>
                </div>
                <div>
                   <h4 class="text-xl font-black text-slate-900 mb-10 border-b-4 border-[#12876d] w-fit">Solutions</h4>
                   <ul class="space-y-6 text-slate-500 font-bold text-lg">
                       <li><a href="#" class="hover:text-[#12876d]">Billing API</a></li>
                       <li><a href="#" class="hover:text-[#12876d]">Schedules</a></li>
                       <li><a href="#" class="hover:text-[#12876d]">Cloud Sync</a></li>
                   </ul>
                </div>
                <div>
                   <h4 class="text-xl font-black text-slate-900 mb-10 border-b-4 border-[#12876d] w-fit italic">Community</h4>
                   <div class="group bg-emerald-50 p-6 rounded-[2rem] border border-emerald-100 mt-6 shadow-inner">
                        <p class="text-xs font-bold text-[#12876d] uppercase tracking-widest mb-4">Newsletter</p>
                        <div class="flex gap-2">
                             <input type="email" placeholder="Med@mail" class="bg-white px-4 py-2 rounded-xl text-sm w-full focus:outline-none shadow-sm">
                             <button class="bg-[#12876d] text-white p-2 rounded-xl"><i data-lucide="arrow-right" class="w-4 h-4"></i></button>
                        </div>
                   </div>
                </div>
            </div>
        </div>
    </footer>

    <script>
        lucide.createIcons();
    </script>
</body>
</html>