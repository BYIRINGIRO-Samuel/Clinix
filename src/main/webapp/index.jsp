<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" class="scroll-smooth">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clinix | Professional Patient Management</title>
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
    </style>
</head>

<body class="bg-white text-slate-900 overflow-x-hidden">

    <!-- Navbar -->
    <div class="fixed top-0 left-0 right-0 z-50 flex justify-center px-4 pt-8">
        <div class="max-w-7xl w-full flex items-center justify-between pointer-events-none gap-4">
            <div class="glass-pill px-5 py-2 rounded-full pointer-events-auto shadow-lg">
                <span class="w-2 h-2 bg-emerald-500 rounded-full animate-pulse inline-block mr-2"></span>
                <span class="text-[9px] font-black text-slate-500 uppercase tracking-widest leading-none">System Live</span>
            </div>
            <div class="glass-pill flex-1 max-w-2xl px-10 py-3 rounded-full flex items-center justify-between shadow-2xl pointer-events-auto border-2 border-emerald-50">
                <div class="flex items-center gap-3">
                    <i data-lucide="heart" class="w-6 h-6 text-emerald fill-emerald/10"></i>
                    <span class="text-xl font-black text-emerald uppercase tracking-tighter italic">Clinix</span>
                </div>
                <div class="flex items-center gap-8">
                    <a href="#hero" class="text-[10px] font-black text-emerald uppercase tracking-widest hover:opacity-70 transition">Home</a>
                    <a href="#about" class="text-[10px] font-black text-slate-400 uppercase tracking-widest hover:text-emerald transition">How it works</a>
                    <a href="#features" class="text-[10px] font-black text-slate-400 uppercase tracking-widest hover:text-emerald transition">Services</a>
                    <a href="#faq" class="text-[10px] font-black text-slate-400 uppercase tracking-widest hover:text-emerald transition">Questions</a>
                </div>
            </div>
            <div class="glass-pill px-5 py-2 rounded-full pointer-events-auto shadow-lg">
                <a href="signup.jsp" class="bg-emerald text-white px-5 py-1.5 rounded-full text-[10px] font-black uppercase tracking-widest shadow-lg shadow-emerald/20">Signup</a>
            </div>
        </div>
    </div>

    <!-- Hero Section (ADJUSTED CONTENT POSITION) -->
    <section id="hero" class="relative min-h-[85vh] flex items-center bg-white overflow-hidden">
        <div class="absolute top-0 right-0 w-[500px] h-[500px] bg-emerald/5 rounded-full blur-[120px] -translate-y-1/2 translate-x-1/2"></div>
        <div class="max-w-7xl mx-auto px-4 w-full z-10 pt-48 pb-10"> <!-- Added pt-48 to push content down -->
            <div class="max-w-2xl space-y-10 animate-in fade-in slide-in-from-left duration-1000">
                <div class="space-y-6">
                    <span class="text-emerald font-black text-[10px] tracking-[0.4em] uppercase px-4 py-1 bg-emerald-50 rounded-full border border-emerald-100">Patient Management Excellence</span>
                    <h1 class="text-5xl md:text-6xl lg:text-7xl font-black text-slate-900 leading-[1] tracking-tighter">
                        Manage Care <br /> 
                        <span class="text-emerald italic">Effortlessly.</span>
                    </h1>
                    <p class="text-xl md:text-2xl text-slate-500 font-medium leading-relaxed max-w-lg opacity-80">
                        Advanced handling of patient records, departmental coordination, and billing with highest data integrity.
                    </p>
                </div>
                <div class="flex items-center pt-4">
                    <a href="signup.jsp" class="px-14 py-6 bg-emerald text-white rounded-3xl font-black text-xl hover:bg-[#0b5948] transition-all hover:translate-y-[-5px] shadow-3xl shadow-emerald/30">
                        Register Facility
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- How it works -->
    <section id="about" class="py-32 bg-slate-50">
        <div class="max-w-7xl mx-auto px-4">
            <div class="flex flex-col lg:flex-row items-center gap-24">
                <div class="flex-1 space-y-10">
                    <div class="w-16 h-1.5 bg-emerald rounded-full"></div>
                    <h2 class="text-4xl md:text-5xl font-black text-slate-900 leading-tight">Simplified Records.</h2>
                    <p class="text-xl text-slate-500 font-medium leading-relaxed">
                        Clinix enables complete lifecycle management by automating departmental sync and maintaining well-organized patient records through a user-friendly experience.
                    </p>
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6 pt-6">
                        <div class="flex items-center gap-4 p-5 bg-white rounded-3xl border border-slate-100 shadow-sm">
                           <i data-lucide="shield-check" class="w-6 h-6 text-emerald"></i>
                           <span class="font-bold text-slate-700">Data Integrity</span>
                        </div>
                        <div class="flex items-center gap-4 p-5 bg-white rounded-3xl border border-slate-100 shadow-sm">
                           <i data-lucide="zap" class="w-6 h-6 text-emerald"></i>
                           <span class="font-bold text-slate-700">Instant Sync</span>
                        </div>
                    </div>
                </div>
                <div class="flex-1 relative animate-in slide-in-from-right duration-1000">
                    <div class="bg-white rounded-[4rem] p-6 shadow-3xl border-2 border-emerald-50">
                         <img src="https://images.unsplash.com/photo-1516549655169-df83a0774514?q=80&w=1200&auto=format&fit=crop" 
                              class="rounded-[3rem] w-full h-[500px] object-cover" alt="Clinical Management">
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Our Main Services (WITH ICONS) -->
    <section id="features" class="py-32 bg-white">
        <div class="max-w-7xl mx-auto px-4">
            <div class="text-center mb-24">
                <span class="text-emerald font-black text-xs tracking-[0.5em] uppercase">Core Modules</span>
                <h2 class="text-4xl md:text-6xl font-black mt-6 tracking-tight">System Solutions.</h2>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-3 gap-10">
                <div class="group p-12 bg-slate-50 rounded-[3rem] border border-transparent hover:border-emerald/20 transition-all hover:-translate-y-3">
                    <div class="w-20 h-20 bg-emerald rounded-[2rem] flex items-center justify-center mb-10 shadow-2xl shadow-emerald/20 transition-transform group-hover:rotate-12">
                        <i data-lucide="folder-check" class="w-10 h-10 text-white"></i>
                    </div>
                    <h3 class="text-3xl font-black mb-6">Patient Records</h3>
                    <p class="text-slate-500 font-semibold leading-relaxed">Efficient handling of EMR lifecycles while maintaining strict data integrity protocols.</p>
                </div>
                <div class="group p-12 bg-slate-50 rounded-[3rem] border border-transparent hover:border-emerald/20 transition-all hover:-translate-y-3">
                    <div class="w-20 h-20 bg-emerald rounded-[2rem] flex items-center justify-center mb-10 shadow-2xl shadow-emerald/20 transition-transform group-hover:rotate-12">
                        <i data-lucide="calendar-plus" class="w-10 h-10 text-white"></i>
                    </div>
                    <h3 class="text-3xl font-black mb-6">Appointments</h3>
                    <p class="text-slate-500 font-semibold leading-relaxed">Streamlined booking sync across all hospital departments and staff availability.</p>
                </div>
                <div class="group p-12 bg-slate-50 rounded-[3rem] border border-transparent hover:border-emerald/20 transition-all hover:-translate-y-3">
                    <div class="w-20 h-20 bg-emerald rounded-[2rem] flex items-center justify-center mb-10 shadow-2xl shadow-emerald/20 transition-transform group-hover:rotate-12">
                        <i data-lucide="credit-card" class="w-10 h-10 text-white"></i>
                    </div>
                    <h3 class="text-3xl font-black mb-6">Integrated Billing</h3>
                    <p class="text-slate-500 font-semibold leading-relaxed">Seamless coordination of billing processes to improve operational workflow efficiency.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Frequently Asked Questions (ACCORDION DESIGN) -->
    <section id="faq" class="py-40 bg-slate-900 text-white rounded-t-[5rem]">
       <div class="max-w-3xl mx-auto px-4">
          <div class="text-center mb-24">
             <h2 class="text-4xl md:text-5xl font-black tracking-tight italic">Support Desk.</h2>
          </div>

          <div class="space-y-6">
             <!-- FAQ Item 1 -->
             <div class="faq-item border border-white/10 rounded-3xl p-8 hover:bg-white/5 transition-colors cursor-pointer group" onclick="this.classList.toggle('active')">
                <div class="flex items-center justify-between gap-6">
                   <h4 class="text-xl md:text-2xl font-bold group-hover:text-emerald transition-colors">How secure are the patient records?</h4>
                   <div class="w-10 h-10 rounded-full bg-white/5 flex items-center justify-center shrink-0 group-hover:bg-emerald/10 transition-colors">
                      <i data-lucide="plus" class="w-6 h-6 text-emerald plus-icon"></i>
                      <i data-lucide="minus" class="w-6 h-6 text-emerald minus-icon"></i>
                   </div>
                </div>
                <div class="faq-answer">
                   <p class="text-slate-400 font-medium leading-relaxed pt-6">We maintain highest data integrity levels across all patient life cycle records with encrypted distributed node security.</p>
                </div>
             </div>

             <!-- FAQ Item 2 -->
             <div class="faq-item border border-white/10 rounded-3xl p-8 hover:bg-white/5 transition-colors cursor-pointer group" onclick="this.classList.toggle('active')">
                <div class="flex items-center justify-between gap-6">
                   <h4 class="text-xl md:text-2xl font-bold group-hover:text-emerald transition-colors">Is training provided for the staff?</h4>
                   <div class="w-10 h-10 rounded-full bg-white/5 flex items-center justify-center shrink-0 group-hover:bg-emerald/10 transition-colors">
                      <i data-lucide="plus" class="w-6 h-6 text-emerald plus-icon"></i>
                      <i data-lucide="minus" class="w-6 h-6 text-emerald minus-icon"></i>
                   </div>
                </div>
                <div class="faq-answer">
                   <p class="text-slate-400 font-medium leading-relaxed pt-6">Absolutely. Clinix offers comprehensive onboarding and 24/7 technical assistance to ensure smooth workflow implementation.</p>
                </div>
             </div>

             <!-- FAQ Item 3 -->
             <div class="faq-item border border-white/10 rounded-3xl p-8 hover:bg-white/5 transition-colors cursor-pointer group" onclick="this.classList.toggle('active')">
                <div class="flex items-center justify-between gap-6">
                   <h4 class="text-xl md:text-2xl font-bold group-hover:text-emerald transition-colors">Can I access records from mobile?</h4>
                   <div class="w-10 h-10 rounded-full bg-white/5 flex items-center justify-center shrink-0 group-hover:bg-emerald/10 transition-colors">
                      <i data-lucide="plus" class="w-6 h-6 text-emerald plus-icon"></i>
                      <i data-lucide="minus" class="w-6 h-6 text-emerald minus-icon"></i>
                   </div>
                </div>
                <div class="faq-answer">
                   <p class="text-slate-400 font-medium leading-relaxed pt-6">Yes, the Clinix interface is fully responsive and optimized for mobile/tablet healthcare environments.</p>
                </div>
             </div>

             <!-- FAQ Item 4 -->
             <div class="faq-item border border-white/10 rounded-3xl p-8 hover:bg-white/5 transition-colors cursor-pointer group" onclick="this.classList.toggle('active')">
                <div class="flex items-center justify-between gap-6">
                   <h4 class="text-xl md:text-2xl font-bold group-hover:text-emerald transition-colors">Does it support departmental billing?</h4>
                   <div class="w-10 h-10 rounded-full bg-white/5 flex items-center justify-center shrink-0 group-hover:bg-emerald/10 transition-colors">
                      <i data-lucide="plus" class="w-6 h-6 text-emerald plus-icon"></i>
                      <i data-lucide="minus" class="w-6 h-6 text-emerald minus-icon"></i>
                   </div>
                </div>
                <div class="faq-answer">
                   <p class="text-slate-400 font-medium leading-relaxed pt-6">Clinix facilitates seamless departmental coordination to capture every billable medical event in real-time.</p>
                </div>
             </div>

          </div>
       </div>
    </section>

    <!-- Footer -->
    <footer class="bg-slate-900 pb-16 text-white pt-10">
        <div class="max-w-7xl mx-auto px-4 flex flex-col md:flex-row justify-between items-center gap-8 border-t border-white/5 pt-12">
            <div class="flex items-center gap-3">
                <i data-lucide="heart" class="w-8 h-8 text-emerald fill-emerald"></i>
                <span class="text-3xl font-black tracking-tighter uppercase italic text-emerald">Clinix.</span>
            </div>
            <div class="flex items-center gap-12 font-bold text-[10px] text-slate-500 uppercase tracking-widest">
               <a href="#hero" class="hover:text-emerald transition">Home</a>
               <a href="#about" class="hover:text-emerald transition">How it works</a>
               <a href="#features" class="hover:text-emerald transition">Services</a>
               <a href="#faq" class="hover:text-emerald transition">Questions</a>
            </div>
            <div class="text-[11px] font-black text-slate-600 uppercase tracking-[0.5em]">
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