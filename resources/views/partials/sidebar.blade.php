<div id="sidebar" class="active">
    <div class="sidebar-wrapper active">
        <div class="sidebar-header">
            <div class="d-flex ">
                <div class="logo">
                    <img src=" {{asset('assets/img/logo.jpg')}} " alt="Logo" srcset="" width="50px" height="70px">
                    MoE Management
                </div>
                <div class="toggler">
                    <a href="#" class="sidebar-hide d-xl-none d-block"><i class="bi bi-x bi-middle"></i></a>
                </div>
            </div>
        </div>

        <div class="sidebar-menu">
            <ul class="menu">

                <li class="sidebar-item @if (Str::startsWith(Request::path(), '/') )
                    active
                @endif">
                    <a href=" {{ route('dashboard') }} " class='sidebar-link'>
                        <i class="bi bi-grid-fill"></i>
                        <span>Dashboard</span>
                    </a>
                </li>




                @if (auth()->user()->role == 'Admin' )
                        <li class="sidebar-item @if (Str::startsWith(Request::path(), 'session') ) active  @endif  has-sub">
                        <a href="#" class='sidebar-link '>
                            <i class="bi bi-diagram-3-fill"></i>
                            <span>Sessions</span>
                        </a>
                        <ul class="submenu ">
                            <li class="submenu-item ">
                                <a href=" {{route('session.create')}} ">New Session</a>
                            </li>
                            <li class="submenu-item ">
                                <a href=" {{route('session.index')}} ">View Sessions </a>
                            </li>

                        </ul>
                    </li>
                @endif

                <li class="sidebar-item  has-sub @if (Str::startsWith(Request::path(), 'meeting') )
                    active
                @endif">
                    <a href="#" class='sidebar-link'>
                        <i class="bi bi-house-fill"></i>
                        <span>Meetings</span>
                    </a>
                    <ul class="submenu ">
                        <li class="submenu-item ">
                            <a  href="{{ route('sesion.meetings.view',$current_session ) }}" >Current Meeting</a>
                            {{-- the current session id should be dynamic  --}}
                        </li>
                        <li class="submenu-item ">
                            <a href="{{ route('all_meetings') }}">All Meetings</a>
                        </li>

                    </ul>
                </li>

                <li class="sidebar-item  has-sub @if (Str::startsWith(Request::path(), 'question') )
                    active
                @endif">
                    <a href="#" class='sidebar-link'>
                        <i class="bi bi-stack"></i>
                        <span>Questions</span>
                    </a>
                    <ul class="submenu ">
                        <li class="submenu-item ">
                            <a href=" {{ route('allquestions')}} ">All</a>
                        </li>

                        <li class="submenu-item ">
                            <a href=" {{route('responded')}} ">Responded</a>
                        </li>

                        <li class="submenu-item ">
                            <a href=" {{route('unresponded')}}">Unresponded</a>
                        </li>

                    </ul>

                </li>

                <li class="sidebar-item @if (Str::startsWith(Request::path(), 'orderpaper') )
                    active
                @endif">
                    <a href=" {{route('orderpapers')}} " class='sidebar-link '>
                        <i class="bi bi-file-earmark-medical-fill"></i>
                        <span>Order Papers</span>
                    </a>

                </li>

                <li class="sidebar-item  has-sub @if (Str::startsWith(Request::path(), 'issue') )
                    active
                @endif">
                    <a href="#" class='sidebar-link'>
                        <i class="bi bi-stack"></i>
                        <span>Activty Tracking</span>
                    </a>
                    <ul class="submenu ">
                    <li class="submenu-item ">
                        <a href=" {{route('mdashboard')}} ">M-Dashboard</a>
                    </li>
                    
<hr></hr>
                    <li class="submenu-item ">
                        <a href=" {{route('addortissue')}} ">Add ORT Issue</a>
                    </li>
                        <!--<li class="submenu-item ">
                            <a href=" {{ route('allissues')}} ">All</a>
                        </li>-->

                        <li class="submenu-item ">
                            <a href=" {{ route('ortissues')}} ">ORT Activities</a>
                        </li>
                        <li class="submenu-item ">
                            <a href=" {{ route('all_ortdirections')}} ">ORT Management Directions</a>
                        </li>
 <hr></hr>
                        <li class="submenu-item ">
                        <a href=" {{route('addissue')}} ">Add Project Issue</a>
                    </li>

                        <li class="submenu-item ">
                            <a href=" {{ route('projectissues')}} ">Project Activities</a>
                        </li>
                        <li class="submenu-item ">
                            <a href=" {{ route('all_Pdirections')}} ">Project Management Directions</a>
                        </li>
<hr></hr>

      

                     

                    </ul>

                </li>

                @if (auth()->user()->role == 'Admin' )
                <li class="sidebar-item  has-sub @if (Str::startsWith(Request::path(), 'users') ) active @endif">
                <a href="#" class='sidebar-link '>
                    <i class="bi bi-people-fill"></i>
                    <span>User Management</span>
                </a>
                <ul class="submenu ">
                    <li class="submenu-item ">
                        <a href=" {{route('adduser')}} ">Add User</a>
                    </li>
                    <li class="submenu-item ">
                        <a href=" {{route('users')}} ">All Users</a>
                    </li>


                </ul>
            </li>
            @endif

            

                <li class="sidebar-item @if (Str::startsWith(Request::path(), 'announcement') )
                    active
                @endif">
                    <a href=" {{route('announcements.index')}} " class='sidebar-link '>
                        <i class="bi bi-book"></i>
                        <span>Notice Board</span>
                    </a>

                </li>
                <li class="sidebar-item @if (Str::startsWith(Request::path(), 'moe-events-calendar') )
                active
            @endif">
                <a href=" {{route('mycalendar')}} " class='sidebar-link '>
                    <i class="bi bi-calendar"></i>
                    <span>MoE Calendar</span>
                </a>

            </li>

                {{-- <li class="sidebar-item  has-sub @if (Str::startsWith(Request::path(), 'profile') )
                    active
                @endif">
                    <a href="#" class='sidebar-link '>
                        <i class="bi bi-person-circle"></i>
                        <span>Profile</span>
                    </a>
                    <ul class="submenu ">
                        <li class="submenu-item ">
                            <a href=" {{ route('profile') }} " class='sidebar-link'>
                                <span>Update Profile</span>
                            </a>
                        </li> --}}
                        {{-- <li class="submenu-item ">
                            <a href=" {{ route('mycalendar') }} " class='sidebar-link'>
                                <i class="  "></i>
                                <span>My Calender</span>
                            </a>
                        </li> --}}
                        {{-- <li class="submenu-item ">
                            <span>
                                <form action=" {{route('logout')}} " method="post">
                                    @csrf
                                    <input type="submit" value="Logout" class="btn btn-sm btn-danger" >
                                </form>
                            </span>
                        </li>

                    </ul>
                </li> --}}


            </ul>
        </div>
        <button class="sidebar-toggler btn x"><i data-feather="x"></i></button>
    </div>
</div>
