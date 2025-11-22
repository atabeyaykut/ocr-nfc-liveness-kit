package yc;

import ed.h;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: d, reason: collision with root package name */
    public static final ed.h f19512d;

    /* renamed from: e, reason: collision with root package name */
    public static final ed.h f19513e;
    public static final ed.h f;

    /* renamed from: g, reason: collision with root package name */
    public static final ed.h f19514g;

    /* renamed from: h, reason: collision with root package name */
    public static final ed.h f19515h;

    /* renamed from: i, reason: collision with root package name */
    public static final ed.h f19516i;

    /* renamed from: a, reason: collision with root package name */
    public final int f19517a;

    /* renamed from: b, reason: collision with root package name */
    public final ed.h f19518b;

    /* renamed from: c, reason: collision with root package name */
    public final ed.h f19519c;

    static {
        ed.h hVar = ed.h.f5315d;
        f19512d = h.a.b(":");
        f19513e = h.a.b(":status");
        f = h.a.b(":method");
        f19514g = h.a.b(":path");
        f19515h = h.a.b(":scheme");
        f19516i = h.a.b(":authority");
    }

    public c(ed.h name, ed.h value) {
        kotlin.jvm.internal.h.f(name, "name");
        kotlin.jvm.internal.h.f(value, "value");
        this.f19518b = name;
        this.f19519c = value;
        this.f19517a = value.r() + name.r() + 32;
    }

    /* JADX WARN: 'thıs' call moved to the top of the method (can break code semantics) */
    public c(ed.h name, String value) {
        this(name, h.a.b(value));
        kotlin.jvm.internal.h.f(name, "name");
        kotlin.jvm.internal.h.f(value, "value");
        ed.h hVar = ed.h.f5315d;
    }

    /* JADX WARN: 'thıs' call moved to the top of the method (can break code semantics) */
    public c(String name, String value) {
        this(h.a.b(name), h.a.b(value));
        kotlin.jvm.internal.h.f(name, "name");
        kotlin.jvm.internal.h.f(value, "value");
        ed.h hVar = ed.h.f5315d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return kotlin.jvm.internal.h.a(this.f19518b, cVar.f19518b) && kotlin.jvm.internal.h.a(this.f19519c, cVar.f19519c);
    }

    public final int hashCode() {
        ed.h hVar = this.f19518b;
        int r12 = (hVar != null ? hVar.hashCode() : 0) * 31;
        ed.h hVar2 = this.f19519c;
        return r12 + (hVar2 != null ? hVar2.hashCode() : 0);
    }

    public final String toString() {
        return this.f19518b.G() + ": " + this.f19519c.G();
    }
}
