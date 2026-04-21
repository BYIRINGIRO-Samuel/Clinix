<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" class="scroll-smooth">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clinix | Integrated Medical Hub</title>
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
        
        /* 3D Geometric Diamond Texture (White & Green) */
        .geometric-texture {
            background: 
                linear-gradient(135deg, #f8fafc 25%, transparent 25%) -50px 0,
                linear-gradient(225deg, #f8fafc 25%, transparent 25%) -50px 0,
                linear-gradient(315deg, #f8fafc 25%, transparent 25%),
                linear-gradient(45deg, #f8fafc 25%, transparent 25%);
            background-size: 100px 100px;
            background-color: #12876d;
            mask-image: linear-gradient(to left, white 20%, transparent 100%);
            opacity: 0.15;
        }

        .diamond-mesh {
            background-image: 
                linear-gradient(30deg, #12876d 12%, transparent 12.5%, transparent 87%, #12876d 87.5%, #12876d),
                linear-gradient(150deg, #12876d 12%, transparent 12.5%, transparent 87%, #12876d 87.5%, #12876d),
                linear-gradient(30deg, #12876d 12%, transparent 12.5%, transparent 87%, #12876d 87.5%, #12876d),
                linear-gradient(150deg, #12876d 12%, transparent 12.5%, transparent 87%, #12876d 87.5%, #12876d),
                linear-gradient(60deg, #12876d77 25%, transparent 25.5%, transparent 75%, #12876d77 75%, #12876d77),
                linear-gradient(60deg, #12876d77 25%, transparent 25.5%, transparent 75%, #12876d77 75%, #12876d77);
            background-size: 80px 140px;
            background-position: 0 0, 0 0, 40px 70px, 40px 70px, 0 0, 40px 70px;
            mask-image: linear-gradient(to left, black 30%, transparent 90%);
        }
    </style>
</head>

<body class="bg-white text-slate-900 overflow-x-hidden">

    <!-- Navbar -->
    <div class="fixed top-0 left-0 right-0 z-50 flex justify-center px-4 pt-10">
        <div class="max-w-7xl w-full flex items-center justify-between pointer-events-none gap-6">
            <div class="glass-pill px-6 py-2.5 rounded-full pointer-events-auto shadow-lg flex items-center gap-2">
                <span class="w-2 h-2 bg-emerald-500 rounded-full animate-pulse"></span>
                <span class="text-[9px] font-black text-slate-500 uppercase tracking-widest leading-none italic">Secure Server</span>
            </div>

            <div class="glass-pill flex-1 max-w-2xl px-12 py-4 rounded-full flex items-center justify-between shadow-2xl pointer-events-auto border-2 border-emerald-50">
                <div class="flex items-center gap-3">
                    <i data-lucide="heart" class="w-7 h-7 text-emerald fill-emerald/10"></i>
                    <span class="text-2xl font-black text-emerald uppercase tracking-tighter italic">Clinix</span>
                </div>
                <div class="flex items-center gap-10">
                    <a href="#hero" class="text-[10px] font-black text-emerald uppercase tracking-[0.2em] hover:opacity-70 transition">Home</a>
                    <a href="#about" class="text-[10px] font-black text-slate-500 uppercase tracking-[0.2em] hover:text-emerald transition">Process</a>
                    <a href="#features" class="text-[10px] font-black text-slate-500 uppercase tracking-[0.2em] hover:text-emerald transition">Modules</a>
                    <a href="#faq" class="text-[10px] font-black text-slate-500 uppercase tracking-[0.2em] hover:text-emerald transition">Support</a>
                </div>
            </div>

            <div class="bg-emerald px-10 py-4 rounded-full pointer-events-auto shadow-2xl shadow-emerald-500/40 flex items-center justify-center hover:scale-105 transition-all">
                <a href="signup.jsp" class="text-white text-[11px] font-black uppercase tracking-widest">Signup Free</a>
            </div>
        </div>
    </div>

    <!-- Hero Section -->
    <section id="hero" class="relative min-h-screen flex items-center bg-white overflow-hidden">
        <!-- INNOVATIVE DIAMOND MESH TEXTURE (Visible Green & White) -->
        <div class="absolute top-0 right-0 w-[55%] h-full diamond-mesh opacity-10 pointer-events-none"></div>
        <div class="absolute top-0 right-0 w-[600px] h-[600px] bg-emerald/10 rounded-full blur-[180px] -translate-y-1/3 translate-x-1/3"></div>

        <div class="max-w-7xl mx-auto px-4 w-full z-10 pt-48 pb-10">
            <div class="max-w-3xl space-y-12 animate-in fade-in slide-in-from-left duration-1000">
                <div class="space-y-8">
                    <span class="inline-block text-emerald font-black text-[11px] tracking-[0.6em] uppercase px-5 py-2 bg-emerald-50 rounded-xl border border-emerald-100 shadow-sm italic">Precision Medical Care</span>
                    <h1 class="text-6xl md:text-7xl lg:text-8xl font-black text-slate-900 leading-[0.95] tracking-tighter">
                        Integrated Care. <br /> 
                        <span class="text-emerald italic underline decoration-8 decoration-emerald-100 underline-offset-8">Precision</span> Logic.
                    </h1>
                    <p class="text-xl md:text-2xl text-slate-500 font-medium leading-relaxed max-w-xl opacity-90">
                        A robust platform for patient lifecycle management, departmental coordination, and automated billing records.
                    </p>
                </div>
                <div class="flex items-center pt-8">
                    <a href="signup.jsp" class="px-16 py-7 bg-emerald text-white rounded-[3rem] font-black text-xl hover:bg-[#0b5948] transition-all hover:translate-y-[-5px] shadow-[0_30px_60px_rgba(18,135,109,0.35)] flex items-center gap-6">
                        Register Facility <i data-lucide="plus-circle" class="w-8 h-8"></i>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- How it works -->
    <section id="about" class="py-40 bg-slate-50">
        <div class="max-w-7xl mx-auto px-4">
            <div class="flex flex-col lg:flex-row items-center gap-24">
                <div class="flex-1 space-y-12">
                    <div class="w-24 h-2.5 bg-emerald rounded-full"></div>
                    <h2 class="text-5xl md:text-6xl font-black text-slate-900 leading-tight">Lifecycle Flow.</h2>
                    <p class="text-2xl text-slate-500 font-medium leading-relaxed max-w-xl opacity-80 italic">
                        "Streamline healthcare operations through efficient handling of patient records while maintaining EMR architectures."
                    </p>
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-8 pt-8">
                        <div class="flex items-center gap-5 p-7 bg-white rounded-[2.5rem] border border-slate-100 shadow-sm transition-transform hover:scale-105">
                           <i data-lucide="shield-check" class="w-10 h-10 text-emerald"></i>
                           <span class="font-bold text-slate-700 text-xl">Integrity</span>
                        </div>
                        <div class="flex items-center gap-5 p-7 bg-white rounded-[2.5rem] border border-slate-100 shadow-sm transition-transform hover:scale-105">
                           <i data-lucide="activity" class="w-10 h-10 text-emerald"></i>
                           <span class="font-bold text-slate-700 text-xl">Sync</span>
                        </div>
                    </div>
                </div>
                <div class="flex-1 relative animate-in slide-in-from-right duration-1000">
                    <div class="bg-emerald rounded-[5rem] p-4 shadow-[0_50px_100px_rgba(18,135,109,0.15)]">
                        <img src="https://images.unsplash.com/photo-1516549655169-df83a0774514?q=80&w=1200&auto=format&fit=crop" 
                             class="rounded-[4.8rem] w-full h-[600px] object-cover" alt="Clinical Context">
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Our Main Services -->
    <section id="features" class="py-40 bg-white">
        <div class="max-w-7xl mx-auto px-4">
            <div class="text-center mb-32">
                <span class="text-emerald font-black text-sm tracking-[0.7em] uppercase">Core Capabilities</span>
                <h2 class="text-5xl md:text-7xl font-black mt-6 tracking-tighter">Workflow Intelligence.</h2>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-3 gap-12">
                <div class="group p-14 bg-slate-50 rounded-[4rem] border-2 border-transparent hover:border-emerald/20 transition-all hover:-translate-y-5">
                    <div class="w-24 h-24 bg-emerald rounded-[2.5rem] flex items-center justify-center mb-12 shadow-2xl shadow-emerald/40 group-hover:rotate-12 transition-transform">
                        <i data-lucide="folder-heart" class="w-12 h-12 text-white"></i>
                    </div>
                    <h3 class="text-4xl font-black mb-8 tracking-tight">Records Hub</h3>
                    <p class="text-slate-500 font-semibold text-lg leading-relaxed">Systematic handling of records refocusing on medical data integrity.</p>
                </div>
                <div class="group p-14 bg-slate-50 rounded-[4rem] border-2 border-transparent hover:border-emerald/20 transition-all hover:-translate-y-5 translate-y-12">
                    <div class="w-24 h-24 bg-emerald rounded-[2.5rem] flex items-center justify-center mb-12 shadow-2xl shadow-emerald/40 group-hover:rotate-12 transition-transform">
                        <i data-lucide="calendar-plus" class="w-12 h-12 text-white"></i>
                    </div>
                    <h3 class="text-4xl font-black mb-8 tracking-tight">Booking Logic</h3>
                    <p class="text-slate-500 font-semibold text-lg leading-relaxed">Streamlined departmental sync through advanced scheduling protocols.</p>
                </div>
                <div class="group p-14 bg-slate-50 rounded-[4rem] border-2 border-transparent hover:border-emerald/20 transition-all hover:-translate-y-5">
                    <div class="w-24 h-24 bg-emerald rounded-[2.5rem] flex items-center justify-center mb-12 shadow-2xl shadow-emerald/40 group-hover:rotate-12 transition-transform">
                        <i data-lucide="wallet-cards" class="w-12 h-12 text-white"></i>
                    </div>
                    <h3 class="text-4xl font-black mb-8 tracking-tight">Billing Engine</h3>
                    <p class="text-slate-500 font-semibold text-lg leading-relaxed">Integrated workflows designed to improve facility operational stability.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- FAQ Accordion -->
    <section id="faq" class="py-40 bg-slate-900 text-white rounded-t-[7rem]">
       <div class="max-w-4xl mx-auto px-4">
          <div class="text-center mb-24">
             <span class="text-emerald font-black text-sm tracking-[0.6em] uppercase opacity-70">Support Hub</span>
             <h2 class="text-5xl font-black mt-6 tracking-tight italic italic">Portal Q&A.</h2>
          </div>

          <div class="space-y-8">
             <div class="faq-item border border-white/10 rounded-[3.5rem] p-12 hover:bg-white/5 transition-all cursor-pointer group" onclick="this.classList.toggle('active')">
                <div class="flex items-center justify-between gap-10">
                   <h4 class="text-3xl font-bold group-hover:text-emerald transition-colors">How rigorous is data security?</h4>
                   <div class="w-14 h-14 rounded-full bg-white/5 flex items-center justify-center shrink-0 group-hover:bg-emerald/10 transition-colors">
                      <i data-lucide="plus" class="w-8 h-8 text-emerald plus-icon"></i>
                      <i data-lucide="minus" class="w-8 h-8 text-emerald minus-icon"></i>
                   </div>
                </div>
                <div class="faq-answer">
                   <p class="text-slate-400 text-2xl font-medium leading-relaxed pt-12">Clinix prioritizes data integrity through multi-layer encryption and strict departmental access logs.</p>
                </div>
             </div>
             <div class="faq-item border border-white/10 rounded-[3.5rem] p-12 hover:bg-white/5 transition-all cursor-pointer group" onclick="this.classList.toggle('active')">
                <div class="flex items-center justify-between gap-10">
                   <h4 class="text-3xl font-bold group-hover:text-emerald transition-colors">Is onboarding provided?</h4>
                   <div class="w-14 h-14 rounded-full bg-white/5 flex items-center justify-center shrink-0 group-hover:bg-emerald/10 transition-colors">
                      <i data-lucide="plus" class="w-8 h-8 text-emerald plus-icon"></i>
                      <i data-lucide="minus" class="w-8 h-8 text-emerald minus-icon"></i>
                   </div>
                </div>
                <div class="faq-answer">
                   <p class="text-slate-400 text-2xl font-medium leading-relaxed pt-12">Every facility account receives 1-on-1 training to ensure departmental workflows align with the system.</p>
                </div>
             </div>
          </div>
       </div>
    </section>

    <!-- Footer -->
    <footer class="bg-slate-900 pb-24 text-white pt-20">
        <div class="max-w-7xl mx-auto px-4 flex flex-col md:flex-row justify-between items-center gap-16 border-t border-white/5 pt-20">
            <div class="flex items-center gap-5">
                <i data-lucide="heart" class="w-12 h-12 text-emerald fill-emerald"></i>
                <span class="text-5xl font-black tracking-tighter uppercase italic text-emerald">Clinix.</span>
            </div>
            <div class="flex items-center gap-20 font-black text-[12px] text-slate-500 uppercase tracking-widest">
               <a href="#hero" class="hover:text-emerald transition">Home</a>
               <a href="#about" class="hover:text-emerald transition">Process</a>
               <a href="#features" class="hover:text-emerald transition">Services</a>
               <a href="#faq" class="hover:text-emerald transition">Support</a>
            </div>
            <div class="text-[12px] font-black text-slate-700 uppercase tracking-[0.6em]">
                &copy; 2026 CLINIX.
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