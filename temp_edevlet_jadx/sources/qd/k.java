package qd;

import java.lang.reflect.Method;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes2.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public final Method f13584a;

    /* renamed from: b, reason: collision with root package name */
    public final ThreadMode f13585b;

    /* renamed from: c, reason: collision with root package name */
    public final Class<?> f13586c;

    /* renamed from: d, reason: collision with root package name */
    public final int f13587d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f13588e;
    public String f;

    public k(Method method, Class<?> cls, ThreadMode threadMode, int r42, boolean z10) {
        this.f13584a = method;
        this.f13585b = threadMode;
        this.f13586c = cls;
        this.f13587d = r42;
        this.f13588e = z10;
    }

    public final synchronized void a() {
        if (this.f == null) {
            StringBuilder sb2 = new StringBuilder(64);
            sb2.append(this.f13584a.getDeclaringClass().getName());
            sb2.append('#');
            sb2.append(this.f13584a.getName());
            sb2.append('(');
            sb2.append(this.f13586c.getName());
            this.f = sb2.toString();
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        a();
        k kVar = (k) obj;
        kVar.a();
        return this.f.equals(kVar.f);
    }

    public final int hashCode() {
        return this.f13584a.hashCode();
    }
}
