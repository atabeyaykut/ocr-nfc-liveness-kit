package v2;

import android.content.Context;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public final class c extends h {

    /* renamed from: a, reason: collision with root package name */
    public final Context f18216a;

    /* renamed from: b, reason: collision with root package name */
    public final d3.a f18217b;

    /* renamed from: c, reason: collision with root package name */
    public final d3.a f18218c;

    /* renamed from: d, reason: collision with root package name */
    public final String f18219d;

    public c(Context context, d3.a aVar, d3.a aVar2, String str) {
        if (context == null) {
            throw new NullPointerException("Null applicationContext");
        }
        this.f18216a = context;
        if (aVar == null) {
            throw new NullPointerException("Null wallClock");
        }
        this.f18217b = aVar;
        if (aVar2 == null) {
            throw new NullPointerException("Null monotonicClock");
        }
        this.f18218c = aVar2;
        if (str == null) {
            throw new NullPointerException("Null backendName");
        }
        this.f18219d = str;
    }

    @Override // v2.h
    public final Context a() {
        return this.f18216a;
    }

    @Override // v2.h
    @NonNull
    public final String b() {
        return this.f18219d;
    }

    @Override // v2.h
    public final d3.a c() {
        return this.f18218c;
    }

    @Override // v2.h
    public final d3.a d() {
        return this.f18217b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.f18216a.equals(hVar.a()) && this.f18217b.equals(hVar.d()) && this.f18218c.equals(hVar.c()) && this.f18219d.equals(hVar.b());
    }

    public final int hashCode() {
        return ((((((this.f18216a.hashCode() ^ 1000003) * 1000003) ^ this.f18217b.hashCode()) * 1000003) ^ this.f18218c.hashCode()) * 1000003) ^ this.f18219d.hashCode();
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("CreationContext{applicationContext=");
        sb2.append(this.f18216a);
        sb2.append(", wallClock=");
        sb2.append(this.f18217b);
        sb2.append(", monotonicClock=");
        sb2.append(this.f18218c);
        sb2.append(", backendName=");
        return androidx.camera.camera2.internal.c.h(sb2, this.f18219d, "}");
    }
}
