package x0;

import androidx.annotation.NonNull;
import r1.a;
import r1.d;

/* loaded from: classes.dex */
public final class v<Z> implements w<Z>, a.d {

    /* renamed from: e, reason: collision with root package name */
    public static final a.c f19092e = r1.a.a(20, new a());

    /* renamed from: a, reason: collision with root package name */
    public final d.a f19093a = new d.a();

    /* renamed from: b, reason: collision with root package name */
    public w<Z> f19094b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f19095c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f19096d;

    public class a implements a.b<v<?>> {
        @Override // r1.a.b
        public final v<?> a() {
            return new v<>();
        }
    }

    @Override // x0.w
    @NonNull
    public final Class<Z> a() {
        return this.f19094b.a();
    }

    public final synchronized void b() {
        this.f19093a.a();
        if (!this.f19095c) {
            throw new IllegalStateException("Already unlocked");
        }
        this.f19095c = false;
        if (this.f19096d) {
            recycle();
        }
    }

    @Override // x0.w
    @NonNull
    public final Z get() {
        return this.f19094b.get();
    }

    @Override // x0.w
    public final int getSize() {
        return this.f19094b.getSize();
    }

    @Override // r1.a.d
    @NonNull
    public final d.a r() {
        return this.f19093a;
    }

    @Override // x0.w
    public final synchronized void recycle() {
        this.f19093a.a();
        this.f19096d = true;
        if (!this.f19095c) {
            this.f19094b.recycle();
            this.f19094b = null;
            f19092e.release(this);
        }
    }
}
