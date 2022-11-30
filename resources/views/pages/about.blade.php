@extends('app')

@section('content')

<!--about-us-->
<section class="section pt-50">
    <div class="container-fluid">
        <div class="row ">
            <div class="col-lg-12">
                <div class="section-title">
                    <h5>About us</h5>
                </div>
            </div>
        </div>

        <div class="row ">
            <div class="col-lg-8 mt-30">
                <div class="about-us">
                    <div class="about-us-image">
                        <img src="assets/img/about-us.jpg" alt="">
                    </div>
                    <div class="description">
                        <h6>Thank you for checking out our blog website.</h6>
                        <p>
                            Aanuoluwa Oladayo is a Christian, a certified teacher, and an Early Childhood practitioner. She hold a Bachelor's Degree in Early Childhood Education/ English from the University of Ibadan, Nigeria.
                        </p>
                        <p>
                            Aanu, as called by friends is passionate about teaching young children and ladies. She has a growing community for ladies called The Palace Pillars.
                        </p>
                        {{-- <div class="quote">
                            <div>
                                <i class="icon_quotations_alt"></i>
                            </div>
                            <p>
                                "My website’s kind of fun for me. I get to do drawings on that.
                                It’s kind of fun.”
                            </p>
                            <small>Example User</small>
                        </div> --}}
                        <p>
                            Aanuoluwa loves reading, writing, being on long calls with my friends, and pressing my phone. She also loves celebrating people and going the extra mile to help people out.
                        </p>
                        <p>
                            Aanu currently lives in Ibadan, Nigeria.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 max-width">
                <!--widget-latest-posts-->
                @include('includes.latest')
                <!--/-->
            </div>
        </div>
    </div>
</section>

@endsection
