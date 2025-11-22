package s4;

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
public final class b1 implements t6.e {
    public static final Charset f = Charset.forName("UTF-8");

    /* renamed from: g, reason: collision with root package name */
    public static final t6.c f14907g;

    /* renamed from: h, reason: collision with root package name */
    public static final t6.c f14908h;

    /* renamed from: i, reason: collision with root package name */
    public static final a1 f14909i;

    /* renamed from: a, reason: collision with root package name */
    public OutputStream f14910a;

    /* renamed from: b, reason: collision with root package name */
    public final Map<Class<?>, t6.d<?>> f14911b;

    /* renamed from: c, reason: collision with root package name */
    public final Map<Class<?>, t6.f<?>> f14912c;

    /* renamed from: d, reason: collision with root package name */
    public final t6.d<Object> f14913d;

    /* renamed from: e, reason: collision with root package name */
    public final e1 f14914e = new e1(this);

    static {
        y0 y0Var = y0.DEFAULT;
        v0 v0Var = new v0(1, y0Var);
        HashMap map = new HashMap();
        map.put(z0.class, v0Var);
        f14907g = new t6.c("key", androidx.appcompat.graphics.drawable.a.i(map));
        v0 v0Var2 = new v0(2, y0Var);
        HashMap map2 = new HashMap();
        map2.put(z0.class, v0Var2);
        f14908h = new t6.c("value", androidx.appcompat.graphics.drawable.a.i(map2));
        f14909i = a1.f14874a;
    }

    public b1(ByteArrayOutputStream byteArrayOutputStream, Map map, Map map2, t6.d dVar) {
        this.f14910a = byteArrayOutputStream;
        this.f14911b = map;
        this.f14912c = map2;
        this.f14913d = dVar;
    }

    public static int i(t6.c cVar) {
        z0 z0Var = (z0) cVar.a(z0.class);
        if (z0Var != null) {
            return ((v0) z0Var).f15196a;
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
            this.f14910a.write(bytes);
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
                j(f14909i, cVar, (Map.Entry) it2.next(), false);
            }
            return;
        }
        if (obj instanceof Double) {
            double dDoubleValue = ((Double) obj).doubleValue();
            if (z10 && dDoubleValue == 0.0d) {
                return;
            }
            k((i(cVar) << 3) | 1);
            this.f14910a.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putDouble(dDoubleValue).array());
            return;
        }
        if (obj instanceof Float) {
            float fFloatValue = ((Float) obj).floatValue();
            if (z10 && fFloatValue == 0.0f) {
                return;
            }
            k((i(cVar) << 3) | 5);
            this.f14910a.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putFloat(fFloatValue).array());
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
            this.f14910a.write(bArr);
            return;
        }
        t6.d<?> dVar = this.f14911b.get(obj.getClass());
        if (dVar != null) {
            j(dVar, cVar, obj, z10);
            return;
        }
        t6.f<?> fVar = this.f14912c.get(obj.getClass());
        if (fVar != null) {
            e1 e1Var = this.f14914e;
            e1Var.f14959a = false;
            e1Var.f14961c = cVar;
            e1Var.f14960b = z10;
            fVar.a(obj, e1Var);
            return;
        }
        if (obj instanceof x0) {
            f(cVar, ((x0) obj).a(), true);
        } else if (obj instanceof Enum) {
            f(cVar, ((Enum) obj).ordinal(), true);
        } else {
            j(this.f14913d, cVar, obj, z10);
        }
    }

    public final void f(@NonNull t6.c cVar, int r32, boolean z10) throws IOException {
        if (z10 && r32 == 0) {
            return;
        }
        z0 z0Var = (z0) cVar.a(z0.class);
        if (z0Var == null) {
            throw new t6.b("Field has no @Protobuf config");
        }
        v0 v0Var = (v0) z0Var;
        int r42 = v0Var.f15197b.ordinal();
        int r22 = v0Var.f15196a;
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
            this.f14910a.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(r32).array());
        }
    }

    public final void g(@NonNull t6.c cVar, long j10, boolean z10) throws IOException {
        if (z10 && j10 == 0) {
            return;
        }
        z0 z0Var = (z0) cVar.a(z0.class);
        if (z0Var == null) {
            throw new t6.b("Field has no @Protobuf config");
        }
        v0 v0Var = (v0) z0Var;
        int r6 = v0Var.f15197b.ordinal();
        int r32 = v0Var.f15196a;
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
            this.f14910a.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(j10).array());
        }
    }

    public final void h(@Nullable b7 b7Var) throws IOException {
        t6.d<?> dVar = this.f14911b.get(b7.class);
        if (dVar != null) {
            dVar.a(b7Var, this);
        } else {
            String strValueOf = String.valueOf(b7.class);
            throw new t6.b(androidx.camera.camera2.internal.c.h(new StringBuilder(strValueOf.length() + 15), "No encoder for ", strValueOf));
        }
    }

    public final void j(t6.d dVar, t6.c cVar, Object obj, boolean z10) throws IOException {
        w0 w0Var = new w0();
        try {
            OutputStream outputStream = this.f14910a;
            this.f14910a = w0Var;
            try {
                dVar.a(obj, this);
                this.f14910a = outputStream;
                long j10 = w0Var.f15205a;
                w0Var.close();
                if (z10 && j10 == 0) {
                    return;
                }
                k((i(cVar) << 3) | 2);
                l(j10);
                dVar.a(obj, this);
            } catch (Throwable th2) {
                this.f14910a = outputStream;
                throw th2;
            }
        } catch (Throwable th3) {
            try {
                w0Var.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    public final void k(int r6) throws IOException {
        while (true) {
            long j10 = r6 & (-128);
            OutputStream outputStream = this.f14910a;
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
            OutputStream outputStream = this.f14910a;
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
