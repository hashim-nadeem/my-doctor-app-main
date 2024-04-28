 <!-- Sidebar -->
 <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

     <!-- Sidebar - Brand -->
     <a class="sidebar-brand d-flex align-items-center justify-content-center mb-3 mt-3" href="{{ route('dashboard') }}">
         <div class="sidebar-brand-icon sidebar_logo">
             {{-- <i class="fas fa-laugh-wink"></i> --}}
             <img src="{{ asset('assets/logo/logo-here.png') }}" alt="logo">
         </div>
         {{-- <div class="sidebar-brand-text mx-3">SB Admin <sup>2</sup></div> --}}
     </a>

     <!-- Divider -->
     <hr class="sidebar-divider my-0">

     <!-- Nav Item - Dashboard -->
     <li class="nav-item {{ $activeMenu == 'dashboard' ? 'active' : '' }}">
         <a class="nav-link" href="{{ route('dashboard') }}">
             <i class="fas fa-fw fa-tachometer-alt"></i>
             <span>{{ __('Dashboard') }}</span></a>
     </li>

     <!-- Divider -->
     <hr class="sidebar-divider" />

     <!-- Heading -->
     <div class="sidebar-heading">
         {{ __('Manage') }}
     </div>

     <!-- users -->
     <li class="nav-item {{ $activeMenu == 'users' ? 'active' : '' }}">
         <a class="nav-link" href="{{ route('users.index') }}">
             <i class="fas fa-users"></i>
             <span>{{ __('Users') }}</span></a>
     </li>

     <!-- Divider -->
     <hr class="sidebar-divider" />

     <!-- Heading -->
     <div class="sidebar-heading">
         {{ __('Pages') }}
     </div>

     <!-- province -->
     <li class="nav-item {{ $activeMenu == 'province' || $activeMenu == 'create_province' ? 'active' : '' }}">
         <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#provinceCollapse"
             aria-expanded="true" aria-controls="provinceCollapse">
             <i class="fas fa-home fa-cog"></i>
             <span>{{ __('Province') }}</span>
         </a>
         <div id="provinceCollapse"
             class="collapse {{ $activeMenu == 'province' || $activeMenu == 'create_province' ? 'show' : '' }}"
             aria-labelledby="headingTwo" data-parent="#accordionSidebar">
             <div class="bg-white py-2 collapse-inner rounded">
                 {{-- <h6 class="collapse-header">Custom Components:</h6> --}}
                 <a class="collapse-item {{ $activeMenu == 'create_province' ? 'active' : '' }}"
                     href="{{ route('province.create') }}">{{ __('Create') }}</a>
                 <a class="collapse-item {{ $activeMenu == 'province' ? 'active' : '' }}"
                     href="{{ route('province.index') }}">{{ __('List') }}</a>
             </div>
         </div>
     </li>


     <!-- district -->
     <li class="nav-item {{ $activeMenu == 'district' || $activeMenu == 'create_district' ? 'active' : '' }}">
         <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#districtCollapse"
             aria-expanded="true" aria-controls="districtCollapse">
             <i class="fas fa-home fa-cog"></i>
             <span>{{ __('District') }}</span>
         </a>
         <div id="districtCollapse"
             class="collapse {{ $activeMenu == 'district' || $activeMenu == 'create_district' ? 'show' : '' }}"
             aria-labelledby="headingTwo" data-parent="#accordionSidebar">
             <div class="bg-white py-2 collapse-inner rounded">
                 {{-- <h6 class="collapse-header">Custom Components:</h6> --}}
                 <a class="collapse-item {{ $activeMenu == 'create_district' ? 'active' : '' }}"
                     href="{{ route('district.create') }}">{{ __('Create') }}</a>
                 <a class="collapse-item {{ $activeMenu == 'district' ? 'active' : '' }}"
                     href="{{ route('district.index') }}">{{ __('List') }}</a>
             </div>
         </div>
     </li>


     <!-- campus -->
     <li class="nav-item {{ $activeMenu == 'campus' || $activeMenu == 'create_campus' ? 'active' : '' }}">
         <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#campusCollapse"
             aria-expanded="true" aria-controls="campusCollapse">
             <i class="fas fa-home fa-cog"></i>
             <span>{{ __('Campus') }}</span>
         </a>
         <div id="campusCollapse"
             class="collapse {{ $activeMenu == 'campus' || $activeMenu == 'create_campus' ? 'show' : '' }}"
             aria-labelledby="headingTwo" data-parent="#accordionSidebar">
             <div class="bg-white py-2 collapse-inner rounded">
                 {{-- <h6 class="collapse-header">Custom Components:</h6> --}}
                 <a class="collapse-item {{ $activeMenu == 'create_campus' ? 'active' : '' }}"
                     href="{{ route('campus.create') }}">{{ __('Create') }}</a>
                 <a class="collapse-item {{ $activeMenu == 'campus' ? 'active' : '' }}"
                     href="{{ route('campus.index') }}">{{ __('List') }}</a>
             </div>
         </div>
     </li>


     <!-- session -->
     <li class="nav-item {{ $activeMenu == 'session' || $activeMenu == 'create_session' ? 'active' : '' }}">
         <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#sessionCollapse"
             aria-expanded="true" aria-controls="sessionCollapse">
             <i class="fas fa-home fa-cog"></i>
             <span>{{ __('Session') }}</span>
         </a>
         <div id="sessionCollapse"
             class="collapse {{ $activeMenu == 'session' || $activeMenu == 'create_session' ? 'show' : '' }}"
             aria-labelledby="headingTwo" data-parent="#accordionSidebar">
             <div class="bg-white py-2 collapse-inner rounded">
                 {{-- <h6 class="collapse-header">Custom Components:</h6> --}}
                 <a class="collapse-item {{ $activeMenu == 'create_session' ? 'active' : '' }}"
                     href="{{ route('session.create') }}">{{ __('Create') }}</a>
                 <a class="collapse-item {{ $activeMenu == 'session' ? 'active' : '' }}"
                     href="{{ route('session.index') }}">{{ __('List') }}</a>
             </div>
         </div>
     </li>

     <!-- classroom -->
     <li class="nav-item {{ $activeMenu == 'classroom' || $activeMenu == 'create_classroom' ? 'active' : '' }}">
         <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#classroomCollapse"
             aria-expanded="true" aria-controls="classroomCollapse">
             <i class="fas fa-door-open fa-cog"></i>
             <span>{{ __('Class') }}</span>
         </a>
         <div id="classroomCollapse"
             class="collapse {{ $activeMenu == 'classroom' || $activeMenu == 'create_classroom' ? 'show' : '' }}"
             aria-labelledby="headingTwo" data-parent="#accordionSidebar">
             <div class="bg-white py-2 collapse-inner rounded">
                 {{-- <h6 class="collapse-header">Custom Components:</h6> --}}
                 <a class="collapse-item {{ $activeMenu == 'create_classroom' ? 'active' : '' }}"
                     href="{{ route('classroom.create') }}">{{ __('Create') }}</a>
                 <a class="collapse-item {{ $activeMenu == 'classroom' ? 'active' : '' }}"
                     href="{{ route('classroom.index') }}">{{ __('List') }}</a>
             </div>
         </div>
     </li>

     <!-- subject -->
     <li class="nav-item {{ $activeMenu == 'subject' || $activeMenu == 'create_subject' ? 'active' : '' }}">
         <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#subjectCollapse"
             aria-expanded="true" aria-controls="subjectCollapse">
             <i class="fas fa-swatchbook fa-cog"></i>
             <span>{{ __('Subject') }}</span>
         </a>
         <div id="subjectCollapse"
             class="collapse {{ $activeMenu == 'subject' || $activeMenu == 'create_subject' ? 'show' : '' }}"
             aria-labelledby="headingTwo" data-parent="#accordionSidebar">
             <div class="bg-white py-2 collapse-inner rounded">
                 {{-- <h6 class="collapse-header">Custom Components:</h6> --}}
                 <a class="collapse-item {{ $activeMenu == 'create_classroom' ? 'active' : '' }}"
                     href="{{ route('subject.create') }}">{{ __('Create') }}</a>
                 <a class="collapse-item {{ $activeMenu == 'subject' ? 'active' : '' }}"
                     href="{{ route('subject.index') }}">{{ __('List') }}</a>
             </div>
         </div>
     </li>

     <!-- chapter -->
     <li class="nav-item {{ $activeMenu == 'chapter' || $activeMenu == 'create_chapter' ? 'active' : '' }}">
         <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#chapterCollapse"
             aria-expanded="true" aria-controls="chapterCollapse">
             <i class="fas fa-swatchbook fa-cog"></i>
             <span>{{ __('Chapter') }}</span>
         </a>
         <div id="chapterCollapse"
             class="collapse {{ $activeMenu == 'chapter' || $activeMenu == 'create_chapter' ? 'show' : '' }}"
             aria-labelledby="headingTwo" data-parent="#accordionSidebar">
             <div class="bg-white py-2 collapse-inner rounded">
                 {{-- <h6 class="collapse-header">Custom Components:</h6> --}}
                 <a class="collapse-item {{ $activeMenu == 'create_chapter' ? 'active' : '' }}"
                     href="{{ route('chapter.create') }}">{{ __('Create') }}</a>
                 <a class="collapse-item {{ $activeMenu == 'chapter' ? 'active' : '' }}"
                     href="{{ route('chapter.index') }}">{{ __('List') }}</a>
             </div>
         </div>
     </li>


     <!-- question -->
     <li class="nav-item {{ $activeMenu == 'question' || $activeMenu == 'import_question' ? 'active' : '' }}">
         <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#questionCollapse"
             aria-expanded="true" aria-controls="questionCollapse">
             <i class="fas fa-folder fa-cog"></i>
             <span>{{ __('Tests') }}</span>
         </a>
         <div id="questionCollapse"
             class="collapse {{ $activeMenu == 'question' || $activeMenu == 'import_question' ? 'show' : '' }}"
             aria-labelledby="headingTwo" data-parent="#accordionSidebar">
             <div class="bg-white py-2 collapse-inner rounded">
                 {{-- <h6 class="collapse-header">Custom Components:</h6> --}}
                 <a class="collapse-item {{ $activeMenu == 'import_question' ? 'active' : '' }}"
                     href="{{ route('questions.import') }}">{{ __('Import') }}</a>
                 <a class="collapse-item {{ $activeMenu == 'question' ? 'active' : '' }}"
                     href="{{ route('questions.index') }}">{{ __('List') }}</a>
             </div>
         </div>
     </li>
     <!-- results -->
     <li class="nav-item {{ $activeMenu == 'results' ? 'active' : '' }}">
         <a class="nav-link" href="{{ route('results.index') }}">
             <i class="fas fa-file"></i>
             <span>{{ __('Results') }}</span></a>
     </li>

     <!-- Divider -->
     <hr class="sidebar-divider d-none d-md-block" />

     <!-- Sidebar Toggler (Sidebar) -->
     <div class="text-center d-none d-md-inline">
         <button class="rounded-circle border-0" id="sidebarToggle"></button>
     </div>

 </ul>
 <!-- End of Sidebar -->
