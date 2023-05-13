<div class="main-sidebar">
<aside id="sidebar-wrapper">
    <div class="sidebar-brand">
        <a href="index.html">Admin Panel</a>
    </div>
    <div class="sidebar-brand sidebar-brand-sm">
        <a href="index.html"></a>
    </div>

    <ul class="sidebar-menu">

        <li class="active"><a class="nav-link" href="{{ route('admin_home') }}"><i class="fas fa-hand-point-right"></i> <span>Dashboard</span></a></li>

        <!-- Faqs -->
        <li class="{{ Request::is('admin/faq/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_faq_view') }}" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-title="FAQ"><i class="fa fa-bolt"></i> <span>FAQ</span></a></li>

        <!-- Blood Donors -->
        <li class="{{ Request::is('admin/blood-donors/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_blood_donor_view') }}" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-title="FAQ"><i class="fa fa-bolt"></i> <span>Blood Donor Lists</span></a></li>

        <!-- Contacts -->
        <li class="{{ Request::is('admin/contacts/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_contact_view') }}" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-title="FAQ"><i class="fa fa-bolt"></i> <span>Contact Management</span></a></li>

    </ul>
</aside>
</div>