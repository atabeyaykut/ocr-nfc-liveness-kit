package n5;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import u5.f0;
import u5.o0;

/* loaded from: classes2.dex */
public final class l<P> {

    /* renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f10578a = new ConcurrentHashMap();

    /* renamed from: b, reason: collision with root package name */
    public a<P> f10579b;

    /* renamed from: c, reason: collision with root package name */
    public final Class<P> f10580c;

    public static final class a<P> {

        /* renamed from: a, reason: collision with root package name */
        public final P f10581a;

        /* renamed from: b, reason: collision with root package name */
        public final byte[] f10582b;

        /* renamed from: c, reason: collision with root package name */
        public final f0 f10583c;

        /* renamed from: d, reason: collision with root package name */
        public final o0 f10584d;

        /* JADX WARN: Multi-variable type inference failed */
        public a(Object obj, byte[] bArr, f0 f0Var, o0 o0Var) {
            this.f10581a = obj;
            this.f10582b = Arrays.copyOf(bArr, bArr.length);
            this.f10583c = f0Var;
            this.f10584d = o0Var;
        }

        public final byte[] a() {
            byte[] bArr = this.f10582b;
            if (bArr == null) {
                return null;
            }
            return Arrays.copyOf(bArr, bArr.length);
        }
    }

    public static class b implements Comparable<b> {

        /* renamed from: a, reason: collision with root package name */
        public final byte[] f10585a;

        public b(byte[] bArr) {
            this.f10585a = Arrays.copyOf(bArr, bArr.length);
        }

        @Override // java.lang.Comparable
        public final int compareTo(b bVar) {
            b bVar2 = bVar;
            byte[] bArr = this.f10585a;
            int length = bArr.length;
            byte[] bArr2 = bVar2.f10585a;
            if (length != bArr2.length) {
                return bArr.length - bArr2.length;
            }
            for (int r22 = 0; r22 < bArr.length; r22++) {
                byte b10 = bArr[r22];
                byte b11 = bVar2.f10585a[r22];
                if (b10 != b11) {
                    return b10 - b11;
                }
            }
            return 0;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof b) {
                return Arrays.equals(this.f10585a, ((b) obj).f10585a);
            }
            return false;
        }

        public final int hashCode() {
            return Arrays.hashCode(this.f10585a);
        }

        public final String toString() {
            return b8.f.B(this.f10585a);
        }
    }

    public l(Class<P> cls) {
        this.f10580c = cls;
    }

    public final List<a<P>> a(byte[] bArr) {
        List<a<P>> list = (List) this.f10578a.get(new b(bArr));
        return list != null ? list : Collections.emptyList();
    }
}
