package mb;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Stack;
import mb.c;
import mb.o;
import mb.o.a;

/* loaded from: classes2.dex */
public final class s extends mb.c {

    /* renamed from: h, reason: collision with root package name */
    public static final int[] f10310h;

    /* renamed from: b, reason: collision with root package name */
    public final int f10311b;

    /* renamed from: c, reason: collision with root package name */
    public final mb.c f10312c;

    /* renamed from: d, reason: collision with root package name */
    public final mb.c f10313d;

    /* renamed from: e, reason: collision with root package name */
    public final int f10314e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public int f10315g;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final Stack<mb.c> f10316a = new Stack<>();

        public final void a(mb.c cVar) {
            if (!cVar.w()) {
                if (!(cVar instanceof s)) {
                    String strValueOf = String.valueOf(cVar.getClass());
                    throw new IllegalArgumentException(androidx.camera.camera2.internal.c.h(new StringBuilder(strValueOf.length() + 49), "Has a new type of ByteString been created? Found ", strValueOf));
                }
                s sVar = (s) cVar;
                a(sVar.f10312c);
                a(sVar.f10313d);
                return;
            }
            int size = cVar.size();
            int[] r12 = s.f10310h;
            int r02 = Arrays.binarySearch(r12, size);
            if (r02 < 0) {
                r02 = (-(r02 + 1)) - 1;
            }
            int r22 = r12[r02 + 1];
            Stack<mb.c> stack = this.f10316a;
            if (stack.isEmpty() || stack.peek().size() >= r22) {
                stack.push(cVar);
                return;
            }
            int r03 = r12[r02];
            mb.c cVarPop = stack.pop();
            while (!stack.isEmpty() && stack.peek().size() < r03) {
                cVarPop = new s(stack.pop(), cVarPop);
            }
            s sVar2 = new s(cVarPop, cVar);
            while (!stack.isEmpty()) {
                int[] r6 = s.f10310h;
                int r13 = Arrays.binarySearch(r6, sVar2.f10311b);
                if (r13 < 0) {
                    r13 = (-(r13 + 1)) - 1;
                }
                if (stack.peek().size() >= r6[r13 + 1]) {
                    break;
                } else {
                    sVar2 = new s(stack.pop(), sVar2);
                }
            }
            stack.push(sVar2);
        }
    }

    public static class b implements Iterator<o> {

        /* renamed from: a, reason: collision with root package name */
        public final Stack<s> f10317a = new Stack<>();

        /* renamed from: b, reason: collision with root package name */
        public o f10318b;

        public b(mb.c cVar) {
            while (cVar instanceof s) {
                s sVar = (s) cVar;
                this.f10317a.push(sVar);
                cVar = sVar.f10312c;
            }
            this.f10318b = (o) cVar;
        }

        @Override // java.util.Iterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final o next() {
            o oVar;
            o oVar2 = this.f10318b;
            if (oVar2 == null) {
                throw new NoSuchElementException();
            }
            while (true) {
                Stack<s> stack = this.f10317a;
                if (stack.isEmpty()) {
                    oVar = null;
                    break;
                }
                Object obj = stack.pop().f10313d;
                while (obj instanceof s) {
                    s sVar = (s) obj;
                    stack.push(sVar);
                    obj = sVar.f10312c;
                }
                oVar = (o) obj;
                if (!(oVar.f10305b.length == 0)) {
                    break;
                }
            }
            this.f10318b = oVar;
            return oVar2;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f10318b != null;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public class c implements c.a {

        /* renamed from: a, reason: collision with root package name */
        public final b f10319a;

        /* renamed from: b, reason: collision with root package name */
        public o.a f10320b;

        /* renamed from: c, reason: collision with root package name */
        public int f10321c;

        public c(s sVar) {
            b bVar = new b(sVar);
            this.f10319a = bVar;
            this.f10320b = bVar.next().new a();
            this.f10321c = sVar.f10311b;
        }

        public final byte a() {
            if (!this.f10320b.hasNext()) {
                this.f10320b = this.f10319a.next().new a();
            }
            this.f10321c--;
            return this.f10320b.a();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f10321c > 0;
        }

        @Override // java.util.Iterator
        public final Byte next() {
            return Byte.valueOf(a());
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        int r12 = 1;
        int r22 = 1;
        while (r12 > 0) {
            arrayList.add(Integer.valueOf(r12));
            int r23 = r22 + r12;
            r22 = r12;
            r12 = r23;
        }
        arrayList.add(Integer.MAX_VALUE);
        f10310h = new int[arrayList.size()];
        int r13 = 0;
        while (true) {
            int[] r24 = f10310h;
            if (r13 >= r24.length) {
                return;
            }
            r24[r13] = ((Integer) arrayList.get(r13)).intValue();
            r13++;
        }
    }

    public /* synthetic */ s() {
        throw null;
    }

    public s(mb.c cVar, mb.c cVar2) {
        this.f10315g = 0;
        this.f10312c = cVar;
        this.f10313d = cVar2;
        int size = cVar.size();
        this.f10314e = size;
        this.f10311b = cVar2.size() + size;
        this.f = Math.max(cVar.u(), cVar2.u()) + 1;
    }

    @Override // mb.c
    public final int A(int r42, int r52, int r6) {
        int r53;
        int r02 = r52 + r6;
        mb.c cVar = this.f10312c;
        int r22 = this.f10314e;
        if (r02 <= r22) {
            return cVar.A(r42, r52, r6);
        }
        mb.c cVar2 = this.f10313d;
        if (r52 >= r22) {
            r53 = r52 - r22;
        } else {
            int r23 = r22 - r52;
            r42 = cVar.A(r42, r52, r23);
            r53 = 0;
            r6 -= r23;
        }
        return cVar2.A(r42, r53, r6);
    }

    @Override // mb.c
    public final int C(int r42, int r52, int r6) {
        int r53;
        int r02 = r52 + r6;
        mb.c cVar = this.f10312c;
        int r22 = this.f10314e;
        if (r02 <= r22) {
            return cVar.C(r42, r52, r6);
        }
        if (r52 >= r22) {
            r53 = r52 - r22;
        } else {
            int r23 = r22 - r52;
            r42 = cVar.C(r42, r52, r23);
            r6 -= r23;
            r53 = 0;
        }
        return this.f10313d.C(r42, r53, r6);
    }

    @Override // mb.c
    public final int D() {
        return this.f10315g;
    }

    @Override // mb.c
    public final String E() throws UnsupportedEncodingException {
        byte[] bArr;
        int r12 = this.f10311b;
        if (r12 == 0) {
            bArr = i.f10297a;
        } else {
            byte[] bArr2 = new byte[r12];
            o(0, 0, bArr2, r12);
            bArr = bArr2;
        }
        return new String(bArr, "UTF-8");
    }

    @Override // mb.c
    public final void G(OutputStream outputStream, int r52, int r6) throws IOException {
        int r53;
        int r02 = r52 + r6;
        mb.c cVar = this.f10312c;
        int r22 = this.f10314e;
        if (r02 <= r22) {
            cVar.G(outputStream, r52, r6);
            return;
        }
        mb.c cVar2 = this.f10313d;
        if (r52 >= r22) {
            r53 = r52 - r22;
        } else {
            int r23 = r22 - r52;
            cVar.G(outputStream, r52, r23);
            r53 = 0;
            r6 -= r23;
        }
        cVar2.G(outputStream, r53, r6);
    }

    public final boolean equals(Object obj) {
        int r12;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof mb.c)) {
            return false;
        }
        mb.c cVar = (mb.c) obj;
        int size = cVar.size();
        int r32 = this.f10311b;
        if (r32 != size) {
            return false;
        }
        if (r32 == 0) {
            return true;
        }
        if (this.f10315g != 0 && (r12 = cVar.D()) != 0 && this.f10315g != r12) {
            return false;
        }
        b bVar = new b(this);
        o next = bVar.next();
        b bVar2 = new b(cVar);
        o next2 = bVar2.next();
        int r6 = 0;
        int r72 = 0;
        int r82 = 0;
        while (true) {
            int length = next.f10305b.length - r6;
            int length2 = next2.f10305b.length - r72;
            int r11 = Math.min(length, length2);
            if (!(r6 == 0 ? next.H(next2, r72, r11) : next2.H(next, r6, r11))) {
                return false;
            }
            r82 += r11;
            if (r82 >= r32) {
                if (r82 == r32) {
                    return true;
                }
                throw new IllegalStateException();
            }
            if (r11 == length) {
                next = bVar.next();
                r6 = 0;
            } else {
                r6 += r11;
            }
            if (r11 == length2) {
                next2 = bVar2.next();
                r72 = 0;
            } else {
                r72 += r11;
            }
        }
    }

    public final int hashCode() {
        int r02 = this.f10315g;
        if (r02 == 0) {
            int r03 = this.f10311b;
            r02 = A(r03, 0, r03);
            if (r02 == 0) {
                r02 = 1;
            }
            this.f10315g = r02;
        }
        return r02;
    }

    @Override // mb.c
    public final void o(int r42, int r52, byte[] bArr, int r72) {
        int r43;
        int r02 = r42 + r72;
        mb.c cVar = this.f10312c;
        int r22 = this.f10314e;
        if (r02 <= r22) {
            cVar.o(r42, r52, bArr, r72);
            return;
        }
        mb.c cVar2 = this.f10313d;
        if (r42 >= r22) {
            r43 = r42 - r22;
        } else {
            int r23 = r22 - r42;
            cVar.o(r42, r52, bArr, r23);
            r52 += r23;
            r72 -= r23;
            r43 = 0;
        }
        cVar2.o(r43, r52, bArr, r72);
    }

    @Override // mb.c
    public final int size() {
        return this.f10311b;
    }

    @Override // mb.c
    public final int u() {
        return this.f;
    }

    @Override // mb.c
    public final boolean w() {
        return this.f10311b >= f10310h[this.f];
    }

    @Override // mb.c
    public final boolean x() {
        int r02 = this.f10312c.C(0, 0, this.f10314e);
        mb.c cVar = this.f10313d;
        return cVar.C(r02, 0, cVar.size()) == 0;
    }

    @Override // mb.c, java.lang.Iterable
    /* renamed from: y */
    public final c.a iterator() {
        return new c(this);
    }
}
