package p4;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.bouncycastle.asn1.eac.CertificateBody;

/* loaded from: classes.dex */
public final class p1 implements t6.e {
    public static final Charset f = Charset.forName("UTF-8");

    /* renamed from: g, reason: collision with root package name */
    public static final t6.c f12585g;

    /* renamed from: h, reason: collision with root package name */
    public static final t6.c f12586h;

    /* renamed from: i, reason: collision with root package name */
    public static final o1 f12587i;

    /* renamed from: a, reason: collision with root package name */
    public OutputStream f12588a;

    /* renamed from: b, reason: collision with root package name */
    public final Map<Class<?>, t6.d<?>> f12589b;

    /* renamed from: c, reason: collision with root package name */
    public final Map<Class<?>, t6.f<?>> f12590c;

    /* renamed from: d, reason: collision with root package name */
    public final t6.d<Object> f12591d;

    /* renamed from: e, reason: collision with root package name */
    public final s1 f12592e = new s1(this);

    static {
        l1 l1Var = l1.DEFAULT;
        h1 h1Var = new h1(1, l1Var);
        HashMap map = new HashMap();
        map.put(n1.class, h1Var);
        f12585g = new t6.c("key", androidx.appcompat.graphics.drawable.a.i(map));
        h1 h1Var2 = new h1(2, l1Var);
        HashMap map2 = new HashMap();
        map2.put(n1.class, h1Var2);
        f12586h = new t6.c("value", androidx.appcompat.graphics.drawable.a.i(map2));
        f12587i = o1.f12538a;
    }

    public p1(ByteArrayOutputStream byteArrayOutputStream, Map map, Map map2, t6.d dVar) {
        this.f12588a = byteArrayOutputStream;
        this.f12589b = map;
        this.f12590c = map2;
        this.f12591d = dVar;
    }

    public static int i(t6.c cVar) {
        n1 n1Var = (n1) cVar.a(n1.class);
        if (n1Var != null) {
            return ((h1) n1Var).f12378a;
        }
        throw new t6.b("Field has no @Protobuf config");
    }

    @Override // t6.e
    @NonNull
    public final t6.e a(@NonNull t6.c cVar, @Nullable Object obj) throws IOException {
        e(cVar, obj, true);
        return this;
    }

    @Override // t6.e
    @NonNull
    public final /* bridge */ /* synthetic */ t6.e b(@NonNull t6.c cVar, boolean z10) throws IOException {
        f(cVar, z10 ? 1 : 0, true);
        return this;
    }

    @Override // t6.e
    @NonNull
    public final /* bridge */ /* synthetic */ t6.e c(@NonNull t6.c cVar, int r32) throws IOException {
        f(cVar, r32, true);
        return this;
    }

    @Override // t6.e
    @NonNull
    public final /* bridge */ /* synthetic */ t6.e d(@NonNull t6.c cVar, long j10) throws IOException {
        g(cVar, j10, true);
        return this;
    }

