#include <ruby.h>

static VALUE mDFT;

static VALUE execute(VALUE klass, VALUE values, VALUE window) {
    double real, imag, v, w, theta;
    long i, j, length = RARRAY_LENINT( values );
    VALUE outArray = rb_ary_new();

    for( i = 0; i < length; i++ ) {
        real = 0.0;
        imag = 0.0;
        for( j = 0; j < length; j++ ){
            theta = i * j * 2 * M_PI / length;
            v = NUM2DBL(rb_ary_entry(values, j));
            w = RTEST(window) ? NUM2DBL( rb_ary_entry(window, j) ) : 1.0;
            real += ( cos(theta) * v * w );
            imag -= ( sin(theta) * v * w );
        }
        rb_ary_push( outArray, rb_complex_new( DBL2NUM(real), DBL2NUM(imag) ) );
    }
    return outArray;
}

void Init_dft(void) {
    mDFT = rb_define_module("DFT");
    rb_define_singleton_method(mDFT, "execute", execute, 2);
}
