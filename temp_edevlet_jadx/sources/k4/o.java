package k4;

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
public final class o implements t6.e {
    public static final Charset f = Charset.forName("UTF-8");

    /* renamed from: g, reason: collision with root package name */
    public static final t6.c f8753g;

    /* renamed from: h, reason: collision with root package name */
    public static final t6.c f8754h;

    /* renamed from: i, reason: collision with root package name */
    public static final n f8755i;

    /* renamed from: a, reason: collision with root package name */
    public OutputStream f8756a;

    /* renamed from: b, reason: collision with root package name */
    public final Map<Class<?>, t6.d<?>> f8757b;

    /* renamed from: c, reason: collision with root package name */
    public final Map<Class<?>, t6.f<?>> f8758c;

    /* renamed from: d, reason: collision with root package name */
    public final t6.d<Object> f8759d;

    /* renamed from: e, reason: collision with root package name */
    public final r f8760e = new r(this);

    static {
        i iVar = new i(1);
        HashMap map = new HashMap();
        map.put(m.class, iVar);
        f8753g = new t6.c("key", androidx.appcompat.graphics.drawable.a.i(map));
        i iVar2 = new i(2);
        HashMap map2 = new HashMap();
        map2.put(m.class, iVar2);
        f8754h = new t6.c("value", androidx.appcompat.graphics.drawable.a.i(map2));
        f8755i = n.f8752a;
    }

    public o(ByteArrayOutputStream byteArrayOutputStream, Map map, Map map2, t6.d dVar) {
        this.f8756a = byteArrayOutputStream;
        this.f8757b = map;
        this.f8758c = map2;
        this.f8759d = dVar;
    }

    public static int g(t6.c cVar) {
        m mVar = (m) cVar.a(m.class);
        if (mVar != null) {
            return ((i) mVar).f8748a;
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
    public final /* synthetic */ t6.e b(@NonNull t6.c cVar, boolean z10) throws IOException {
        f(cVar, z10 ? 1 : 0, true);
        return this;
    }

    @Override // t6.e
    @NonNull
    public final /* synthetic */ t6.e c(@NonNull t6.c cVar, int r32) throws IOException {
        f(cVar, r32, true);
        return this;
    }

    @Override // t6.e
    @NonNull
    public final t6.e d(@NonNull t6.c cVar, long j10) throws IOException {
        if (j10 != 0) {
            m mVar = (m) cVar.a(m.class);
            if (mVar == null) {
                throw new t6.b("Field has no @Protobuf config");
            }
            i(((i) mVar).f8748a << 3);
            j(j10);
        }
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
            i((g(cVar) << 3) | 2);
            byte[] bytes = charSequence.toString().getBytes(f);
            i(bytes.length);
            this.f8756a.write(bytes);
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
                h(f8755i, cVar, (Map.Entry) it2.next(), false);
            }
            return;
        }
        if (obj instanceof Double) {
            double dDoubleValue = ((Double) obj).doubleValue();
            if (z10 && dDoubleValue == 0.0d) {
                return;
            }
            i((g(cVar) << 3) | 1);
            this.f8756a.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putDouble(dDoubleValue).array());
            return;
        }
        if (obj instanceof Float) {
            float fFloatValue = ((Float) obj).floatValue();
            if (z10 && fFloatValue == 0.0f) {
                return;
            }
            i((g(cVar) << 3) | 5);
            this.f8756a.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putFloat(fFloatValue).array());
            return;
        }
        if (obj instanceof Number) {
            long jLongValue = ((Number) obj).longValue();
            if (z10 && jLongValue == 0) {
                return;
            }
            m mVar = (m) cVar.a(m.class);
            if (mVar == null) {
                throw new t6.b("Field has no @Protobuf config");
            }
            i(((i) mVar).f8748a << 3);
            j(jLongValue);
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
            i((g(cVar) << 3) | 2);
            i(bArr.length);
            this.f8756a.write(bArr);
            return;
        }
        t6.d<?> dVar = this.f8757b.get(obj.getClass());
        if (dVar != null) {
            h(dVar, cVar, obj, z10);
            return;
        }
        t6.f<?> fVar = this.f8758c.get(obj.getClass());
        if (fVar != null) {
            r rVar = this.f8760e;
            rVar.f8765a = false;
            rVar.f8767c = cVar;
            rVar.f8766b = z10;
            fVar.a(obj, rVar);
            return;
        }
        if (obj instanceof k) {
            f(cVar, ((k) obj).f(), true);
        } else if (obj instanceof Enum) {
            f(cVar, ((Enum) obj).ordinal(), true);
        } else {
            h(this.f8759d, cVar, obj, z10);
        }
    }

    public final void f(@NonNull t6.c cVar, int r22, boolean z10) throws IOException {
        if (z10 && r22 == 0) {
            return;
        }
        m mVar = (m) cVar.a(m.class);
        if (mVar == null) {
            throw new t6.b("Field has no @Protobuf config");
        }
        i(((i) mVar).f8748a << 3);
        i(r22);
    }

    public final void h(t6.d dVar, t6.c cVar, Object obj, boolean z10) throws IOException {
        j jVar = new j();
        try {
            OutputStream outputStream = this.f8756a;
            this.f8756a = jVar;
            try {
                dVar.a(obj, this);
                this.f8756a = outputStream;
                long j10 = jVar.f8749a;
                jVar.close();
                if (z10 && j10 == 0) {
                    return;
                }
                i((g(cVar) << 3) | 2);
                j(j10);
                dVar.a(obj, this);
            } catch (Throwable th2) {
                this.f8756a = outputStream;
                throw th2;
            }
        } catch (Throwable th3) {
            try {
                jVar.close();
            } catch (Throwable unused) {
            }
            throw th3;
        }
    }

    public final void i(int r6) throws IOException {
        while (true) {
            long j10 = r6 & (-128);
            OutputStream outputStream = this.f8756a;
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
            OutputStream outputStream = this.f8756a;
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