    public final void e(@NonNull t6.c cVar, @Nullable Object obj, boolean z10) throws IOException {
        if (obj == null) {
            return;
        }
        if (obj instanceof CharSequence) {
            CharSequence charSequence = (CharSequence) obj;
            if (z10 && charSequence.length() == 0) {
                return;
            }
            k((i(cVar) << 3) | 2);
            byte[] bytes = charSequence.toString().getBytes(f);
            k(bytes.length);
            this.f12588a.write(bytes);
            return;
        }
        if (obj instanceof Collection) {
            Iterator it = ((Collection) obj).iterator();
            while (it.hasNext()) {
                e(cVar, it.next(), false);
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                j(f12587i, cVar, (Map.Entry) it2.next(), false);
            }
            return;
        }
        if (obj instanceof Double) {
            double dDoubleValue = ((Double) obj).doubleValue();
            if (z10 && dDoubleValue == 0.0d) {
                return;
            }
            k((i(cVar) << 3) | 1);
            this.f12588a.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putDouble(dDoubleValue).array());
            return;
        }
        if (obj instanceof Float) {
            float fFloatValue = ((Float) obj).floatValue();
            if (z10 && fFloatValue == 0.0f) {
                return;
            }
            k((i(cVar) << 3) | 5);
            this.f12588a.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putFloat(fFloatValue).array());
            return;
        }
        if (obj instanceof Number) {
            g(cVar, ((Number) obj).longValue(), z10);
            return;
        }
        if (obj instanceof Boolean) {
            f(cVar, ((Boolean) obj).booleanValue() ? 1 : 0, z10);
            return;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            if (z10 && bArr.length == 0) {
                return;
            }
            k((i(cVar) << 3) | 2);
            k(bArr.length);
            this.f12588a.write(bArr);
            return;
        }
        t6.d<?> dVar = this.f12589b.get(obj.getClass());
        if (dVar != null) {
            j(dVar, cVar, obj, z10);
            return;
        }
        t6.f<?> fVar = this.f12590c.get(obj.getClass());
        if (fVar != null) {
            s1 s1Var = this.f12592e;
            s1Var.f12666a = false;
            s1Var.f12668c = cVar;
            s1Var.f12667b = z10;
            fVar.a(obj, s1Var);
            return;
        }
        if (obj instanceof k1) {
            f(cVar, ((k1) obj).a(), true);
        } else if (obj instanceof Enum) {
            f(cVar, ((Enum) obj).ordinal(), true);
        } else {
            j(this.f12591d, cVar, obj, z10);
        }
    }

    public final void f(@NonNull t6.c cVar, int r32, boolean z10) throws IOException {
        if (z10 && r32 == 0) {
            return;
        }
        n1 n1Var = (n1) cVar.a(n1.class);
        if (n1Var == null) {
            throw new t6.b("Field has no @Protobuf config");
        }
        h1 h1Var = (h1) n1Var;
        int r42 = h1Var.f12379b.ordinal();
        int r22 = h1Var.f12378a;
        if (r42 == 0) {
            k(r22 << 3);
            k(r32);
        } else if (r42 == 1) {
            k(r22 << 3);
            k((r32 + r32) ^ (r32 >> 31));
        } else {
            if (r42 != 2) {
                return;
            }
            k((r22 << 3) | 5);
            this.f12588a.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(r32).array());
        }
    }

    public final void g(@NonNull t6.c cVar, long j10, boolean z10) throws IOException {
        if (z10 && j10 == 0) {
            return;
        }
        n1 n1Var = (n1) cVar.a(n1.class);
        if (n1Var == null) {
            throw new t6.b("Field has no @Protobuf config");
        }
        h1 h1Var = (h1) n1Var;
        int r6 = h1Var.f12379b.ordinal();
        int r32 = h1Var.f12378a;
        if (r6 == 0) {
            k(r32 << 3);
            l(j10);
        } else if (r6 == 1) {
            k(r32 << 3);
            l((j10 >> 63) ^ (j10 + j10));
        } else {
            if (r6 != 2) {
                return;
            }
            k((r32 << 3) | 1);
            this.f12588a.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(j10).array());
        }
    }

    public final void h(@Nullable r7 r7Var) throws IOException {
        t6.d<?> dVar = this.f12589b.get(r7.class);
        if (dVar != null) {
            dVar.a(r7Var, this);
        } else {
            String strValueOf = String.valueOf(r7.class);
            throw new t6.b(androidx.camera.camera2.internal.c.h(new StringBuilder(strValueOf.length() + 15), "No encoder for ", strValueOf));
        }
    }

    public final void j(t6.d dVar, t6.c cVar, Object obj, boolean z10) throws IOException {
        j1 j1Var = new j1();
        try {
            OutputStream outputStream = this.f12588a;
            this.f12588a = j1Var;
            try {
                dVar.a(obj, this);
                this.f12588a = outputStream;
                long j10 = j1Var.f12426a;
                j1Var.close();
                if (z10 && j10 == 0) {
                    return;
                }
                k((i(cVar) << 3) | 2);
                l(j10);
                dVar.a(obj, this);
            } catch (Throwable th2) {
                this.f12588a = outputStream;
                throw th2;
            }
        } catch (Throwable th3) {
            try {
                j1Var.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    public final void k(int r6) throws IOException {
        while (true) {
            long j10 = r6 & (-128);
            OutputStream outputStream = this.f12588a;
            if (j10 == 0) {
                outputStream.write(r6 & CertificateBody.profileType);
                return;
            } else {
                outputStream.write((r6 & CertificateBody.profileType) | 128);
                r6 >>>= 7;
            }
        }
    }

    public final void l(long j10) throws IOException {
        while (true) {
            long j11 = (-128) & j10;
            OutputStream outputStream = this.f12588a;
            if (j11 == 0) {
                outputStream.write(((int) j10) & CertificateBody.profileType);
                return;
            } else {
                outputStream.write((((int) j10) & CertificateBody.profileType) | 128);
                j10 >>>= 7;
            }
        }
    }
}
