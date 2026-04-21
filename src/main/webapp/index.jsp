<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" class="scroll-smooth">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clinix | Clinical Operations Hub</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <script src="https://unpkg.com/lucide@latest"></script>
    <style>
        body { font-family: 'Poppins', sans-serif; }
        .glass-pill { background: rgba(255, 255, 255, 0.95); backdrop-filter: blur(10px); border: 1px solid rgba(18, 135, 109, 0.1); }
        .bg-emerald { background-color: #12876d; }
        .text-emerald { color: #12876d; }
        .faq-answer { max-height: 0; overflow: hidden; transition: max-height 0.4s ease-out; }
        .faq-item.active .faq-answer { max-height: 200px; }
        .faq-item.active .plus-icon { display: none; }
        .faq-item.active .minus-icon { display: block; }
        .minus-icon { display: none; }
        
        /* Innovative Texture Pattern */
        .medical-pattern {
            background-color: transparent;
            background-image:  radial-gradient(#12876d 0.5px, transparent 0.5px), radial-gradient(#12876d 0.5px, transparent 0.5px);
            background-size: 20px 20px;
            background-position: 0 0,10px 10px;
            mask-image: linear-gradient(to left, rgba(0,0,0,0.5), transparent);
        }
    </style>
</head>

<body class="bg-white text-slate-900 overflow-x-hidden">

    <!-- Navbar -->
    <div class="fixed top-0 left-0 right-0 z-50 flex justify-center px-4 pt-8">
        <div class="max-w-7xl w-full flex items-center justify-between pointer-events-none gap-6">
            <div class="glass-pill px-6 py-2.5 rounded-full pointer-events-auto shadow-lg flex items-center gap-2">
                <span class="w-2 h-2 bg-emerald-500 rounded-full animate-pulse"></span>
                <span class="text-[9px] font-black text-slate-500 uppercase tracking-widest leading-none italic">Secure Data Link</span>
            </div>

            <!-- Long Transparent Center Pill -->
            <div class="glass-pill flex-1 max-w-2xl px-12 py-3.5 rounded-full flex items-center justify-between shadow-2xl pointer-events-auto border-2 border-emerald-50">
                <div class="flex items-center gap-3">
                    <i data-lucide="heart" class="w-6 h-6 text-emerald fill-emerald/10"></i>
                    <span class="text-xl font-black text-emerald uppercase tracking-tighter italic">Clinix</span>
                </div>
                <div class="flex items-center gap-10">
                    <a href="#hero" class="text-[10px] font-black text-emerald uppercase tracking-[0.2em] hover:opacity-70 transition">Home</a>
                    <a href="#about" class="text-[10px] font-black text-slate-500 uppercase tracking-[0.2em] hover:text-emerald transition">Process</a>
                    <a href="#features" class="text-[10px] font-black text-slate-500 uppercase tracking-[0.2em] hover:text-emerald transition">Modules</a>
                    <a href="#faq" class="text-[10px] font-black text-slate-500 uppercase tracking-[0.2em] hover:text-emerald transition">Support</a>
                </div>
            </div>

            <!-- Signup Pill (SOLID GREEN BACKGROUND) -->
            <div class="bg-emerald px-8 py-3 rounded-full pointer-events-auto shadow-2xl shadow-emerald-500/30 flex items-center justify-center hover:scale-105 transition-all">
                <a href="signup.jsp" class="text-white text-[11px] font-black uppercase tracking-widest">Signup Free</a>
            </div>
        </div>
    </div>

    <!-- Hero Section -->
    <section id="hero" class="relative min-h-screen flex items-center bg-white overflow-hidden">
        <!-- Floating Texture Pattern on the right -->
        <div class="absolute top-0 right-0 w-1/2 h-full medical-pattern -z-0"></div>
        <div class="absolute top-0 right-0 w-[600px] h-[600px] bg-emerald/5 rounded-full blur-[150px] -translate-y-1/3 translate-x-1/3"></div>

        <div class="max-w-7xl mx-auto px-4 w-full z-10 pt-48 pb-10">
            <div class="max-w-2xl space-y-12 animate-in fade-in slide-in-from-left duration-1000">
                <div class="space-y-6">
                    <span class="text-emerald font-black text-[11px] tracking-[0.5em] uppercase px-5 py-2 bg-emerald-50 rounded-xl border border-emerald-100 shadow-sm">Enterprise Patient Hub</span>
                    <h1 class="text-5xl md:text-6xl lg:text-7xl font-black text-slate-900 leading-[1] tracking-tighter">
                        Integrated Care. <br /> 
                        <span class="text-emerald italic underline decoration-8 decoration-emerald-100 underline-offset-8">Precision</span> Logic.
                    </h1>
                    <p class="text-xl md:text-2xl text-slate-500 font-medium leading-relaxed max-w-lg opacity-90">
                        A robust platform for patient lifecycle management, departmental coordination, and automated billing records.
                    </p>
                </div>
                <div class="flex items-center pt-6">
                    <a href="signup.jsp" class="px-14 py-6 bg-emerald text-white rounded-[2.5rem] font-black text-xl hover:bg-[#0b5948] transition-all hover:translate-y-[-5px] shadow-[0_25px_50px_rgba(18,135,109,0.3)] flex items-center gap-4">
                        Register Facility <i data-lucide="sparkles" class="w-6 h-6"></i>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- How it works -->
    <section id="about" class="py-40 bg-slate-50">
        <div class="max-w-7xl mx-auto px-4">
            <div class="flex flex-col lg:flex-row items-center gap-24">
                <div class="flex-1 space-y-10">
                    <div class="w-20 h-2 bg-emerald rounded-full"></div>
                    <h2 class="text-4xl md:text-5xl font-black text-slate-900 leading-[1.1] tracking-tight text-emerald underline decoration-[#12876d]/10 underline-offset-8">Lifecycle Flow.</h2>
                    <p class="text-xl text-slate-500 font-medium leading-relaxed max-w-xl opacity-90 italic">
                        Streamline healthcare operations through efficient handling of patient records while maintaining well-organized EMR architectures.
                    </p>
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-8 pt-8">
                        <div class="flex items-center gap-5 p-6 bg-white rounded-3xl border border-slate-100 shadow-sm transition-transform hover:scale-105">
                           <i data-lucide="database" class="w-8 h-8 text-emerald"></i>
                           <span class="font-bold text-slate-700 text-lg">Data Integrity</span>
                        </div>
                        <div class="flex items-center gap-5 p-6 bg-white rounded-3xl border border-slate-100 shadow-sm transition-transform hover:scale-105">
                           <i data-lucide="refresh-cw" class="w-8 h-8 text-emerald"></i>
                           <span class="font-bold text-slate-700 text-lg">Seamless Sync</span>
                        </div>
                    </div>
                </div>
                <div class="flex-1 relative animate-in slide-in-from-right duration-1000">
                    <div class="bg-emerald rounded-[4rem] p-3 shadow-2xl">
                        <img src="https://images.unsplash.com/photo-1516549655169-df83a0774514?q=80&w=1200&auto=format&fit=crop" 
                             class="rounded-[3.8rem] w-full h-[550px] object-cover" alt="Medical Coordination Context">
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Our Main Services -->
    <section id="features" class="py-40 bg-white">
        <div class="max-w-7xl mx-auto px-4">
            <div class="text-center mb-32">
                <span class="text-emerald font-black text-xs tracking-[0.6em] uppercase">Core Capabilities</span>
                <h2 class="text-4xl md:text-6xl font-black mt-6 tracking-tighter">Workflow Intelligence.</h2>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-3 gap-12">
                <div class="group p-12 bg-slate-50 rounded-[4rem] border border-transparent hover:border-emerald/20 transition-all hover:-translate-y-4">
                    <div class="w-20 h-20 bg-emerald rounded-3xl flex items-center justify-center mb-10 shadow-2xl shadow-emerald/30 group-hover:rotate-12 transition-transform">
                        <i data-lucide="folders" class="w-10 h-10 text-white leading-none"></i>
                    </div>
                    <h3 class="text-3xl font-black mb-6 tracking-tight">Records Hub</h3>
                    <p class="text-slate-500 font-semibold leading-relaxed">Systematic handling of patient records refocusing on medical data integrity and precision.</p>
                </div>
                <div class="group p-12 bg-slate-50 rounded-[4rem] border border-transparent hover:border-emerald/20 transition-all hover:-translate-y-4 translate-y-12">
                    <div class="w-20 h-20 bg-emerald rounded-3xl flex items-center justify-center mb-10 shadow-2xl shadow-emerald/30 group-hover:rotate-12 transition-transform">
                        <i data-lucide="calendar-check" class="w-10 h-10 text-white leading-none"></i>
                    </div>
                    <h3 class="text-3xl font-black mb-6 tracking-tight">Booking Logic</h3>
                    <p class="text-slate-500 font-semibold leading-relaxed">Streamlined departmental coordination through advanced appointment scheduling protocols.</p>
                </div>
                <div class="group p-12 bg-slate-50 rounded-[4rem] border border-transparent hover:border-emerald/20 transition-all hover:-translate-y-4">
                    <div class="w-20 h-20 bg-emerald rounded-3xl flex items-center justify-center mb-10 shadow-2xl shadow-emerald/30 group-hover:rotate-12 transition-transform">
                        <i data-lucide="wallet" class="w-10 h-10 text-white leading-none"></i>
                    </div>
                    <h3 class="text-3xl font-black mb-6 tracking-tight">Billing Engine</h3>
                    <p class="text-slate-400 font-semibold leading-relaxed">Integrated financial workflows designed to improve facility operational efficiency.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- FAQ Accordion -->
    <section id="faq" class="py-40 bg-slate-900 text-white rounded-t-[6rem]">
       <div class="max-w-4xl mx-auto px-4">
          <div class="text-center mb-24">
             <span class="text-emerald font-black text-sm tracking-[0.5em] uppercase opacity-70">Support Hub</span>
             <h2 class="text-5xl font-black mt-6 tracking-tight italic">Operations Q&A.</h2>
          </div>

          <div class="space-y-8">
             <div class="faq-item border border-white/10 rounded-[3rem] p-10 hover:bg-white/5 transition-all cursor-pointer group" onclick="this.classList.toggle('active')">
                <div class="flex items-center justify-between gap-10">
                   <h4 class="text-2xl font-bold group-hover:text-emerald transition-colors">How rigorous is the data security?</h4>
                   <div class="w-12 h-12 rounded-full bg-white/5 flex items-center justify-center shrink-0 group-hover:bg-emerald/10 transition-colors">
                      <i data-lucide="plus" class="w-7 h-7 text-emerald plus-icon"></i>
                      <i data-lucide="minus" class="w-7 h-7 text-emerald minus-icon"></i>
                   </div>
                </div>
                <div class="faq-answer">
                   <p class="text-slate-400 text-xl font-medium leading-relaxed pt-10">Clinix prioritizes absolute data integrity through multi-layer encryption and strict departmental access logs.</p>
                </div>
             </div>
             <div class="faq-item border border-white/10 rounded-[3rem] p-10 hover:bg-white/5 transition-all cursor-pointer group" onclick="this.classList.toggle('active')">
                <div class="flex items-center justify-between gap-10">
                   <h4 class="text-2xl font-bold group-hover:text-emerald transition-colors">Is onboarding provided for teams?</h4>
                   <div class="w-12 h-12 rounded-full bg-white/5 flex items-center justify-center shrink-0 group-hover:bg-emerald/10 transition-colors">
                      <i data-lucide="plus" class="w-7 h-7 text-emerald plus-icon"></i>
                      <i data-lucide="minus" class="w-7 h-7 text-emerald minus-icon"></i>
                   </div>
                </div>
                <div class="faq-answer">
                   <p class="text-slate-400 text-xl font-medium leading-relaxed pt-10">Every facility account receives 1-on-1 specialist training to ensure internal departmental workflows align with the system.</p>
                </div>
             </div>
          </div>
       </div>
    </section>

    <!-- Footer -->
    <footer class="bg-slate-900 pb-20 text-white pt-16">
        <div class="max-w-7xl mx-auto px-4 flex flex-col md:flex-row justify-between items-center gap-12 border-t border-white/5 pt-16">
            <div class="flex items-center gap-4">
                <i data-lucide="heart" class="w-10 h-10 text-emerald fill-emerald"></i>
                <span class="text-4xl font-black tracking-tighter uppercase italic text-emerald">Clinix.</span>
            </div>
            <div class="flex items-center gap-16 font-black text-[11px] text-slate-500 uppercase tracking-widest">
               <a href="#hero" class="hover:text-emerald transition">Home</a>
               <a href="#about" class="hover:text-emerald transition">Lifecycle</a>
               <a href="#features" class="hover:text-emerald transition">Modules</a>
               <a href="#faq" class="hover:text-emerald transition">Support</a>
            </div>
            <div class="text-[11px] font-black text-slate-700 uppercase tracking-[0.5em]">
                &copy; 2026 CLINIX PRECISION.
            </div>
        </div>
    </footer>

    <script>
        window.onload = function() {
            lucide.createIcons();
        };
    </script>
</body>
</html>