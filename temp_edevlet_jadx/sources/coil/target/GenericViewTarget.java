package coil.target;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import kotlin.Metadata;
import r.b;
import t.d;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u00032\u00020\u00042\u00020\u0005B\u0007¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcoil/target/GenericViewTarget;", "Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "Lr/b;", "Lt/d;", "Landroidx/lifecycle/DefaultLifecycleObserver;", "<init>", "()V", "coil-base_release"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes.dex */
public abstract class GenericViewTarget<T extends View> implements b<T>, d, DefaultLifecycleObserver {

    /* renamed from: a, reason: collision with root package name */
    public boolean f2467a;

    @Override // r.a
    public final void a(Drawable drawable) {
        h(drawable);
    }

    @Override // r.a
    public final void b(Drawable drawable) {
        h(drawable);
    }

    @Override // r.a
    public final void c(Drawable drawable) {
        h(drawable);
    }

    @Override // t.d
    public abstract Drawable e();

    public abstract void f(Drawable drawable);

    public final void g() {
        Object objE = e();
        Animatable animatable = objE instanceof Animatable ? (Animatable) objE : null;
        if (animatable == null) {
            return;
        }
        if (this.f2467a) {
            animatable.start();
        } else {
            animatable.stop();
        }
    }

    public final void h(Drawable drawable) {
        Object objE = e();
        Animatable animatable = objE instanceof Animatable ? (Animatable) objE : null;
        if (animatable != null) {
            animatable.stop();
        }
        f(drawable);
        g();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public final /* synthetic */ void onCreate(LifecycleOwner lifecycleOwner) {
        androidx.lifecycle.b.a(this, lifecycleOwner);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public final /* synthetic */ void onDestroy(LifecycleOwner lifecycleOwner) {
        androidx.lifecycle.b.b(this, lifecycleOwner);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public final /* synthetic */ void onPause(LifecycleOwner lifecycleOwner) {
        androidx.lifecycle.b.c(this, lifecycleOwner);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public final /* synthetic */ void onResume(LifecycleOwner lifecycleOwner) {
        androidx.lifecycle.b.d(this, lifecycleOwner);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public final void onStart(LifecycleOwner lifecycleOwner) {
        this.f2467a = true;
        g();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public final void onStop(LifecycleOwner lifecycleOwner) {
        this.f2467a = false;
        g();
    }
}
