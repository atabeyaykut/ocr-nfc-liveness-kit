package n1;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import q1.m;

/* loaded from: classes.dex */
public abstract class c<T> implements g<T> {

    /* renamed from: a, reason: collision with root package name */
    public final int f10527a;

    /* renamed from: b, reason: collision with root package name */
    public final int f10528b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public m1.d f10529c;

    public c() {
        if (!m.h(Integer.MIN_VALUE, Integer.MIN_VALUE)) {
            throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: -2147483648 and height: -2147483648");
        }
        this.f10527a = Integer.MIN_VALUE;
        this.f10528b = Integer.MIN_VALUE;
    }

    @Override // n1.g
    @Nullable
    public final m1.d a() {
        return this.f10529c;
    }

    @Override // n1.g
    public final void b(@NonNull f fVar) {
    }

    @Override // n1.g
    public final void d(@Nullable Drawable drawable) {
    }

    @Override // n1.g
    public final void e(@NonNull f fVar) {
        fVar.c(this.f10527a, this.f10528b);
    }

    @Override // n1.g
    public final void f(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.manager.k
    public final void g() {
    }

    @Override // com.bumptech.glide.manager.k
    public final void i() {
    }

    @Override // n1.g
    public final void j(@Nullable m1.d dVar) {
        this.f10529c = dVar;
    }

    @Override // com.bumptech.glide.manager.k
    public final void onStart() {
    }
}
