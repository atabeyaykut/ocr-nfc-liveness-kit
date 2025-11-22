package w6;

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

/* loaded from: classes2.dex */
public final class f implements t6.e {
    public static final Charset f = Charset.forName("UTF-8");

    /* renamed from: g, reason: collision with root package name */
    public static final t6.c f18801g;

    /* renamed from: h, reason: collision with root package name */
    public static final t6.c f18802h;

    /* renamed from: i, reason: collision with root package name */
    public static final e f18803i;

    /* renamed from: a, reason: collision with root package name */
    public OutputStream f18804a;

    /* renamed from: b, reason: collision with root package name */
    public final Map<Class<?>, t6.d<?>> f18805b;

    /* renamed from: c, reason: collision with root package name */
    public final Map<Class<?>, t6.f<?>> f18806c;

    /* renamed from: d, reason: collision with root package name */
    public final t6.d<Object> f18807d;

    /* renamed from: e, reason: collision with root package name */
    public final i f18808e = new i(this);

    /* JADX WARN: Type inference failed for: r0v6, types: [w6.e] */
    static {
        a aVar = new a(1);
        HashMap map = new HashMap();
        map.put(d.class, aVar);
        f18801g = new t6.c("key", androidx.appcompat.graphics.drawable.a.i(map));
        a aVar2 = new a(2);
        HashMap map2 = new HashMap();
        map2.put(d.class, aVar2);
        f18802h = new t6.c("value", androidx.appcompat.graphics.drawable.a.i(map2));
        f18803i = new t6.d() { // from class: w6.e
            @Override // t6.a
            public final void a(Object obj, t6.e eVar) throws IOException {
                Map.Entry entry = (Map.Entry) obj;
                t6.e eVar2 = eVar;
                eVar2.a(f.f18801g, entry.getKey());
                eVar2.a(f.f18802h, entry.getValue());
            }
        };
    }

    public f(ByteArrayOutputStream byteArrayOutputStream, Map map, Map map2, t6.d dVar) {
        this.f18804a = byteArrayOutputStream;
        this.f18805b = map;
        this.f18806c = map2;
        this.f18807d = dVar;
    }

    public static int h(t6.c cVar) {
        d dVar = (d) cVar.a(d.class);
        if (dVar != null) {
            return ((a) dVar).f18797a;
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
    public final t6.e b(@NonNull t6.c cVar, boolean z10) throws IOException {
        f(cVar, z10 ? 1 : 0, true);
        return this;
    }

    @Override // t6.e
    @NonNull
    public final t6.e c(@NonNull t6.c cVar, int r32) throws IOException {
        f(cVar, r32, true);
        return this;
    }

    @Override // t6.e
    @NonNull
    public final t6.e d(@NonNull t6.c cVar, long j10) throws IOException {
        if (j10 != 0) {
            d dVar = (d) cVar.a(d.class);
            if (dVar == null) {
                throw new t6.b("Field has no @Protobuf config");
            }
            i(((a) dVar).f18797a << 3);
            j(j10);
        }
        return this;
    }

    public final f e(@NonNull t6.c cVar, @Nullable Object obj, boolean z10) throws IOException {
        if (obj == null) {
            return this;
        }
        if (obj instanceof CharSequence) {
            CharSequence charSequence = (CharSequence) obj;
            if (z10 && charSequence.length() == 0) {
                return this;
            }
            i((h(cVar) << 3) | 2);
            byte[] bytes = charSequence.toString().getBytes(f);
            i(bytes.length);
            this.f18804a.write(bytes);
            return this;
        }
        if (obj instanceof Collection) {
            Iterator it = ((Collection) obj).iterator();
            while (it.hasNext()) {
                e(cVar, it.next(), false);
            }
            return this;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                g(f18803i, cVar, (Map.Entry) it2.next(), false);
            }
            return this;
        }
        if (obj instanceof Double) {
            double dDoubleValue = ((Double) obj).doubleValue();
            if (!z10 || dDoubleValue != 0.0d) {
                i((h(cVar) << 3) | 1);
                this.f18804a.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putDouble(dDoubleValue).array());
            }
            return this;
        }
        if (obj instanceof Float) {
            float fFloatValue = ((Float) obj).floatValue();
            if (!z10 || fFloatValue != 0.0f) {
                i((h(cVar) << 3) | 5);
                this.f18804a.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putFloat(fFloatValue).array());
            }
            return this;
        }
        if (obj instanceof Number) {
            long jLongValue = ((Number) obj).longValue();
            if (!z10 || jLongValue != 0) {
                d dVar = (d) cVar.a(d.class);
                if (dVar == null) {
                    throw new t6.b("Field has no @Protobuf config");
                }
                i(((a) dVar).f18797a << 3);
                j(jLongValue);
            }
            return this;
        }
        if (obj instanceof Boolean) {
            f(cVar, ((Boolean) obj).booleanValue() ? 1 : 0, z10);
            return this;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            if (z10 && bArr.length == 0) {
                return this;
            }
            i((h(cVar) << 3) | 2);
            i(bArr.length);
            this.f18804a.write(bArr);
            return this;
        }
        t6.d<?> dVar2 = this.f18805b.get(obj.getClass());
        if (dVar2 != null) {
            g(dVar2, cVar, obj, z10);
            return this;
        }
        t6.f<?> fVar = this.f18806c.get(obj.getClass());
        if (fVar != null) {
            i iVar = this.f18808e;
            iVar.f18813a = false;
            iVar.f18815c = cVar;
            iVar.f18814b = z10;
            fVar.a(obj, iVar);
            return this;
        }
        if (obj instanceof c) {
            f(cVar, ((c) obj).f(), true);
            return this;
        }
        if (obj instanceof Enum) {
            f(cVar, ((Enum) obj).ordinal(), true);
            return this;
        }
        g(this.f18807d, cVar, obj, z10);
        return this;
    }

    public final void f(@NonNull t6.c cVar, int r22, boolean z10) throws IOException {
        if (z10 && r22 == 0) {
            return;
        }
        d dVar = (d) cVar.a(d.class);
        if (dVar == null) {
            throw new t6.b("Field has no @Protobuf config");
        }
        i(((a) dVar).f18797a << 3);
        i(r22);
    }

    public final void g(t6.d dVar, t6.c cVar, Object obj, boolean z10) throws IOException {
        b bVar = new b();
        try {
            OutputStream outputStream = this.f18804a;
            this.f18804a = bVar;
            try {
                dVar.a(obj, this);
                this.f18804a = outputStream;
                long j10 = bVar.f18798a;
                bVar.close();
                if (z10 && j10 == 0) {
                    return;
                }
                i((h(cVar) << 3) | 2);
                j(j10);
                dVar.a(obj, this);
            } catch (Throwable th2) {
                this.f18804a = outputStream;
                throw th2;
            }
        } catch (Throwable th3) {
            try {
                bVar.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    public final void i(int r6) throws IOException {
        while (true) {
            long j10 = r6 & (-128);
            OutputStream outputStream = this.f18804a;
            if (j10 == 0) {
                outputStream.write(r6 & CertificateBody.profileType);
                return;
            } else {
                outputStream.write((r6 & CertificateBody.profileType) | 128);
                r6 >>>= 7;
            }
        }
    }

    public final void j(long j10) throws IOException {
        while (true) {
            long j11 = (-128) & j10;
            OutputStream outputStream = this.f18804a;
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
