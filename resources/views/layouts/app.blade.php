@include('includes.head')
@include('includes.nav')

<main role="main" class="container">
    @yield('content')
    @yield('main_page')
</main>

@include('includes.foot')