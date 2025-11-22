package x0;

import androidx.annotation.NonNull;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class y implements v0.f {

    /* renamed from: j, reason: collision with root package name */
    public static final q1.i<Class<?>, byte[]> f19106j = new q1.i<>(50);

    /* renamed from: b, reason: collision with root package name */
    public final y0.b f19107b;

    /* renamed from: c, reason: collision with root package name */
    public final v0.f f19108c;

    /* renamed from: d, reason: collision with root package name */
    public final v0.f f19109d;

    /* renamed from: e, reason: collision with root package name */
    public final int f19110e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final Class<?> f19111g;

    /* renamed from: h, reason: collision with root package name */
    public final v0.h f19112h;

    /* renamed from: i, reason: collision with root package name */
    public final v0.l<?> f19113i;

    public y(y0.b bVar, v0.f fVar, v0.f fVar2, int r42, int r52, v0.l<?> lVar, Class<?> cls, v0.h hVar) {
        this.f19107b = bVar;
        this.f19108c = fVar;
        this.f19109d = fVar2;
        this.f19110e = r42;
        this.f = r52;
        this.f19113i = lVar;
        this.f19111g = cls;
        this.f19112h = hVar;
    }

    @Override // v0.f
    public final void a(@NonNull MessageDigest messageDigest) {
        y0.b bVar = this.f19107b;
        byte[] bArr = (byte[]) bVar.d();
        ByteBuffer.wrap(bArr).putInt(this.f19110e).putInt(this.f).array();
        this.f19109d.a(messageDigest);
        this.f19108c.a(messageDigest);
        messageDigest.update(bArr);
        v0.l<?> lVar = this.f19113i;
        if (lVar != null) {
            lVar.a(messageDigest);
        }
        this.f19112h.a(messageDigest);
        q1.i<Class<?>, byte[]> iVar = f19106j;
        Class<?> cls = this.f19111g;
        byte[] bArrA = iVar.a(cls);
        if (bArrA == null) {
            bArrA = cls.getName().getBytes(v0.f.f18200a);
            iVar.d(cls, bArrA);
        }
        messageDigest.update(bArrA);
        bVar.put(bArr);
    }

    @Override // v0.f
    public final boolean equals(Object obj) {
        if (!(obj instanceof y)) {
            return false;
        }
        y yVar = (y) obj;
        return this.f == yVar.f && this.f19110e == yVar.f19110e && q1.m.b(this.f19113i, yVar.f19113i) && this.f19111g.equals(yVar.f19111g) && this.f19108c.equals(yVar.f19108c) && this.f19109d.equals(yVar.f19109d) && this.f19112h.equals(yVar.f19112h);
    }

    @Override // v0.f
    public final int hashCode() {
        int r12 = ((((this.f19109d.hashCode() + (this.f19108c.hashCode() * 31)) * 31) + this.f19110e) * 31) + this.f;
        v0.l<?> lVar = this.f19113i;
        if (lVar != null) {
            r12 = (r12 * 31) + lVar.hashCode();
        }
        return this.f19112h.hashCode() + ((this.f19111g.hashCode() + (r12 * 31)) * 31);
    }

    public final String toString() {
        return "ResourceCacheKey{sourceKey=" + this.f19108c + ", signature=" + this.f19109d + ", width=" + this.f19110e + ", height=" + this.f + ", decodedResourceClass=" + this.f19111g + ", transformation='" + this.f19113i + "', options=" + this.f19112h + '}';
    }
}
