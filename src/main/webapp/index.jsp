<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" class="scroll-smooth">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clinix | Clinical Lifecycle Management</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <script defer src="https://unpkg.com/lucide@latest"></script>
    <style>
        body { font-family: 'Poppins', sans-serif; }
        .glass-pill { background: rgba(255, 255, 255, 0.98); backdrop-filter: blur(10px); border: 1px solid rgba(18, 135, 109, 0.1); }
        .hero-bg {
            background-image: linear-gradient(to right, rgba(255, 255, 255, 0.95) 20%, rgba(255, 255, 255, 0) 100%), url('https://images.unsplash.com/photo-1516549655169-df83a0774514?q=80&w=2000&auto=format&fit=crop');
            background-size: cover;
            background-position: center;
        }
    </style>
</head>

<body class="bg-white text-slate-900 overflow-x-hidden">

    <!-- 3-Part Navbar with Auth Integration -->
    <div class="fixed top-0 left-0 right-0 z-50 flex justify-center px-4 pt-10">
        <div class="max-w-7xl w-full flex items-center justify-between pointer-events-none">
            
            <!-- Left Pill -->
            <div class="glass-pill px-6 py-3 rounded-full flex items-center gap-3 shadow-xl pointer-events-auto">
                <span class="w-2.5 h-2.5 bg-emerald-500 rounded-full"></span>
                <span class="text-[10px] font-black text-slate-500 uppercase tracking-widest">Medical Precision 2026</span>
            </div>

            <!-- Center Pill (Logo + Links) -->
            <div class="glass-pill px-8 py-3 rounded-full flex items-center gap-10 shadow-2xl pointer-events-auto border-4 border-emerald-50">
                <div class="flex items-center gap-3 border-r border-slate-100 pr-6 mr-4">
                    <div class="w-8 h-8 bg-[#12876d] rounded-xl flex items-center justify-center">
                        <i data-lucide="cross" class="w-5 h-5 text-white"></i>
                    </div>
                    <span class="text-xl font-black text-[#12876d] uppercase tracking-tighter italic">Clinix</span>
                </div>
                <div class="flex items-center gap-8">
                    <a href="#hero" class="text-xs font-black text-[#12876d] uppercase tracking-widest hover:opacity-70 transition">Home</a>
                    <a href="#about" class="text-xs font-black text-slate-400 uppercase tracking-widest hover:text-[#12876d] transition">Process</a>
                    <a href="#features" class="text-xs font-black text-slate-400 uppercase tracking-widest hover:text-[#12876d] transition">Modules</a>
                    <a href="#faq" class="text-xs font-black text-slate-400 uppercase tracking-widest hover:text-[#12876d] transition">Support</a>
                </div>
            </div>

            <!-- Right Pill (Auth Integration) -->
            <div class="glass-pill px-6 py-2 rounded-full flex items-center gap-6 shadow-xl pointer-events-auto">
                <a href="login.jsp" class="text-xs font-black text-slate-500 uppercase tracking-widest hover:text-[#12876d] transition">Login</a>
                <a href="signup.jsp" class="bg-[#12876d] text-white px-5 py-2 rounded-full text-xs font-black uppercase tracking-widest shadow-lg shadow-emerald-500/20 hover:scale-105 transition-all">Sign Up</a>
            </div>

        </div>
    </div>

    <!-- Hero Section with Increased Spacing -->
    <section id="hero" class="relative min-h-[85vh] flex items-center hero-bg">
        <div class="max-w-7xl mx-auto px-4 w-full z-10 pt-56 pb-20">
            <div class="max-w-4xl space-y-12 animate-in fade-in slide-in-from-left duration-1000">
                <div class="space-y-6">
                    <span class="text-[#12876d] font-black text-sm tracking-[0.4em] uppercase opacity-60">Operations Streamlined</span>
                    <h1 class="text-7xl md:text-8xl lg:text-9xl font-black text-slate-900 leading-[0.95] tracking-tighter">
                        Complete <br /> 
                        <span class="text-[#12876d] italic underline decoration-8 decoration-emerald-100 underline-offset-8">Lifecycle</span> Care.
                    </h1>
                    <p class="text-xl md:text-3xl text-slate-500 font-medium leading-relaxed max-w-2xl opacity-80">
                        Efficiently handling patient records, appointments, and prescriptions with high data integrity.
                    </p>
                </div>

                <div class="flex items-center gap-12 pt-6">
                    <a href="signup.jsp" class="px-16 py-6 bg-[#12876d] text-white rounded-3xl font-black text-xl hover:bg-[#0b5948] transition-all hover:translate-y-[-5px] shadow-[0_30px_60px_rgba(18,135,109,0.25)] flex items-center gap-4">
                        Join Clinix <i data-lucide="arrow-right-circle" class="w-8 h-8"></i>
                    </a>
                    <div class="flex items-center gap-4 group cursor-pointer">
                        <div class="w-14 h-14 rounded-full border-2 border-emerald-100 flex items-center justify-center group-hover:bg-emerald-50 transition-colors">
                            <i data-lucide="play" class="w-5 h-5 text-[#12876d] fill-[#12876d]"></i>
                        </div>
                        <span class="font-bold text-slate-400 group-hover:text-slate-900 transition-colors text-lg tracking-tight">System Tour</span>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Restoring Previous Side-by-Side About Section -->
    <section id="about" class="py-40 bg-white">
        <div class="max-w-7xl mx-auto px-4">
            <div class="flex flex-col lg:flex-row items-center gap-24">
                <div class="flex-1 space-y-10">
                    <span class="text-[#12876d] font-black text-sm tracking-[0.3em] uppercase underline decoration-4 underline-offset-8">EMR Context</span>
                    <h2 class="text-5xl md:text-7xl font-black text-slate-900 leading-tight">Patient Records <br/> in <span class="text-[#12876d]">High Definition.</span></h2>
                    <p class="text-xl text-slate-500 font-medium leading-relaxed opacity-90">
                        Designed to streamline healthcare operations through efficient handling of patient records and lifecycle management. Seamless coordination across departments.
                    </p>
                    <div class="grid grid-cols-2 gap-10 pt-6">
                        <div class="space-y-3">
                            <i data-lucide="shield" class="w-10 h-10 text-[#12876d]"></i>
                            <h4 class="text-xl font-black">Data Integrity</h4>
                            <p class="text-sm text-slate-400 font-bold leading-relaxed">Prioritizing user-friendly security for every interaction.</p>
                        </div>
                        <div class="space-y-3">
                            <i data-lucide="zap" class="w-10 h-10 text-[#12876d]"></i>
                            <h4 class="text-xl font-black">Fast Invoicing</h4>
                            <p class="text-sm text-slate-400 font-bold leading-relaxed">Integrated billing processes to improve workflow efficiency.</p>
                        </div>
                    </div>
                </div>
                <div class="flex-1">
                    <div class="relative bg-emerald-50 rounded-[4rem] p-12 translate-x-12">
                         <img src="https://images.unsplash.com/photo-1576091160550-217359f4ecf8?w=1000&auto=format&fit=crop" class="rounded-[3rem] shadow-3xl hover:scale-105 transition-transform duration-700" alt="Clinix UI">
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Restoring Previous Features Table UI -->
    <section id="features" class="py-32 bg-slate-50 relative overflow-hidden">
        <div class="max-w-7xl mx-auto px-4 relative z-10">
          <div class="text-center mb-24">
             <h2 class="text-5xl md:text-6xl font-black tracking-tighter">Scalable <span class="text-[#12876d]">Modules.</span></h2>
          </div>

          <div class="w-full overflow-x-auto bg-white rounded-[4rem] shadow-2xl p-12 border border-slate-100">
             <div class="min-w-[800px]">
                <div class="grid grid-cols-12 border-b-2 border-slate-50 pb-8 mb-8 px-10">
                   <div class="col-span-1 text-[10px] font-black text-slate-400 uppercase tracking-widest leading-none">ID</div>
                   <div class="col-span-4 text-[10px] font-black text-slate-400 uppercase tracking-widest leading-none">Module Name</div>
                   <div class="col-span-4 text-[10px] font-black text-slate-400 uppercase tracking-widest leading-none">Operational Scope</div>
                   <div class="col-span-3 text-[10px] font-black text-slate-400 uppercase tracking-widest leading-none">Performance</div>
                </div>

                <div class="space-y-2">
                   <div class="grid grid-cols-12 py-10 px-10 items-center hover:bg-emerald-50 rounded-3xl transition-all group">
                        <div class="col-span-1 text-2xl font-black text-slate-200 group-hover:text-[#12876d]">01</div>
                        <div class="col-span-4 pr-10">
                           <h4 class="text-2xl font-black text-slate-800">Advanced Appointment</h4>
                        </div>
                        <div class="col-span-4 pr-10">
                           <p class="text-slate-400 font-bold">Seamless departmental coordination.</p>
                        </div>
                        <div class="col-span-3">
                           <span class="inline-flex items-center gap-2 px-6 py-2 bg-emerald-100/50 text-[#12876d] rounded-full text-[10px] font-black uppercase tracking-widest">
                              <i data-lucide="trending-up" class="w-3 h-3"></i> Optimized
                           </span>
                        </div>
                   </div>
                   <div class="grid grid-cols-12 py-10 px-10 items-center hover:bg-emerald-50 rounded-3xl transition-all group">
                        <div class="col-span-1 text-2xl font-black text-slate-200 group-hover:text-[#12876d]">02</div>
                        <div class="col-span-4 pr-10">
                           <h4 class="text-2xl font-black text-slate-800">EMR Core</h4>
                        </div>
                        <div class="col-span-4 pr-10">
                           <p class="text-slate-400 font-bold">Encrypted patient lifecycle records.</p>
                        </div>
                        <div class="col-span-3">
                           <span class="inline-flex items-center gap-2 px-6 py-2 bg-emerald-100/50 text-[#12876d] rounded-full text-[10px] font-black uppercase tracking-widest">
                              <i data-lucide="shield-check" class="w-3 h-3"></i> Validated
                           </span>
                        </div>
                   </div>
                   <div class="grid grid-cols-12 py-10 px-10 items-center hover:bg-emerald-50 rounded-3xl transition-all group">
                        <div class="col-span-1 text-2xl font-black text-slate-200 group-hover:text-[#12876d]">03</div>
                        <div class="col-span-4 pr-10">
                           <h4 class="text-2xl font-black text-slate-800">Department Billing</h4>
                        </div>
                        <div class="col-span-4 pr-10">
                           <p class="text-slate-400 font-bold">Automated invoice and insurance verification.</p>
                        </div>
                        <div class="col-span-3">
                           <span class="inline-flex items-center gap-2 px-6 py-2 bg-emerald-100/50 text-[#12876d] rounded-full text-[10px] font-black uppercase tracking-widest">
                              <i data-lucide="check-circle" class="w-3 h-3"></i> Efficient
                           </span>
                        </div>
                   </div>
                </div>
             </div>
          </div>
        </div>
    </section>

    <!-- Restoring Previous Q&A Design -->
    <section id="faq" class="py-40 bg-white">
       <div class="max-w-3xl mx-auto px-4">
          <div class="text-center mb-24">
             <span class="text-[#12876d] font-black text-sm tracking-[0.4em] uppercase">Support</span>
             <h2 class="text-6xl font-black text-slate-900 mt-6 tracking-tighter italic">FAQ.</h2>
          </div>

          <div class="space-y-8">
             <div class="p-10 bg-slate-50 rounded-[3rem] border-2 border-slate-100 hover:border-[#12876d] transition-all">
                <h4 class="text-2xl font-black mb-4">How secure is the EMR data?</h4>
                <p class="text-lg text-slate-500 font-medium leading-relaxed">We use enterprise-grade encryption and departmental isolated nodes to ensure patient record integrity at all times.</p>
             </div>
             <div class="p-10 bg-slate-50 rounded-[3rem] border-2 border-slate-100 hover:border-[#12876d] transition-all">
                <h4 class="text-2xl font-black mb-4">Does it support cloud integration?</h4>
                <p class="text-lg text-slate-500 font-medium leading-relaxed">Yes, Clinix offers both hybrid-cloud and local server options for zero-downtime medical operations.</p>
             </div>
          </div>
       </div>
    </section>

    <!-- Footer -->
    <footer class="bg-white py-16 border-t border-slate-50">
        <div class="max-w-7xl mx-auto px-4 flex flex-col md:flex-row justify-between items-center gap-12">
            <div class="flex items-center gap-3">
                <div class="w-10 h-10 bg-[#12876d] rounded-xl flex items-center justify-center">
                    <i data-lucide="cross" class="w-6 h-6 text-white"></i>
                </div>
                <span class="text-2xl font-black text-[#12876d] tracking-tighter uppercase italic">Clinix</span>
            </div>
            <div class="flex items-center gap-10 font-black text-[10px] text-slate-300 uppercase tracking-[0.5em]">
               <span>&copy; 2026 CLINIX SYSTEMS</span>
               <a href="#" class="hover:text-[#12876d] transition">Privacy</a>
               <a href="#" class="hover:text-[#12876d] transition">Legal</a>
            </div>
        </div>
    </footer>

    <script>
        lucide.createIcons();
    </script>
</body>
</html>