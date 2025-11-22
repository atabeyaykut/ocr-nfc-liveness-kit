package r3;

import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public abstract class w0 {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public Object f14057a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f14058b = false;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ c f14059c;

    public w0(c cVar, Boolean bool) {
        this.f14059c = cVar;
        this.f14057a = bool;
    }

    public abstract void a();

    public abstract void b();

    public final void c() {
        synchronized (this) {
            this.f14057a = null;
        }
    }

    public final void d() {
        c();
        synchronized (this.f14059c.f13928l) {
            this.f14059c.f13928l.remove(this);
        }
    }
}
