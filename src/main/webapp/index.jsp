<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" class="scroll-smooth">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clinix | Integrated Healthcare Management</title>
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
        
        /* 3D Geometric Diamond Texture (Full Width Hero) */
        .diamond-mesh-full {
            background-color: #ffffff;
            background-image: 
                linear-gradient(30deg, #12876d 12%, transparent 12.5%, transparent 87%, #12876d 87.5%, #12876d),
                linear-gradient(150deg, #12876d 12%, transparent 12.5%, transparent 87%, #12876d 87.5%, #12876d),
                linear-gradient(30deg, #12876d 12%, transparent 12.5%, transparent 87%, #12876d 87.5%, #12876d),
                linear-gradient(150deg, #12876d 12%, transparent 12.5%, transparent 87%, #12876d 87.5%, #12876d),
                linear-gradient(60deg, #12876d77 25%, transparent 25.5%, transparent 75%, #12876d77 75%, #12876d77),
                linear-gradient(60deg, #12876d77 25%, transparent 25.5%, transparent 75%, #12876d77 75%, #12876d77);
            background-size: 60px 105px;
            background-position: 0 0, 0 0, 30px 52.5px, 30px 52.5px, 0 0, 30px 52.5px;
        }

        @keyframes floating {
            0% { transform: translateY(0px); }
            50% { transform: translateY(-15px); }
            100% { transform: translateY(0px); }
        }
        .float-anim { animation: floating 5s ease-in-out infinite; }
    </style>
</head>

<body class="bg-white text-slate-900 overflow-x-hidden">

    <!-- Navbar -->
    <div class="fixed top-0 left-0 right-0 z-50 flex justify-center px-4 pt-8">
        <div class="max-w-7xl w-full flex items-center justify-between pointer-events-none gap-6">
            <div class="glass-pill px-5 py-2 rounded-full pointer-events-auto shadow-lg flex items-center gap-2">
                <span class="w-1.5 h-1.5 bg-emerald-500 rounded-full animate-pulse"></span>
                <span class="text-[8px] font-black text-slate-500 uppercase tracking-widest leading-none">Security Active</span>
            </div>

            <div class="glass-pill flex-1 max-w-xl px-10 py-3 rounded-full flex items-center justify-between shadow-2xl pointer-events-auto border-2 border-emerald-50">
                <div class="flex items-center gap-2">
                    <i data-lucide="heart" class="w-5 h-5 text-emerald fill-emerald/10"></i>
                    <span class="text-lg font-black text-emerald uppercase tracking-tighter italic">Clinix</span>
                </div>
                <div class="flex items-center gap-8">
                    <a href="#hero" class="text-[9px] font-black text-emerald uppercase tracking-widest hover:opacity-70 transition">Home</a>
                    <a href="#about" class="text-[9px] font-black text-slate-400 uppercase tracking-widest hover:text-emerald transition">Process</a>
                    <a href="#features" class="text-[9px] font-black text-slate-400 uppercase tracking-widest hover:text-emerald transition">Modules</a>
                    <a href="#faq" class="text-[9px] font-black text-slate-400 uppercase tracking-widest hover:text-emerald transition">Support</a>
                </div>
            </div>

            <div class="bg-emerald px-8 py-2.5 rounded-full pointer-events-auto shadow-xl shadow-emerald-500/30 flex items-center justify-center hover:scale-105 transition-all">
                <a href="signup.jsp" class="text-white text-[10px] font-black uppercase tracking-widest">Signup Free</a>
            </div>
        </div>
    </div>

    <!-- Hero Section (CIRCULAR IMAGE + SIMPLE UI) -->
    <section id="hero" class="relative min-h-[85vh] flex items-center diamond-mesh-full overflow-hidden">
        <div class="absolute inset-0 bg-white/90 pointer-events-none"></div>
        <div class="absolute top-0 right-0 w-[500px] h-[500px] bg-emerald/5 rounded-full blur-[120px] -z-0"></div>

        <div class="max-w-7xl mx-auto px-4 w-full z-10 pt-32 pb-10">
            <div class="flex flex-col lg:flex-row items-center justify-between gap-12">
                
                <!-- Left Side Content -->
                <div class="max-w-xl space-y-8 animate-in fade-in slide-in-from-left duration-1000">
                    <div class="space-y-4">
                        <span class="inline-block text-emerald font-black text-[10px] tracking-[0.4em] uppercase px-4 py-1.5 bg-emerald-50 rounded-lg border border-emerald-100 shadow-sm italic">Precision Care Portfolio</span>
                        <h1 class="text-4xl md:text-5xl lg:text-6xl font-black text-slate-900 leading-[1.1] tracking-tighter">
                            Integrated Care. <br /> 
                            <span class="text-emerald italic underline decoration-4 decoration-emerald-100 underline-offset-8">Precision</span> Logic.
                        </h1>
                        <p class="text-base md:text-lg text-slate-500 font-medium leading-relaxed max-w-lg opacity-80">
                            Efficient handling of patient records, departmental coordination, and automated billing workflows with data integrity.
                        </p>
                    </div>
                    <div class="flex items-center pt-4">
                        <a href="signup.jsp" class="px-12 py-5 bg-emerald text-white rounded-2xl font-black text-lg hover:bg-[#0b5948] transition-all hover:translate-y-[-4px] shadow-2xl shadow-emerald/20">
                            Register Facility
                        </a>
                    </div>
                </div>

                <!-- Right Side Circular Image and Simple UI -->
                <div class="flex-1 relative flex justify-center lg:justify-end animate-in fade-in zoom-in duration-1000">
                   <div class="relative float-anim">
                      <!-- Circular Professional Image -->
                      <div class="w-72 h-72 md:w-96 md:h-96 rounded-full border-8 border-white shadow-2xl overflow-hidden shadow-emerald/10 relative z-10">
                         <img src="https://images.unsplash.com/photo-1551076805-e1869033e561?q=80&w=800&auto=format&fit=crop" class="w-full h-full object-cover grayscale-[20%] hover:grayscale-0 transition-all duration-500" alt="Clinix Professional">
                      </div>
                      
                      <!-- Decorative Circle Background -->
                      <div class="absolute -top-6 -right-6 w-32 h-32 bg-emerald/10 rounded-full blur-xl"></div>
                      
                      <!-- Floating "Simple UI" Pill 1 -->
                      <div class="absolute -top-4 -left-12 bg-white px-6 py-3 rounded-2xl shadow-xl flex items-center gap-3 border border-slate-50 z-20 hover:scale-105 transition-transform">
                         <div class="w-8 h-8 rounded-full bg-emerald/10 flex items-center justify-center">
                            <i data-lucide="eye" class="w-4 h-4 text-emerald"></i>
                         </div>
                         <div class="flex flex-col">
                            <span class="text-[9px] font-black text-slate-400 uppercase tracking-widest leading-none">Live Access</span>
                            <span class="text-xs font-bold text-slate-700">24/7 Monitoring</span>
                         </div>
                      </div>

                      <!-- Floating "Simple UI" Pill 2 -->
                      <div class="absolute -bottom-4 -right-8 bg-white px-6 py-3 rounded-2xl shadow-xl flex items-center gap-3 border border-slate-50 z-20 hover:scale-105 transition-transform">
                         <div class="w-8 h-8 rounded-full bg-emerald/10 flex items-center justify-center">
                            <i data-lucide="check-circle" class="w-4 h-4 text-emerald"></i>
                         </div>
                         <div class="flex flex-col">
                            <span class="text-[9px] font-black text-slate-400 uppercase tracking-widest leading-none">Status</span>
                            <span class="text-xs font-bold text-slate-700">EMR Verified</span>
                         </div>
                      </div>
                   </div>
                </div>

            </div>
        </div>
    </section>

    <!-- How it works -->
    <section id="about" class="py-32 bg-white">
        <div class="max-w-7xl mx-auto px-4">
            <div class="flex flex-col lg:flex-row items-center gap-20">
                <div class="flex-1 space-y-8">
                    <div class="w-16 h-1.5 bg-emerald rounded-full"></div>
                    <h2 class="text-3xl md:text-4xl font-black text-slate-900 leading-tight">Lifecycle Flow.</h2>
                    <p class="text-lg text-slate-500 font-medium leading-relaxed max-w-lg opacity-80 italic">
                        "Streamline operations through efficient handling of patient records while maintaining clinical architectures."
                    </p>
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6 pt-4">
                        <div class="flex items-center gap-4 p-5 bg-slate-50 rounded-3xl border border-slate-100 shadow-sm transition-transform hover:scale-105">
                           <i data-lucide="shield-check" class="w-6 h-6 text-emerald"></i>
                           <span class="font-bold text-slate-700">Integrity</span>
                        </div>
                        <div class="flex items-center gap-4 p-5 bg-slate-50 rounded-3xl border border-slate-100 shadow-sm transition-transform hover:scale-105">
                           <i data-lucide="refresh-cw" class="w-6 h-6 text-emerald"></i>
                           <span class="font-bold text-slate-700">Sync Flow</span>
                        </div>
                    </div>
                </div>
                <div class="flex-1 relative animate-in slide-in-from-right duration-1000">
                    <div class="bg-emerald rounded-[3.5rem] p-3 shadow-2xl">
                        <img src="https://images.unsplash.com/photo-1516549655169-df83a0774514?q=80&w=1200&auto=format&fit=crop" 
                             class="rounded-[3rem] w-full h-[450px] object-cover" alt="Clinical System Dashboard">
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Our Main Services -->
    <section id="features" class="py-32 bg-slate-50">
        <div class="max-w-7xl mx-auto px-4">
            <div class="text-center mb-24">
                <span class="text-emerald font-black text-[10px] tracking-widest uppercase">System Categories</span>
                <h2 class="text-3xl md:text-5xl font-black mt-4 tracking-tighter">Core Solutions.</h2>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                <div class="group p-10 bg-white rounded-[3rem] border border-slate-100 hover:border-emerald/20 transition-all hover:-translate-y-3 shadow-sm">
                    <div class="w-16 h-16 bg-emerald rounded-2xl flex items-center justify-center mb-8 shadow-xl shadow-emerald/20 group-hover:rotate-12 transition-transform">
                        <i data-lucide="folder-check" class="w-8 h-8 text-white"></i>
                    </div>
                    <h3 class="text-2xl font-black mb-4">Records Hub</h3>
                    <p class="text-slate-500 font-semibold text-sm leading-relaxed">Handling lifecycles with medical data integrity refocus.</p>
                </div>
                <div class="group p-10 bg-white rounded-[3rem] border border-slate-100 hover:border-emerald/20 transition-all hover:-translate-y-3 shadow-sm">
                    <div class="w-16 h-16 bg-emerald rounded-2xl flex items-center justify-center mb-8 shadow-xl shadow-emerald/20 group-hover:rotate-12 transition-transform">
                        <i data-lucide="calendar-plus" class="w-8 h-8 text-white"></i>
                    </div>
                    <h3 class="text-2xl font-black mb-4">Booking Logic</h3>
                    <p class="text-slate-500 font-semibold text-sm leading-relaxed">Streamlined departmental sync scheduling protocols.</p>
                </div>
                <div class="group p-10 bg-white rounded-[3rem] border border-slate-100 hover:border-emerald/20 transition-all hover:-translate-y-3 shadow-sm">
                    <div class="w-16 h-16 bg-emerald rounded-2xl flex items-center justify-center mb-8 shadow-xl shadow-emerald/20 group-hover:rotate-12 transition-transform">
                        <i data-lucide="banknote" class="w-8 h-8 text-white"></i>
                    </div>
                    <h3 class="text-2xl font-black mb-4">Billing Engine</h3>
                    <p class="text-slate-500 font-semibold text-sm leading-relaxed">Integrated workflows designed for facility stability.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- FAQ Accordion -->
    <section id="faq" class="py-32 bg-slate-900 text-white rounded-t-[5rem]">
       <div class="max-w-3xl mx-auto px-4">
          <div class="text-center mb-24">
             <h2 class="text-3xl md:text-4xl font-black tracking-tight italic">Support Desk.</h2>
          </div>

          <div class="space-y-6">
             <div class="faq-item border border-white/10 rounded-[2.5rem] p-8 hover:bg-white/5 transition-all cursor-pointer group" onclick="this.classList.toggle('active')">
                <div class="flex items-center justify-between gap-6">
                   <h4 class="text-xl font-bold group-hover:text-emerald transition-colors">Data security protocols?</h4>
                   <div class="w-10 h-10 rounded-full bg-white/5 flex items-center justify-center shrink-0 group-hover:bg-emerald/10 transition-colors">
                      <i data-lucide="plus" class="w-5 h-5 text-emerald plus-icon"></i>
                      <i data-lucide="minus" class="w-5 h-5 text-emerald minus-icon"></i>
                   </div>
                </div>
                <div class="faq-answer">
                   <p class="text-slate-400 text-lg font-medium leading-relaxed pt-8">Clinix prioritizes absolute integrity through encryption and access logs.</p>
                </div>
             </div>
             <div class="faq-item border border-white/10 rounded-[2.5rem] p-8 hover:bg-white/5 transition-all cursor-pointer group" onclick="this.classList.toggle('active')">
                <div class="flex items-center justify-between gap-6">
                   <h4 class="text-xl font-bold group-hover:text-emerald transition-colors">Onboarding provided?</h4>
                   <div class="w-10 h-10 rounded-full bg-white/5 flex items-center justify-center shrink-0 group-hover:bg-emerald/10 transition-colors">
                      <i data-lucide="plus" class="w-5 h-5 text-emerald plus-icon"></i>
                      <i data-lucide="minus" class="w-5 h-5 text-emerald minus-icon"></i>
                   </div>
                </div>
                <div class="faq-answer">
                   <p class="text-slate-400 text-lg font-medium leading-relaxed pt-8">Facility accounts receive 1-on-1 team training for workflow alignment.</p>
                </div>
             </div>
          </div>
       </div>
    </section>

    <!-- Footer -->
    <footer class="bg-slate-900 pb-16 text-white pt-10">
        <div class="max-w-7xl mx-auto px-4 flex flex-col md:flex-row justify-between items-center gap-8 border-t border-white/5 pt-12">
            <div class="flex items-center gap-3">
                <i data-lucide="heart" class="w-7 h-7 text-emerald fill-emerald"></i>
                <span class="text-3xl font-black tracking-tighter uppercase italic text-emerald">Clinix.</span>
            </div>
            <div class="flex items-center gap-10 font-bold text-[9px] text-slate-500 uppercase tracking-widest">
               <a href="#hero" class="hover:text-emerald transition">Home</a>
               <a href="#about" class="hover:text-emerald transition">Lifecycle</a>
               <a href="#features" class="hover:text-emerald transition">Modules</a>
               <a href="#faq" class="hover:text-emerald transition">Support</a>
            </div>
            <div class="text-[9px] font-black text-slate-700 uppercase tracking-[0.4em]">
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