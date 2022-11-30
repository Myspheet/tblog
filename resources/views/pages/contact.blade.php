@extends('app')

@section('content')

<!--contact us-->
<section class="section pt-50">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <h5>Contact us</h5>
                </div>
            </div>
        </div>

        <div class="row mb-20">
            <div class="col-lg-8 mt-30">
                <div class="contact">
                    {{-- <div class="google-map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3104.5761533072873!2d-78.19644468515456!3d38.91080675375955!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89b5c5dc680d0b2b%3A0x1e9ff0b6bb7a2f87!2s1000%20Proctor%20Ln%2C%20Front%20Royal%2C%20VA%2022630%2C%20%C3%89tats-Unis!5e0!3m2!1sfr!2sma!4v1578068093888!5m2!1sfr!2sma" allowfullscreen="">
                        </iframe>
                    </div> --}}
                    <form action="{{ route('contact') }}" class="widget-form contact_form " method="POST">
                        @csrf
                        <h6>Feel free to contact any time.</h6>
                        <p>.I am Aanuoluwa, a writer and your talk-to-girl for issues bothering you.

                            If you have any issue of concern, please, feel free to share with me. Your identity will not be revealed.

                            If you have stories, write-ups you will like to share on this blog, please, send a mail to <a href="mailto:aanuoluwaoladayo@gmail.com">aanuoluwaoladayo@gmail.com</a>. I'll be expecting your message

                            Thank you.</p>
                        {{-- @isset($message)
                            <div class="alert alert-success contact_msg" style="display: none" role="alert">
                                Your message was sent successfully.
                            </div>
                        @endisset
                        <div class="form-group">
                            <input type="text" name="name" id="name" class="form-control" placeholder="Your Name*" required="required">
                        </div>

                        <div class="form-group">
                            <input type="email" name="email" id="email" class="form-control" placeholder="Your Email*" required="required">
                        </div>

                        <div class="form-group">
                            <input type="text" name="subject" id="subject" class="form-control" placeholder="Your Subject*" required="required">
                        </div>

                        <div class="form-group">
                            <textarea name="message" id="message" cols="30" rows="5" class="form-control" placeholder="Your Message*" required="required"></textarea>
                        </div>

                        <button type="submit" name="submit" class="btn-custom">Send Message</button> --}}
                    </form>
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
