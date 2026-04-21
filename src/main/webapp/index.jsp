<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" class="scroll-smooth">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clinix | High-Performance Patient Hub</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <script defer src="https://unpkg.com/lucide@latest"></script>
    <style>
        body { font-family: 'Poppins', sans-serif; }
        .glass-pill { background: rgba(255, 255, 255, 0.1); backdrop-filter: blur(25px); border: 1px solid rgba(255, 255, 255, 0.2); }
        .hero-bg {
            background-image: linear-gradient(to right, rgba(255, 255, 255, 0.95) 20%, rgba(255, 255, 255, 0.3) 100%), url('https://images.unsplash.com/photo-1516549655169-df83a0774514?q=80&w=2000&auto=format&fit=crop');
            background-size: cover;
            background-position: center;
        }
        .text-emerald { color: #12876d; }
        .bg-emerald { background-color: #12876d; }
    </style>
</head>

<body class="bg-white text-slate-900 overflow-x-hidden">

    <!-- Innovative Transparent 3-Part Navbar -->
    <div class="fixed top-0 left-0 right-0 z-50 flex justify-center px-4 pt-10">
        <div class="max-w-7xl w-full flex items-center justify-between pointer-events-none gap-6">
            
            <!-- Left Pill -->
            <div class="glass-pill px-6 py-3 rounded-full flex items-center gap-3 shadow-lg pointer-events-auto shrink-0">
                <span class="w-2.5 h-2.5 bg-emerald-500 rounded-full animate-pulse"></span>
                <span class="text-[10px] font-black text-slate-500 uppercase tracking-widest">Active System</span>
            </div>

            <!-- Long Transparent Center Pill (Updated DESIGN) -->
            <div class="glass-pill flex-1 max-w-3xl px-12 py-3.5 rounded-full flex items-center justify-between shadow-2xl pointer-events-auto transition-all backdrop-blur-3xl border-white/30">
                <div class="flex items-center gap-4">
                    <div class="w-10 h-10 bg-emerald rounded-2xl flex items-center justify-center rotate-6 shadow-xl shadow-emerald/30 group cursor-pointer hover:rotate-0 transition-transform">
                        <i data-lucide="cross" class="w-6 h-6 text-white leading-none"></i>
                    </div>
                    <span class="text-xl font-black text-emerald uppercase tracking-tighter italic">Clinix</span>
                </div>
                <div class="flex items-center gap-12">
                    <a href="#hero" class="text-xs font-black text-emerald uppercase tracking-[0.2em] hover:opacity-70 transition">Home</a>
                    <a href="#about" class="text-xs font-black text-slate-500 uppercase tracking-[0.2em] hover:text-emerald transition">Process</a>
                    <a href="#features" class="text-xs font-black text-slate-500 uppercase tracking-[0.2em] hover:text-emerald transition">Features</a>
                    <a href="#faq" class="text-xs font-black text-slate-500 uppercase tracking-[0.2em] hover:text-emerald transition">Support</a>
                </div>
            </div>

            <!-- Right Pill (Auth) -->
            <div class="glass-pill px-6 py-2.5 rounded-full flex items-center gap-6 shadow-xl pointer-events-auto shrink-0">
                <a href="login.jsp" class="text-xs font-black text-slate-500 uppercase tracking-widest hover:text-emerald transition">Login</a>
                <a href="signup.jsp" class="bg-emerald text-white px-6 py-2.5 rounded-full text-xs font-black uppercase tracking-widest shadow-xl shadow-emerald/20 hover:scale-105 transition-all">Join</a>
            </div>

        </div>
    </div>

    <!-- Hero Section -->
    <section id="hero" class="relative min-h-screen flex items-center hero-bg">
        <div class="max-w-7xl mx-auto px-4 w-full z-10 pt-48 pb-20">
            <div class="max-w-3xl space-y-12 animate-in fade-in slide-in-from-left duration-1000">
                <div class="space-y-6">
                    <span class="inline-block text-emerald font-black text-xs tracking-[0.5em] uppercase px-4 py-1.5 bg-emerald-50 rounded-lg border border-emerald-100 shadow-sm">Healthcare SaaS</span>
                    <h1 class="text-6xl md:text-7xl lg:text-8xl font-black text-slate-900 leading-[1] tracking-tighter">
                        Manage <br /> 
                        <span class="text-emerald italic">Clinics</span> with <br />
                        Confidence.
                    </h1>
                    <p class="text-xl md:text-2xl text-slate-500 font-medium leading-relaxed max-w-xl opacity-90">
                        Efficient handling of patient records, appointments, and billing with integrated coordination across all your healthcare departments.
                    </p>
                </div>

                <div class="flex items-center gap-8">
                    <a href="signup.jsp" class="px-16 py-6 bg-emerald text-white rounded-[2rem] font-black text-xl hover:bg-[#0b5948] transition-all hover:translate-y-[-5px] shadow-2xl shadow-emerald/40">
                        Start Free Account
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- Process Section (Updated IMAGE) -->
    <section id="about" class="py-32 bg-white">
        <div class="max-w-7xl mx-auto px-4">
            <div class="flex flex-col lg:flex-row items-center gap-24">
                <div class="flex-1 space-y-10">
                    <div class="w-16 h-1 bg-emerald rounded-full"></div>
                    <h2 class="text-5xl font-black text-slate-900 leading-tight">Optimized <br/> <span class="text-emerald italic">Patient Journey.</span></h2>
                    <p class="text-xl text-slate-500 font-medium leading-relaxed italic opacity-80">
                        "Streamline operations through efficient handling of patient lifecycle and records while maintaining well-organized EMR integrity."
                    </p>
                    <div class="grid grid-cols-1 gap-6 pt-4">
                        <div class="flex items-center gap-4 p-6 bg-slate-50 rounded-3xl border border-slate-100 shadow-sm translate-x-4">
                            <i data-lucide="activity" class="w-8 h-8 text-emerald"></i>
                            <span class="font-bold text-slate-700 text-lg">Cross-Department Coordination</span>
                        </div>
                        <div class="flex items-center gap-4 p-6 bg-slate-50 rounded-3xl border border-slate-100 shadow-sm -translate-x-4">
                            <i data-lucide="credit-card" class="w-8 h-8 text-emerald"></i>
                            <span class="font-bold text-sm text-slate-700 text-lg">Integrated Billing Protocols</span>
                        </div>
                    </div>
                </div>
                <div class="flex-1">
                    <div class="relative group">
                         <div class="absolute -inset-4 bg-emerald/10 rounded-[4rem] blur-2xl group-hover:bg-emerald/20 transition-all"></div>
                         <!-- New Reliable Image URL -->
                         <img src="https://images.unsplash.com/photo-1584982329699-07ad511da039?q=80&w=2000&auto=format&fit=crop" 
                              class="relative rounded-[3.5rem] shadow-3xl hover:scale-105 transition-all duration-700 w-full object-cover h-[550px]" 
                              alt="Medical Professional using Clinix">
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Features Section (NEW DIFFERENT UI DESIGN) -->
    <section id="features" class="py-40 bg-slate-900 text-white overflow-hidden relative">
        <div class="absolute top-0 right-0 w-[800px] h-[800px] bg-emerald/5 rounded-full blur-[150px] -translate-y-1/2 translate-x-1/2"></div>
        
        <div class="max-w-7xl mx-auto px-4 relative">
            <div class="flex flex-col md:flex-row justify-between items-end mb-24 gap-12">
                <div class="max-w-2xl space-y-6">
                    <span class="text-emerald font-black text-sm tracking-[0.4em] uppercase opacity-80">Core Infrastructure</span>
                    <h2 class="text-5xl md:text-7xl font-black tracking-tighter">Engineered for <br/> <span class="text-emerald italic">Integrity.</span></h2>
                </div>
                <div class="bg-emerald/10 p-8 rounded-[2.5rem] border border-emerald/20 backdrop-blur-xl">
                    <p class="text-emerald font-bold text-xl leading-relaxed italic">"The definitive standard for clinical workflow management."</p>
                </div>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                <!-- Feature Card 1 -->
                <div class="group p-10 bg-white/5 rounded-[3rem] border border-white/10 hover:bg-white/10 transition-all duration-500 hover:-translate-y-4">
                    <div class="w-16 h-16 bg-emerald rounded-3xl flex items-center justify-center mb-10 shadow-2xl shadow-emerald/30 group-hover:rotate-12 transition-transform">
                        <i data-lucide="database" class="w-8 h-8 text-white"></i>
                    </div>
                    <h3 class="text-3xl font-black mb-6 tracking-tight">Lifecycle Records</h3>
                    <p class="text-slate-400 font-medium leading-relaxed mb-10">Centralized EMR that follows the patient from initial admission through complete recovery cycles.</p>
                    <div class="flex items-center gap-3 text-emerald font-black text-sm uppercase tracking-widest">
                        Module Guide <i data-lucide="chevron-right" class="w-4 h-4"></i>
                    </div>
                </div>
                <!-- Feature Card 2 -->
                <div class="group p-10 bg-white/5 rounded-[3rem] border border-white/10 hover:bg-white/10 transition-all duration-500 hover:-translate-y-4 md:translate-y-12">
                    <div class="w-16 h-16 bg-white rounded-3xl flex items-center justify-center mb-10 shadow-2xl group-hover:rotate-12 transition-transform">
                        <i data-lucide="calendar-check" class="w-8 h-8 text-emerald"></i>
                    </div>
                    <h3 class="text-3xl font-black mb-6 tracking-tight">Smart Scheduling</h3>
                    <p class="text-slate-400 font-medium leading-relaxed mb-10">Intelligent appointment ledger that synchronizes surgeon, room, and patient availability.</p>
                    <div class="flex items-center gap-3 text-emerald font-black text-sm uppercase tracking-widest">
                        Module Guide <i data-lucide="chevron-right" class="w-4 h-4"></i>
                    </div>
                </div>
                <!-- Feature Card 3 -->
                <div class="group p-10 bg-white/5 rounded-[3rem] border border-white/10 hover:bg-white/10 transition-all duration-500 hover:-translate-y-4">
                    <div class="w-16 h-16 bg-emerald rounded-3xl flex items-center justify-center mb-10 shadow-2xl shadow-emerald/30 group-hover:rotate-12 transition-transform">
                        <i data-lucide="bar-chart-3" class="w-8 h-8 text-white"></i>
                    </div>
                    <h3 class="text-3xl font-black mb-6 tracking-tight">Billing Intelligence</h3>
                    <p class="text-slate-400 font-medium leading-relaxed mb-10">Integrated departmental billing hubs that eliminate manual entry and reduce transaction errors.</p>
                    <div class="flex items-center gap-3 text-emerald font-black text-sm uppercase tracking-widest">
                        Module Guide <i data-lucide="chevron-right" class="w-4 h-4"></i>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Support Section -->
    <section id="faq" class="py-40 bg-white">
       <div class="max-w-4xl mx-auto px-4">
          <div class="text-center mb-24">
             <span class="text-slate-400 font-black text-sm tracking-[0.5em] uppercase">Support</span>
             <h2 class="text-5xl font-black mt-4 tracking-tighter">Common Queries.</h2>
          </div>

          <div class="space-y-10">
             <div class="p-10 bg-slate-50 rounded-[3rem] border-2 border-transparent hover:border-emerald transition-all shadow-sm">
                <h4 class="text-2xl font-black text-slate-800 mb-4">Patient Data Sovereignty?</h4>
                <p class="text-lg text-slate-500 font-medium leading-relaxed">Prioritizing data integrity means absolute sovereignty for healthcare institutions over their private EMR records.</p>
             </div>
             <div class="p-10 bg-slate-50 rounded-[3rem] border-2 border-transparent hover:border-emerald transition-all shadow-sm">
                <h4 class="text-2xl font-black text-slate-800 mb-4">Workflow Sync Across Facilities?</h4>
                <p class="text-lg text-slate-500 font-medium leading-relaxed">Clinix supports seamless cloud-based synchronization across multiple medical branches and departments.</p>
             </div>
          </div>
       </div>
    </section>

    <!-- Clear Footer -->
    <footer class="bg-slate-900 pt-32 pb-16 text-white overflow-hidden relative">
        <div class="max-w-7xl mx-auto px-4 relative">
            <div class="grid grid-cols-1 md:grid-cols-4 gap-16 pb-20 items-start">
                <div class="space-y-8">
                    <div class="flex items-center gap-3">
                        <div class="w-12 h-12 bg-emerald rounded-2xl flex items-center justify-center rotate-6">
                            <i data-lucide="cross" class="w-7 h-7 text-white"></i>
                        </div>
                        <span class="text-3xl font-black tracking-tighter italic text-emerald">Clinix.</span>
                    </div>
                    <p class="text-slate-400 text-lg font-medium">Streamlining operations through integrity-first medical records.</p>
                </div>
                <div>
                    <h4 class="text-lg font-black mb-8 border-b-2 border-emerald w-fit">Services</h4>
                    <ul class="space-y-6 text-slate-500 font-bold text-sm">
                        <li><a href="#" class="hover:text-emerald transition">Lifecycle EMR</a></li>
                        <li><a href="#" class="hover:text-emerald transition">Staff Hub</a></li>
                        <li><a href="#" class="hover:text-emerald transition">API Access</a></li>
                    </ul>
                </div>
                <div>
                    <h4 class="text-lg font-black mb-8 border-b-2 border-emerald w-fit">Platform</h4>
                    <ul class="space-y-6 text-slate-500 font-bold text-sm">
                        <li><a href="#" class="hover:text-emerald transition">Security Protocols</a></li>
                        <li><a href="#" class="hover:text-emerald transition">Billing Bridge</a></li>
                        <li><a href="#" class="hover:text-emerald transition">Documentation</a></li>
                    </ul>
                </div>
                <div>
                    <h4 class="text-lg font-black mb-8 border-b-2 border-emerald w-fit">Contact</h4>
                    <div class="bg-emerald/10 p-6 rounded-[2rem] border border-emerald/20">
                        <p class="text-xs font-black text-emerald uppercase tracking-widest mb-4">System Status: Clear</p>
                        <p class="text-sm font-bold text-slate-400">24/7 Monitoring Active</p>
                    </div>
                </div>
            </div>
            <div class="border-t border-white/5 pt-12 text-center text-slate-600 font-bold text-xs tracking-widest uppercase">
                &copy; 2026 CLINIX PRECISION PORTAL. ALL RIGHTS RESERVED.
            </div>
        </div>
    </footer>

    <script>
        lucide.createIcons();
    </script>
</body>
</html>