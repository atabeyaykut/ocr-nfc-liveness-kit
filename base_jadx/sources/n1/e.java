package n1;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import o1.d;

/* loaded from: classes.dex */
public abstract class e<Z> extends h<ImageView, Z> implements d.a {

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public Animatable f10530c;

    public e(ImageView imageView) {
        super(imageView);
    }

    @Override // n1.g
    public final void c(@NonNull Z z10, @Nullable o1.d<? super Z> dVar) {
        if (dVar != null && dVar.a(z10, this)) {
            if (!(z10 instanceof Animatable)) {
                this.f10530c = null;
                return;
            }
            Animatable animatable = (Animatable) z10;
            this.f10530c = animatable;
            animatable.start();
            return;
        }
        k(z10);
        if (!(z10 instanceof Animatable)) {
            this.f10530c = null;
            return;
        }
        Animatable animatable2 = (Animatable) z10;
        this.f10530c = animatable2;
        animatable2.start();
    }

    @Override // n1.g
    public final void d(@Nullable Drawable drawable) {
        k(null);
        this.f10530c = null;
        ((ImageView) this.f10531a).setImageDrawable(drawable);
    }

    @Override // n1.g
    public final void f(@Nullable Drawable drawable) {
        k(null);
        this.f10530c = null;
        ((ImageView) this.f10531a).setImageDrawable(drawable);
    }

    @Override // n1.h, n1.g
    public final void h(@Nullable Drawable drawable) {
        super.h(drawable);
        Animatable animatable = this.f10530c;
        if (animatable != null) {
            animatable.stop();
        }
        k(null);
        this.f10530c = null;
        ((ImageView) this.f10531a).setImageDrawable(drawable);
    }

    @Override // com.bumptech.glide.manager.k
    public final void i() {
        Animatable animatable = this.f10530c;
        if (animatable != null) {
            animatable.stop();
        }
    }

    public abstract void k(@Nullable Z z10);

    @Override // com.bumptech.glide.manager.k
    public final void onStart() {
        Animatable animatable = this.f10530c;
        if (animatable != null) {
            animatable.start();
        }
    }
}
