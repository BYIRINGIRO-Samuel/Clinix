<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" class="scroll-smooth">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clinix | Integrated Patient Solutions</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <script defer src="https://unpkg.com/lucide@latest"></script>
    <style>
        body { font-family: 'Poppins', sans-serif; }
        .glass-pill { background: rgba(255, 255, 255, 0.98); backdrop-filter: blur(10px); border: 1px solid rgba(18, 135, 109, 0.1); }
        .hero-bg {
            background-image: linear-gradient(to right, rgba(255, 255, 255, 0.95) 20%, rgba(255, 255, 255, 0) 100%), url('https://images.unsplash.com/photo-1538108149393-fdfd81895907?q=80&w=2560&auto=format&fit=crop');
            background-size: cover;
            background-position: center;
        }
    </style>
</head>

<body class="bg-white text-slate-900 overflow-x-hidden">

    <!-- 3-Part Navbar -->
    <div class="fixed top-0 left-0 right-0 z-50 flex justify-center px-4 pt-8">
        <div class="max-w-7xl w-full flex items-center justify-between pointer-events-none">
            
            <div class="glass-pill px-6 py-2.5 rounded-full flex items-center gap-3 shadow-xl pointer-events-auto">
                <span class="w-2 h-2 bg-emerald-500 rounded-full animate-pulse"></span>
                <span class="text-[10px] font-black text-slate-500 uppercase tracking-widest italic">Live Operations</span>
            </div>

            <div class="glass-pill px-8 py-3 rounded-full flex items-center gap-8 shadow-2xl pointer-events-auto border-2 border-emerald-50">
                <div class="flex items-center gap-3 border-r border-slate-100 pr-6 mr-2">
                    <div class="w-8 h-8 bg-[#12876d] rounded-xl flex items-center justify-center">
                        <i data-lucide="cross" class="w-5 h-5 text-white"></i>
                    </div>
                    <span class="text-lg font-black text-[#12876d] uppercase tracking-tighter">Clinix</span>
                </div>
                <div class="flex items-center gap-6">
                    <a href="#hero" class="text-xs font-black text-[#12876d] uppercase tracking-widest hover:opacity-70 transition">Home</a>
                    <a href="#about" class="text-xs font-black text-slate-400 uppercase tracking-widest hover:text-[#12876d] transition">Process</a>
                    <a href="#features" class="text-xs font-black text-slate-400 uppercase tracking-widest hover:text-[#12876d] transition">Modules</a>
                    <a href="#faq" class="text-xs font-black text-slate-400 uppercase tracking-widest hover:text-[#12876d] transition">Support</a>
                </div>
            </div>

            <div class="glass-pill px-4 py-2 rounded-full flex items-center gap-4 shadow-xl pointer-events-auto">
                <a href="login.jsp" class="text-xs font-black text-slate-500 uppercase tracking-widest hover:text-[#12876d] transition">Login</a>
                <a href="signup.jsp" class="bg-[#12876d] text-white px-5 py-2 rounded-full text-xs font-black uppercase tracking-widest shadow-lg shadow-emerald-500/20">Signup</a>
            </div>

        </div>
    </div>

    <!-- Hero Section -->
    <section id="hero" class="relative min-h-[90vh] flex items-center hero-bg">
        <div class="max-w-7xl mx-auto px-4 w-full z-10 pt-40 pb-20">
            <div class="max-w-3xl space-y-10 animate-in fade-in slide-in-from-left duration-1000">
                <div class="space-y-6">
                    <span class="text-[#12876d] font-black text-xs tracking-[0.5em] uppercase px-4 py-1 bg-emerald-50 rounded-full border border-emerald-100">Patient Centered</span>
                    <h1 class="text-5xl md:text-6xl lg:text-7xl font-black text-slate-900 leading-[1.1] tracking-tight">
                        Streamlining <br /> 
                        <span class="text-[#12876d]">Healthcare</span> Excellence.
                    </h1>
                    <p class="text-lg md:text-xl text-slate-500 font-medium leading-relaxed max-w-xl opacity-90">
                        A comprehensive Patient Management platform built to improve coordination across departments while maintaining the highest and secure EMR data integrity.
                    </p>
                </div>

                <div class="flex flex-col sm:flex-row items-center gap-8 pt-4">
                    <a href="signup.jsp" class="w-full sm:w-auto px-12 py-5 bg-[#12876d] text-white rounded-2xl font-black text-lg hover:bg-[#0b5948] transition-all hover:translate-y-[-5px] shadow-2xl shadow-emerald-500/20 flex items-center justify-center gap-4 group">
                        Get Started <i data-lucide="arrow-right" class="w-5 h-5 group-hover:translate-x-2 transition-transform"></i>
                    </a>
                    <button class="flex items-center gap-4 group">
                        <div class="w-14 h-14 rounded-full border border-emerald-100 bg-white flex items-center justify-center shadow-md group-hover:bg-emerald-50 transition-colors">
                            <i data-lucide="play" class="w-5 h-5 text-[#12876d] fill-[#12876d] ml-1"></i>
                        </div>
                        <span class="font-bold text-slate-600 transition-colors group-hover:text-[#12876d]">Quick Tour</span>
                    </button>
                </div>
            </div>
        </div>
    </section>

    <!-- Process Section -->
    <section id="about" class="py-32 bg-white">
        <div class="max-w-7xl mx-auto px-4">
            <div class="flex flex-col lg:flex-row items-center gap-20">
                <div class="flex-1 space-y-8">
                    <span class="text-[#12876d] font-black text-xs tracking-widest uppercase">The Process</span>
                    <h2 class="text-3xl md:text-5xl font-black text-slate-900 leading-tight tracking-tight">Efficient <span class="text-[#12876d]">Records</span> Management.</h2>
                    <p class="text-base md:text-lg text-slate-500 font-medium leading-relaxed max-w-lg">
                        Streamline healthcare operations through efficient handling of patient lifecycle. From appointments to prescriptions, we prioritize a user-friendly experience to enhance overall healthcare management.
                    </p>
                    <div class="space-y-4 pt-4">
                        <div class="flex items-center gap-4 p-4 bg-slate-50 rounded-2xl border border-slate-100">
                           <i data-lucide="check-circle-2" class="w-6 h-6 text-[#12876d]"></i>
                           <span class="font-bold text-sm text-slate-700">Departmental Coordination</span>
                        </div>
                        <div class="flex items-center gap-4 p-4 bg-slate-50 rounded-2xl border border-slate-100">
                           <i data-lucide="check-circle-2" class="w-6 h-6 text-[#12876d]"></i>
                           <span class="font-bold text-sm text-slate-700">Billing Logic Integration</span>
                        </div>
                    </div>
                </div>
                <div class="flex-1 relative animate-in slide-in-from-right duration-1000">
                    <!-- Updated Image Link for Reliability -->
                    <div class="bg-emerald-50 rounded-[3rem] p-10 overflow-hidden shadow-inner">
                        <img src="https://images.unsplash.com/photo-1519494140681-891f9380241b?q=80&w=2000&auto=format&fit=crop" class="rounded-[2rem] shadow-2xl hover:scale-[1.03] transition-transform duration-500" alt="Process Diagnostic">
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Features Section -->
    <section id="features" class="py-32 bg-slate-50">
        <div class="max-w-7xl mx-auto px-4 text-center">
            <div class="mb-20">
                <span class="text-[#12876d] font-black text-xs tracking-[0.3em] uppercase">Modules</span>
                <h2 class="text-4xl md:text-5xl font-black mt-4 tracking-tighter">System <span class="text-[#12876d]">Core.</span></h2>
            </div>

            <div class="w-full overflow-x-auto bg-white rounded-[3rem] shadow-2xl border border-slate-200 overflow-hidden">
                <div class="min-w-[800px]">
                   <div class="grid grid-cols-12 bg-slate-50 border-b border-slate-100 py-6 px-10">
                      <div class="col-span-1 text-[10px] font-black text-slate-400 uppercase tracking-widest">Code</div>
                      <div class="col-span-4 text-[10px] font-black text-slate-400 uppercase tracking-widest">Medical Module</div>
                      <div class="col-span-4 text-[10px] font-black text-slate-400 uppercase tracking-widest">Functionality Profile</div>
                      <div class="col-span-3 text-[10px] font-black text-slate-400 uppercase tracking-widest">Status</div>
                   </div>

                   <div class="divide-y divide-slate-50 px-6">
                      <div class="grid grid-cols-12 py-8 px-4 items-center hover:bg-emerald-50/50 transition-colors group rounded-2xl my-2">
                           <div class="col-span-1 text-lg font-black text-slate-300 group-hover:text-[#12876d]">M1</div>
                           <div class="col-span-4 font-bold text-slate-800 pr-10 italic">In-Patient Records</div>
                           <div class="col-span-4 text-slate-500 text-sm font-medium pr-10 leading-relaxed">Handling patient lifecycles and records with complete integrity.</div>
                           <div class="col-span-3">
                              <span class="bg-emerald-100/60 text-[#12876d] px-4 py-1.5 rounded-full text-[10px] font-black tracking-widest uppercase">Verified</span>
                           </div>
                      </div>
                      <div class="grid grid-cols-12 py-8 px-4 items-center hover:bg-emerald-50/50 transition-colors group rounded-2xl my-2">
                           <div class="col-span-1 text-lg font-black text-slate-300 group-hover:text-[#12876d]">M2</div>
                           <div class="col-span-4 font-bold text-slate-800 pr-10 italic">Smart Appointments</div>
                           <div class="col-span-4 text-slate-500 text-sm font-medium pr-10 leading-relaxed">Efficient scheduling across staff and departments seamlessly.</div>
                           <div class="col-span-3">
                              <span class="bg-emerald-100/60 text-[#12876d] px-4 py-1.5 rounded-full text-[10px] font-black tracking-widest uppercase">Active Sync</span>
                           </div>
                      </div>
                      <div class="grid grid-cols-12 py-8 px-4 items-center hover:bg-emerald-50/50 transition-colors group rounded-2xl my-2">
                           <div class="col-span-1 text-lg font-black text-slate-300 group-hover:text-[#12876d]">M3</div>
                           <div class="col-span-4 font-bold text-slate-800 pr-10 italic">Billing & Invoicing</div>
                           <div class="col-span-4 text-slate-500 text-sm font-medium pr-10 leading-relaxed">Integrated workflows to improve financial management and speed.</div>
                           <div class="col-span-3">
                              <span class="bg-emerald-100/60 text-[#12876d] px-4 py-1.5 rounded-full text-[10px] font-black tracking-widest uppercase">Ready</span>
                           </div>
                      </div>
                   </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Support Section -->
    <section id="faq" class="py-32">
       <div class="max-w-4xl mx-auto px-4">
          <div class="text-center mb-24">
             <span class="text-slate-400 font-bold text-sm tracking-widest uppercase">Q&A</span>
             <h2 class="text-4xl md:text-5xl font-black mt-4">Support Center.</h2>
          </div>

          <div class="space-y-6">
             <div class="p-8 bg-slate-50 rounded-[2.5rem] border border-slate-100 hover:border-[#12876d] transition-all group">
                 <h4 class="text-xl font-bold mb-4 flex items-center gap-4 text-slate-800">
                    <span class="w-8 h-8 rounded-lg bg-emerald-100 flex items-center justify-center text-[#12876d] text-xs">01</span>
                    Does Clinix follow global security norms?
                 </h4>
                 <p class="text-slate-500 leading-relaxed font-medium pl-12 italic">Absolutely. We prioritize EHR/EMR data integrity with enterprise-level encryption and strict departmental access logs.</p>
             </div>
             <div class="p-8 bg-slate-50 rounded-[2.5rem] border border-slate-100 hover:border-[#12876d] transition-all group">
                 <h4 class="text-xl font-bold mb-4 flex items-center gap-4 text-slate-800">
                    <span class="w-8 h-8 rounded-lg bg-emerald-100 flex items-center justify-center text-[#12876d] text-xs">02</span>
                    How works the department coordination?
                 </h4>
                 <p class="text-slate-500 leading-relaxed font-medium pl-12 italic">Clinix integrates every department—from lab to billing—onto a unified medical platform for seamless patient lifecycle tracking.</p>
             </div>
          </div>
       </div>
    </section>

    <!-- Clear Robust Footer -->
    <footer class="bg-slate-900 pt-32 pb-16 text-white overflow-hidden relative">
        <div class="absolute -top-24 -left-24 w-96 h-96 bg-[#12876d]/10 rounded-full blur-[120px]"></div>
        <div class="max-w-7xl mx-auto px-4 relative">
            <div class="grid grid-cols-1 md:grid-cols-4 gap-16 pb-20 items-start">
                
                <div class="space-y-8">
                    <div class="flex items-center gap-3">
                        <div class="w-10 h-10 bg-[#12876d] rounded-xl flex items-center justify-center rotate-6">
                            <i data-lucide="cross" class="w-6 h-6 text-white"></i>
                        </div>
                        <span class="text-3xl font-black tracking-tighter uppercase italic text-emerald-400">Clinix</span>
                    </div>
                    <p class="text-slate-400 text-base font-medium leading-relaxed">
                        Streamline healthcare operations with a comprehensive patient management ecosystem focusing on data integrity and specialized workflow efficiency.
                    </p>
                </div>

                <div>
                    <h4 class="text-lg font-black mb-8 border-b-2 border-emerald-500 w-fit">Services</h4>
                    <ul class="space-y-6 text-slate-400 font-bold text-sm">
                        <li><a href="#hero" class="hover:text-emerald-400 transition">EMR Console</a></li>
                        <li><a href="#features" class="hover:text-emerald-400 transition">Smart Scheduling</a></li>
                        <li><a href="#about" class="hover:text-emerald-400 transition">Medical Billing</a></li>
                    </ul>
                </div>

                <div>
                    <h4 class="text-lg font-black mb-8 border-b-2 border-emerald-500 w-fit">Company</h4>
                    <ul class="space-y-6 text-slate-400 font-bold text-sm">
                        <li><a href="#" class="hover:text-emerald-400 transition">Healthcare News</a></li>
                        <li><a href="#" class="hover:text-emerald-400 transition">Team Access</a></li>
                        <li><a href="#" class="hover:text-emerald-400 transition">Portal Status</a></li>
                    </ul>
                </div>

                <div>
                    <h4 class="text-lg font-black mb-8 border-b-2 border-emerald-500 w-fit">Compliance</h4>
                    <ul class="space-y-6 text-slate-400 font-bold text-sm">
                        <li><a href="#" class="hover:text-emerald-400 transition">Privacy Policy</a></li>
                        <li><a href="#" class="hover:text-emerald-400 transition">Security Terms</a></li>
                        <li><a href="#" class="hover:text-emerald-400 transition">GDPR Alignment</a></li>
                    </ul>
                </div>
            </div>

            <div class="border-t border-white/5 pt-12 flex flex-col md:flex-row justify-between items-center gap-8">
                <div class="flex items-center gap-10">
                    <a href="#" class="text-slate-500 hover:text-white transition"><i data-lucide="twitter" class="w-5 h-5"></i></a>
                    <a href="#" class="text-slate-500 hover:text-white transition"><i data-lucide="linkedin" class="w-5 h-5"></i></a>
                    <a href="#" class="text-slate-500 hover:text-white transition"><i data-lucide="github" class="w-5 h-5"></i></a>
                </div>
                <span class="text-slate-500 font-bold text-xs tracking-[0.4em] uppercase text-center md:text-right">
                    &copy; 2026 CLINIX PRECISION PLATFORM. <br class="md:hidden"/> All rights reserved.
                </span>
            </div>
        </div>
    </footer>

    <script>
        lucide.createIcons();
    </script>
</body>
</html>