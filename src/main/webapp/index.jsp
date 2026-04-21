<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" class="scroll-smooth">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clinix | Simple Patient Management</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <script defer src="https://unpkg.com/lucide@latest"></script>
    <style>
        body { font-family: 'Poppins', sans-serif; }
        .glass-pill { background: rgba(255, 255, 255, 0.9); backdrop-filter: blur(15px); border: 1px solid rgba(18, 135, 109, 0.1); }
        .bg-emerald { background-color: #12876d; }
        .text-emerald { color: #12876d; }
        .border-emerald { border-color: #12876d; }
    </style>
</head>

<body class="bg-white text-slate-900 overflow-x-hidden">

    <!-- Simple 3-Part Navbar -->
    <div class="fixed top-0 left-0 right-0 z-50 flex justify-center px-4 pt-8">
        <div class="max-w-7xl w-full flex items-center justify-between pointer-events-none gap-4">
            
            <div class="glass-pill px-5 py-2 rounded-full flex items-center gap-2 shadow-lg pointer-events-auto">
                <span class="w-2 h-2 bg-emerald-500 rounded-full animate-pulse"></span>
                <span class="text-[9px] font-black text-slate-500 uppercase tracking-widest leading-none">Online</span>
            </div>

            <div class="glass-pill flex-1 max-w-2xl px-10 py-3 rounded-full flex items-center justify-between shadow-2xl pointer-events-auto border-2 border-emerald-50">
                <div class="flex items-center gap-3">
                    <i data-lucide="heart" class="w-6 h-6 text-emerald fill-emerald/10"></i>
                    <span class="text-lg font-black text-emerald uppercase tracking-tighter italic">Clinix</span>
                </div>
                <div class="flex items-center gap-8">
                    <a href="#hero" class="text-[10px] font-black text-emerald uppercase tracking-widest hover:opacity-70 transition">Home</a>
                    <a href="#about" class="text-[10px] font-black text-slate-400 uppercase tracking-widest hover:text-emerald transition">How it works</a>
                    <a href="#features" class="text-[10px] font-black text-slate-400 uppercase tracking-widest hover:text-emerald transition">Services</a>
                    <a href="#faq" class="text-[10px] font-black text-slate-400 uppercase tracking-widest hover:text-emerald transition">Questions</a>
                </div>
            </div>

            <div class="glass-pill px-5 py-2 rounded-full flex items-center gap-4 shadow-lg pointer-events-auto">
                <a href="login.jsp" class="text-[10px] font-black text-slate-500 uppercase tracking-widest hover:text-emerald transition">Login</a>
                <a href="signup.jsp" class="bg-emerald text-white px-5 py-1.5 rounded-full text-[10px] font-black uppercase tracking-widest shadow-lg shadow-emerald/20 hover:scale-105 transition-all">Signup</a>
            </div>

        </div>
    </div>

    <!-- Hero Section (CLEAN BACKGROUND) -->
    <section id="hero" class="relative min-h-[85vh] flex items-center bg-white">
        <div class="absolute top-0 right-0 w-[400px] h-[400px] bg-emerald/5 rounded-full blur-[100px] -translate-y-1/2 translate-x-1/2"></div>
        <div class="max-w-7xl mx-auto px-4 w-full z-10 pt-32 pb-20">
            <div class="max-w-2xl space-y-8 animate-in fade-in slide-in-from-left duration-1000">
                <div class="space-y-4 text-left">
                    <span class="text-emerald font-black text-[10px] tracking-[0.4em] uppercase px-4 py-1 bg-emerald-50 rounded-full">Patient Management Portfolio</span>
                    <h1 class="text-4xl md:text-5xl lg:text-6xl font-black text-slate-900 leading-[1.1] tracking-tight">
                        Complete Care <br /> 
                        <span class="text-emerald italic">Redefined.</span>
                    </h1>
                    <p class="text-lg md:text-xl text-slate-500 font-medium leading-relaxed max-w-lg opacity-80">
                        Efficient handling of patient records, appointments, and prescriptions with high data integrity.
                    </p>
                </div>

                <div class="flex items-center pt-4">
                    <a href="signup.jsp" class="px-12 py-5 bg-emerald text-white rounded-2xl font-black text-lg hover:bg-[#0b5948] transition-all hover:translate-y-[-4px] shadow-2xl shadow-emerald/30">
                        Get Started Now
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- How it works (INCLUDES OLD HERO BG IMAGE) -->
    <section id="about" class="py-32 bg-slate-50">
        <div class="max-w-7xl mx-auto px-4">
            <div class="flex flex-col lg:flex-row items-center gap-20">
                <div class="flex-1 space-y-8">
                    <div class="w-12 h-1 bg-emerald rounded-full"></div>
                    <h2 class="text-3xl md:text-4xl font-black text-slate-900 leading-tight">About Clinix.</h2>
                    <p class="text-lg text-slate-500 font-medium leading-relaxed">
                        Streamline healthcare operations through efficient handling of patient records while maintaining well-organized archives. Our system enables coordination across departments and reduces overhead.
                    </p>
                    <div class="space-y-4 pt-4">
                        <div class="flex items-center gap-4 p-4 bg-white rounded-2xl border border-slate-100 shadow-sm">
                           <i data-lucide="check" class="w-5 h-5 text-emerald"></i>
                           <span class="font-bold text-slate-700">Simple Coordination</span>
                        </div>
                        <div class="flex items-center gap-4 p-4 bg-white rounded-2xl border border-slate-100 shadow-sm">
                           <i data-lucide="check" class="w-5 h-5 text-emerald"></i>
                           <span class="font-bold text-slate-700">Billing Sync</span>
                        </div>
                    </div>
                </div>
                <div class="flex-1 relative animate-in slide-in-from-right duration-1000">
                    <div class="bg-white rounded-[3rem] p-6 shadow-2xl overflow-hidden">
                        <!-- MOVED HERO IMAGE TO HERE -->
                         <img src="https://images.unsplash.com/photo-1516549655169-df83a0774514?q=80&w=1200&auto=format&fit=crop" 
                              class="rounded-[2rem] w-full h-[450px] object-cover" alt="Clinical Workflow">
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Services (FORMERLY FEATURES) -->
    <section id="features" class="py-32 bg-white">
        <div class="max-w-7xl mx-auto px-4">
            <div class="text-center mb-20">
                <span class="text-emerald font-black text-[11px] tracking-widest uppercase">Our Main Services</span>
                <h2 class="text-3xl md:text-5xl font-black mt-4">Core Modules.</h2>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                <div class="p-10 bg-slate-50 rounded-[3rem] border-2 border-transparent hover:border-emerald/20 transition-all hover:-translate-y-2">
                    <div class="w-14 h-14 bg-emerald rounded-2xl flex items-center justify-center mb-8 shadow-xl shadow-emerald/20">
                        <i data-lucide="folder" class="w-7 h-7 text-white"></i>
                    </div>
                    <h3 class="text-2xl font-black mb-4">Patient Records</h3>
                    <p class="text-slate-500 font-medium leading-relaxed">Handling lifecycles through efficient EMR handling and secure data integrity.</p>
                </div>
                <div class="p-10 bg-slate-50 rounded-[3rem] border-2 border-transparent hover:border-emerald/20 transition-all hover:-translate-y-2">
                    <div class="w-14 h-14 bg-emerald rounded-2xl flex items-center justify-center mb-8 shadow-xl shadow-emerald/20">
                        <i data-lucide="calendar" class="w-7 h-7 text-white"></i>
                    </div>
                    <h3 class="text-2xl font-black mb-4">Appointments</h3>
                    <p class="text-slate-500 font-medium leading-relaxed">Streamline coordination through automated departmental booking protocols.</p>
                </div>
                <div class="p-10 bg-slate-50 rounded-[3rem] border-2 border-transparent hover:border-emerald/20 transition-all hover:-translate-y-2">
                    <div class="w-14 h-14 bg-emerald rounded-2xl flex items-center justify-center mb-8 shadow-xl shadow-emerald/20">
                        <i data-lucide="credit-card" class="w-7 h-7 text-white"></i>
                    </div>
                    <h3 class="text-2xl font-black mb-4">Billing Sync</h3>
                    <p class="text-slate-500 font-medium leading-relaxed">Integrated billing processes to improve overall efficiency across health facilities.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Questions (FORMERLY FAQ/SUPPORT) -->
    <section id="faq" class="py-32 bg-slate-900 text-white rounded-t-[5rem]">
       <div class="max-w-4xl mx-auto px-4">
          <div class="text-center mb-20">
             <h2 class="text-3xl md:text-4xl font-black">Frequently Asked Questions.</h2>
          </div>

          <div class="space-y-6">
             <div class="p-8 bg-white/5 rounded-3xl border border-white/10 hover:bg-white/10 transition-all">
                <h4 class="text-xl font-bold mb-3">Is it user-friendly?</h4>
                <p class="text-slate-400 font-medium leading-relaxed">Yes, prioritizing a user-friendly experience is at the core of our patient management design.</p>
             </div>
             <div class="p-8 bg-white/5 rounded-3xl border border-white/10 hover:bg-white/10 transition-all">
                <h4 class="text-xl font-bold mb-3">How secure are the records?</h4>
                <p class="text-slate-400 font-medium leading-relaxed">We maintain highest data integrity levels across all patient life cycle records.</p>
             </div>
          </div>
       </div>
    </section>

    <!-- Clear Footer -->
    <footer class="bg-slate-900 pb-16 text-white pt-10">
        <div class="max-w-7xl mx-auto px-4 flex flex-col md:flex-row justify-between items-center gap-8 border-t border-white/5 pt-12">
            <div class="flex items-center gap-3">
                <i data-lucide="heart" class="w-6 h-6 text-emerald fill-emerald"></i>
                <span class="text-2xl font-black tracking-tighter uppercase italic text-emerald">Clinix.</span>
            </div>
            <div class="flex items-center gap-10 font-bold text-[10px] text-slate-500 uppercase tracking-widest">
               <a href="#hero" class="hover:text-emerald transition">Home</a>
               <a href="#about" class="hover:text-emerald transition">How it works</a>
               <a href="#faq" class="hover:text-emerald transition">Questions</a>
            </div>
            <div class="text-[10px] font-black text-slate-600 uppercase tracking-[0.4em]">
                &copy; 2026 CLINIX.
            </div>
        </div>
    </footer>

    <script>
        lucide.createIcons();
    </script>
</body>
</html>