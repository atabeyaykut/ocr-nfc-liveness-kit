package uc;

import kotlin.jvm.internal.h;

/* loaded from: classes2.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public c f17917a;

    /* renamed from: b, reason: collision with root package name */
    public long f17918b;

    /* renamed from: c, reason: collision with root package name */
    public final String f17919c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f17920d;

    public /* synthetic */ a() {
        throw null;
    }

    public a(String name, boolean z10) {
        h.f(name, "name");
        this.f17919c = name;
        this.f17920d = z10;
        this.f17918b = -1L;
    }

    public abstract long a();

    public final String toString() {
        return this.f17919c;
    }
}
