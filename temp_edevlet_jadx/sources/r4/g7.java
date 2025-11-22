package r4;

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
public final class g7 implements t6.e {
    public static final Charset f = Charset.forName("UTF-8");

    /* renamed from: g, reason: collision with root package name */
    public static final t6.c f14141g;

    /* renamed from: h, reason: collision with root package name */
    public static final t6.c f14142h;

    /* renamed from: i, reason: collision with root package name */
    public static final f7 f14143i;

    /* renamed from: a, reason: collision with root package name */
    public OutputStream f14144a;

    /* renamed from: b, reason: collision with root package name */
    public final Map<Class<?>, t6.d<?>> f14145b;

    /* renamed from: c, reason: collision with root package name */
    public final Map<Class<?>, t6.f<?>> f14146c;

    /* renamed from: d, reason: collision with root package name */
    public final t6.d<Object> f14147d;

    /* renamed from: e, reason: collision with root package name */
    public final c f14148e = new c(this);

    static {
        d7 d7Var = d7.DEFAULT;
        a7 a7Var = new a7(1, d7Var);
        HashMap map = new HashMap();
        map.put(e7.class, a7Var);
        f14141g = new t6.c("key", androidx.appcompat.graphics.drawable.a.i(map));
        a7 a7Var2 = new a7(2, d7Var);
        HashMap map2 = new HashMap();
        map2.put(e7.class, a7Var2);
        f14142h = new t6.c("value", androidx.appcompat.graphics.drawable.a.i(map2));
        f14143i = f7.f14129a;
    }

    public g7(ByteArrayOutputStream byteArrayOutputStream, Map map, Map map2, t6.d dVar) {
        this.f14144a = byteArrayOutputStream;
        this.f14145b = map;
        this.f14146c = map2;
        this.f14147d = dVar;
    }

    public static int i(t6.c cVar) {
        e7 e7Var = (e7) cVar.a(e7.class);
        if (e7Var != null) {
            return ((a7) e7Var).f14080a;
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
            this.f14144a.write(bytes);
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
                j(f14143i, cVar, (Map.Entry) it2.next(), false);
            }
            return;
        }
        if (obj instanceof Double) {
            double dDoubleValue = ((Double) obj).doubleValue();
            if (z10 && dDoubleValue == 0.0d) {
                return;
            }
            k((i(cVar) << 3) | 1);
            this.f14144a.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putDouble(dDoubleValue).array());
            return;
        }
        if (obj instanceof Float) {
            float fFloatValue = ((Float) obj).floatValue();
            if (z10 && fFloatValue == 0.0f) {
                return;
            }
            k((i(cVar) << 3) | 5);
            this.f14144a.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putFloat(fFloatValue).array());
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
            this.f14144a.write(bArr);
            return;
        }
        t6.d<?> dVar = this.f14145b.get(obj.getClass());
        if (dVar != null) {
            j(dVar, cVar, obj, z10);
            return;
        }
        t6.f<?> fVar = this.f14146c.get(obj.getClass());
        if (fVar != null) {
            c cVar2 = this.f14148e;
            cVar2.f14099a = false;
            cVar2.f14101c = cVar;
            cVar2.f14100b = z10;
            fVar.a(obj, cVar2);
            return;
        }
        if (obj instanceof c7) {
            f(cVar, ((c7) obj).a(), true);
        } else if (obj instanceof Enum) {
            f(cVar, ((Enum) obj).ordinal(), true);
        } else {
            j(this.f14147d, cVar, obj, z10);
        }
    }

    public final void f(@NonNull t6.c cVar, int r32, boolean z10) throws IOException {
        if (z10 && r32 == 0) {
            return;
        }
        e7 e7Var = (e7) cVar.a(e7.class);
        if (e7Var == null) {
            throw new t6.b("Field has no @Protobuf config");
        }
        a7 a7Var = (a7) e7Var;
        int r42 = a7Var.f14081b.ordinal();
        int r22 = a7Var.f14080a;
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
            this.f14144a.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(r32).array());
        }
    }

    public final void g(@NonNull t6.c cVar, long j10, boolean z10) throws IOException {
        if (z10 && j10 == 0) {
            return;
        }
        e7 e7Var = (e7) cVar.a(e7.class);
        if (e7Var == null) {
            throw new t6.b("Field has no @Protobuf config");
        }
        a7 a7Var = (a7) e7Var;
        int r6 = a7Var.f14081b.ordinal();
        int r32 = a7Var.f14080a;
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
            this.f14144a.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(j10).array());
        }
    }

    public final void h(@Nullable r4 r4Var) throws IOException {
        t6.d<?> dVar = this.f14145b.get(r4.class);
        if (dVar != null) {
            dVar.a(r4Var, this);
        } else {
            String strValueOf = String.valueOf(r4.class);
            throw new t6.b(androidx.camera.camera2.internal.c.h(new StringBuilder(strValueOf.length() + 15), "No encoder for ", strValueOf));
        }
    }

    public final void j(t6.d dVar, t6.c cVar, Object obj, boolean z10) throws IOException {
        b7 b7Var = new b7();
        try {
            OutputStream outputStream = this.f14144a;
            this.f14144a = b7Var;
            try {
                dVar.a(obj, this);
                this.f14144a = outputStream;
                long j10 = b7Var.f14098a;
                b7Var.close();
                if (z10 && j10 == 0) {
                    return;
                }
                k((i(cVar) << 3) | 2);
                l(j10);
                dVar.a(obj, this);
            } catch (Throwable th2) {
                this.f14144a = outputStream;
                throw th2;
            }
        } catch (Throwable th3) {
            try {
                b7Var.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    public final void k(int r6) throws IOException {
        while (true) {
            long j10 = r6 & (-128);
            OutputStream outputStream = this.f14144a;
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
            OutputStream outputStream = this.f14144a;
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
