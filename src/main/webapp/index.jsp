<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" class="scroll-smooth">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clinix | Innovative Patient Management</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <script defer src="https://unpkg.com/lucide@latest"></script>
    <style>
        body { font-family: 'Poppins', sans-serif; }
        .glass-pill { background: rgba(255, 255, 255, 0.95); backdrop-filter: blur(10px); border: 1px solid rgba(18, 135, 109, 0.1); }
        .hero-bg {
            background-image: linear-gradient(to right, rgba(255, 255, 255, 0.92) 20%, rgba(255, 255, 255, 0) 100%), url('https://images.unsplash.com/photo-1516549655169-df83a0774514?q=80&w=2000&auto=format&fit=crop');
            background-size: cover;
            background-position: center;
        }
        .emerald-shadow { shadow-lg shadow-emerald-900/10; }
        .record-card:hover { transform: translateY(-10px); background-color: #12876d; color: white; }
    </style>
</head>

<body class="bg-white text-slate-900 overflow-x-hidden">

    <!-- Innovative 3-Part Navbar -->
    <div class="fixed top-0 left-0 right-0 z-50 flex justify-center px-4 pt-8">
        <div class="max-w-7xl w-full flex items-center justify-between pointer-events-none">
            
            <!-- Left Pill -->
            <div class="glass-pill px-6 py-3 rounded-full flex items-center gap-3 shadow-xl pointer-events-auto animate-in slide-in-from-left duration-700">
                <span class="w-2.5 h-2.5 bg-emerald-500 rounded-full animate-pulse"></span>
                <span class="text-xs font-black text-slate-600 uppercase tracking-widest leading-none">Global Network Ready</span>
            </div>

            <!-- Center Pill (Logo + Links) -->
            <div class="glass-pill px-8 py-3 rounded-full flex items-center gap-10 shadow-2xl pointer-events-auto border-2 border-emerald-500/5 transition-all hover:scale-105 duration-500">
                <div class="flex items-center gap-3 border-r border-slate-100 pr-6 mr-4">
                    <div class="w-8 h-8 bg-[#12876d] rounded-xl flex items-center justify-center">
                        <i data-lucide="cross" class="w-5 h-5 text-white"></i>
                    </div>
                    <span class="text-lg font-black text-[#12876d] uppercase tracking-tighter">Clinix</span>
                </div>
                <div class="flex items-center gap-8">
                    <a href="#hero" class="text-xs font-black text-[#12876d] uppercase tracking-widest hover:opacity-70 transition">Home</a>
                    <a href="#records" class="text-xs font-black text-slate-400 uppercase tracking-widest hover:text-[#12876d] transition">Records</a>
                    <a href="#features" class="text-xs font-black text-slate-400 uppercase tracking-widest hover:text-[#12876d] transition">Modules</a>
                    <a href="#faq" class="text-xs font-black text-slate-400 uppercase tracking-widest hover:text-[#12876d] transition">Q&A</a>
                </div>
            </div>

            <!-- Right Pill -->
            <div class="glass-pill px-6 py-3 rounded-full flex items-center gap-4 shadow-xl pointer-events-auto animate-in slide-in-from-right duration-700 group cursor-pointer hover:bg-[#12876d] transition-colors">
                <i data-lucide="mail" class="w-4 h-4 text-[#12876d] group-hover:text-white transition-colors"></i>
                <span class="text-xs font-black text-slate-600 uppercase tracking-widest group-hover:text-white transition-colors">contact@clinix.pro</span>
            </div>

        </div>
    </div>

    <!-- Hero Section -->
    <section id="hero" class="relative min-h-screen flex items-center hero-bg">
        <div class="max-w-7xl mx-auto px-4 w-full z-10 pt-32">
            <div class="max-w-3xl space-y-12 animate-in fade-in slide-in-from-top duration-1000">
                <div class="space-y-6">
                    <h1 class="text-7xl md:text-8xl font-black text-slate-900 leading-[1] tracking-tight">
                        Revolutionize <br /> 
                        <span class="text-[#12876d]">Patient Data.</span>
                    </h1>
                    <p class="text-xl md:text-2xl text-slate-500 font-medium leading-relaxed max-w-xl opacity-90">
                        Efficient handling of patient records, appointments, and billing with a prioritizes data integrity and high-fidelity user experience.
                    </p>
                </div>

                <div class="flex items-center gap-10">
                    <a href="signup.jsp" class="px-12 py-5 bg-[#12876d] text-white rounded-full font-black text-lg hover:bg-[#0b5948] transition-all hover:translate-y-[-5px] shadow-2xl shadow-emerald-900/20 flex items-center gap-4 group">
                        Join Clinix <i data-lucide="sparkles" class="w-6 h-6 group-hover:scale-125 transition-transform"></i>
                    </a>
                </div>
            </div>

            <!-- Floating Cards -->
            <div class="grid grid-cols-1 md:grid-cols-3 gap-8 mt-24 mb-40 relative z-20">
                <div class="bg-white p-10 rounded-[3rem] shadow-2xl border border-emerald-100/50 transform hover:-rotate-2 transition-all duration-500">
                    <h3 class="text-3xl font-black text-slate-900 mb-4 tracking-tighter">Live Appointments</h3>
                    <p class="text-slate-500 font-semibold mb-6">Real-time scheduling across multi-department facilities with zero conflict logic.</p>
                    <div class="flex items-center gap-2 text-[#12876d] font-black text-xs uppercase tracking-widest">
                       Learn System <i data-lucide="arrow-right" class="w-4 h-4"></i>
                    </div>
                </div>
                <div class="bg-slate-900 p-10 rounded-[3rem] shadow-2xl border border-slate-800 text-white transform hover:scale-105 transition-all duration-500 translate-y-8">
                    <h3 class="text-3xl font-black text-white mb-4 tracking-tighter italic text-[#12876d]">Active Billing</h3>
                    <p class="text-slate-400 font-semibold mb-6">Automated invoice generation and insurance verification workflows integration.</p>
                    <div class="flex items-center gap-2 text-white font-black text-xs uppercase tracking-widest">
                       View Workflow <i data-lucide="arrow-right" class="w-4 h-4"></i>
                    </div>
                </div>
                <div class="bg-white p-10 rounded-[3rem] shadow-2xl border border-emerald-100/50 transform hover:rotate-2 transition-all duration-500">
                    <h3 class="text-3xl font-black text-slate-900 mb-4 tracking-tighter">Unified EMR</h3>
                    <p class="text-slate-500 font-semibold mb-6">Seamless electronic medical records that stay with the patient through the lifecycle.</p>
                    <div class="flex items-center gap-2 text-[#12876d] font-black text-xs uppercase tracking-widest">
                       Explore Module <i data-lucide="arrow-right" class="w-4 h-4"></i>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Medical Records Section (New) -->
    <section id="records" class="py-40 bg-white">
       <div class="max-w-7xl mx-auto px-4">
          <div class="flex flex-col md:flex-row justify-between items-end mb-20 gap-10">
             <div class="max-w-2xl space-y-6">
                <span class="text-[#12876d] font-black text-sm tracking-[0.4em] uppercase">Core Records</span>
                <h2 class="text-6xl font-black text-slate-900 leading-tight">Mastering Data <span class="text-[#12876d] italic">Integrity.</span></h2>
             </div>
             <p class="max-w-sm text-slate-500 font-bold leading-relaxed">
                Streamline operations through efficient handling of patient records and real-time medical updates.
             </p>
          </div>

          <div class="grid grid-cols-1 md:grid-cols-4 gap-4">
             <div class="record-card p-10 bg-slate-50 rounded-[2.5rem] transition-all duration-500 cursor-pointer group">
                <i data-lucide="user-plus" class="w-10 h-10 mb-6 text-[#12876d] group-hover:text-white transition-colors"></i>
                <h4 class="text-2xl font-black mb-2">New Admission</h4>
                <p class="text-sm font-semibold opacity-60">Instant patient onboarding & medical history.</p>
             </div>
             <div class="record-card p-10 bg-slate-50 rounded-[2.5rem] transition-all duration-500 cursor-pointer group translate-y-8">
                <i data-lucide="stethoscope" class="w-10 h-10 mb-6 text-[#12876d] group-hover:text-white transition-colors"></i>
                <h4 class="text-2xl font-black mb-2">Consultation</h4>
                <p class="text-sm font-semibold opacity-60">Digital diagnosis tracking and prescription sync.</p>
             </div>
             <div class="record-card p-10 bg-slate-50 rounded-[2.5rem] transition-all duration-500 cursor-pointer group">
                <i data-lucide="clipboard-list" class="w-10 h-10 mb-6 text-[#12876d] group-hover:text-white transition-colors"></i>
                <h4 class="text-2xl font-black mb-2">Patient History</h4>
                <p class="text-sm font-semibold opacity-60">Complete audit logs of every medical interaction.</p>
             </div>
             <div class="record-card p-10 bg-slate-50 rounded-[2.5rem] transition-all duration-500 cursor-pointer group translate-y-8">
                <i data-lucide="heart" class="w-10 h-10 mb-6 text-[#12876d] group-hover:text-white transition-colors"></i>
                <h4 class="text-2xl font-black mb-2">Care Plan</h4>
                <p class="text-sm font-semibold opacity-60">Personalized healthcare pathways at your fingertips.</p>
             </div>
          </div>
       </div>
    </section>

    <!-- Q&A Section (New Innovative Design) -->
    <section id="faq" class="py-40 bg-slate-900 overflow-hidden relative">
       <div class="absolute top-0 right-0 w-96 h-96 bg-[#12876d]/10 rounded-full blur-[120px]"></div>
       <div class="max-w-7xl mx-auto px-4 relative">
          <div class="text-center mb-32">
             <span class="text-[#12876d] font-black text-sm tracking-[0.4em] uppercase">Information Desk</span>
             <h2 class="text-6xl font-black text-white mt-6">Operation Queries.</h2>
          </div>

          <div class="grid grid-cols-1 md:grid-cols-2 gap-x-20 gap-y-16">
             <div class="space-y-4 group">
                <div class="flex items-center gap-6">
                   <div class="text-5xl font-black text-[#12876d]/20 group-hover:text-[#12876d] transition-colors duration-500">01</div>
                   <h3 class="text-2xl font-black text-white">How does Clinix ensure data integrity?</h3>
                </div>
                <div class="pl-20">
                   <p class="text-slate-400 font-bold leading-relaxed border-l-2 border-[#12876d]/30 pl-8">
                      By prioritizing blockchain-style audit logs and distributed data validation across departmental nodes to ensure records are never tampered with.
                   </p>
                </div>
             </div>
             <div class="space-y-4 group translate-y-12">
                <div class="flex items-center gap-6">
                   <div class="text-5xl font-black text-[#12876d]/20 group-hover:text-[#12876d] transition-colors duration-500">02</div>
                   <h3 class="text-2xl font-black text-white">Can it handle multi-department billing?</h3>
                </div>
                <div class="pl-20">
                   <p class="text-slate-400 font-bold leading-relaxed border-l-2 border-[#12876d]/30 pl-8">
                      Absolutely. Clinix integrates centralized financial hubs that collect billing data from pharmacy, lab, and reception instantly.
                   </p>
                </div>
             </div>
             <div class="space-y-4 group">
                <div class="flex items-center gap-6">
                   <div class="text-5xl font-black text-[#12876d]/20 group-hover:text-[#12876d] transition-colors duration-500">03</div>
                   <h3 class="text-2xl font-black text-white">Is the EMR accessible to patients?</h3>
                </div>
                <div class="pl-20">
                   <p class="text-slate-400 font-bold leading-relaxed border-l-2 border-[#12876d]/30 pl-8">
                      Yes, our patient-facing portal allows individuals to view their lifecycle history, download prescriptions, and pay invoices securely.
                   </p>
                </div>
             </div>
             <div class="space-y-4 group translate-y-12">
                <div class="flex items-center gap-6">
                   <div class="text-5xl font-black text-[#12876d]/20 group-hover:text-[#12876d] transition-colors duration-500">04</div>
                   <h3 class="text-2xl font-black text-white">Does Clinix support cloud sync?</h3>
                </div>
                <div class="pl-20">
                   <p class="text-slate-400 font-bold leading-relaxed border-l-2 border-[#12876d]/30 pl-8">
                      We offer both hybrid cloud and on-premise solutions to maintain workflow efficiency even during internet downtime.
                   </p>
                </div>
             </div>
          </div>
       </div>
    </section>

    <!-- Footer -->
    <footer class="bg-white py-20 border-t border-slate-50">
        <div class="max-w-7xl mx-auto px-4 flex flex-col md:flex-row justify-between items-center gap-8">
            <div class="flex items-center gap-3">
                <div class="w-10 h-10 bg-[#12876d] rounded-xl flex items-center justify-center rotate-6">
                    <i data-lucide="cross" class="w-6 h-6 text-white"></i>
                </div>
                <span class="text-2xl font-black text-[#12876d] tracking-tighter uppercase">Clinix</span>
            </div>
            <div class="flex items-center gap-12 font-black text-xs text-slate-400 uppercase tracking-widest">
                <a href="#hero" class="hover:text-[#12876d] transition">Home</a>
                <a href="#records" class="hover:text-[#12876d] transition">Records</a>
                <a href="#faq" class="hover:text-[#12876d] transition">Q&A</a>
                <a href="#" class="hover:text-[#12876d] transition">Privacy</a>
            </div>
            <div class="text-[10px] font-black text-slate-300 uppercase tracking-[0.4em]">
                &copy; 2026 CLINIX PRECISION.
            </div>
        </div>
    </footer>

    <script>
        lucide.createIcons();
    </script>
</body>
</html>