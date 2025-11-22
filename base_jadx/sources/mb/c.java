package mb;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Stack;
import mb.s;

/* loaded from: classes2.dex */
public abstract class c implements Iterable<Byte> {

    /* renamed from: a, reason: collision with root package name */
    public static final o f10255a = new o(new byte[0]);

    public interface a extends Iterator<Byte> {
    }

    public static final class b extends OutputStream {
        public static final byte[] f = new byte[0];

        /* renamed from: c, reason: collision with root package name */
        public int f10258c;

        /* renamed from: e, reason: collision with root package name */
        public int f10260e;

        /* renamed from: a, reason: collision with root package name */
        public final int f10256a = 128;

        /* renamed from: b, reason: collision with root package name */
        public final ArrayList<c> f10257b = new ArrayList<>();

        /* renamed from: d, reason: collision with root package name */
        public byte[] f10259d = new byte[128];

        public final void a(int r42) {
            this.f10257b.add(new o(this.f10259d));
            int length = this.f10258c + this.f10259d.length;
            this.f10258c = length;
            this.f10259d = new byte[Math.max(this.f10256a, Math.max(r42, length >>> 1))];
            this.f10260e = 0;
        }

        public final void b() {
            int r02 = this.f10260e;
            byte[] bArr = this.f10259d;
            int length = bArr.length;
            ArrayList<c> arrayList = this.f10257b;
            if (r02 >= length) {
                arrayList.add(new o(this.f10259d));
                this.f10259d = f;
            } else if (r02 > 0) {
                byte[] bArr2 = new byte[r02];
                System.arraycopy(bArr, 0, bArr2, 0, Math.min(bArr.length, r02));
                arrayList.add(new o(bArr2));
            }
            this.f10258c += this.f10260e;
            this.f10260e = 0;
        }

        public final synchronized c c() {
            c cVarH;
            b();
            ArrayList<c> arrayList = this.f10257b;
            if (!(arrayList instanceof Collection)) {
                ArrayList<c> arrayList2 = new ArrayList<>();
                Iterator<c> it = arrayList.iterator();
                while (it.hasNext()) {
                    arrayList2.add(it.next());
                }
                arrayList = arrayList2;
            }
            if (arrayList.isEmpty()) {
                cVarH = c.f10255a;
            } else {
                cVarH = c.h(arrayList.size(), arrayList.iterator());
            }
            return cVarH;
        }

        public final String toString() {
            int r22;
            Object[] objArr = new Object[2];
            objArr[0] = Integer.toHexString(System.identityHashCode(this));
            synchronized (this) {
                r22 = this.f10258c + this.f10260e;
            }
            objArr[1] = Integer.valueOf(r22);
            return String.format("<ByteString.Output@%s size=%d>", objArr);
        }

        @Override // java.io.OutputStream
        public final synchronized void write(int r42) {
            if (this.f10260e == this.f10259d.length) {
                a(1);
            }
            byte[] bArr = this.f10259d;
            int r12 = this.f10260e;
            this.f10260e = r12 + 1;
            bArr[r12] = (byte) r42;
        }

        @Override // java.io.OutputStream
        public final synchronized void write(byte[] bArr, int r52, int r6) {
            byte[] bArr2 = this.f10259d;
            int length = bArr2.length;
            int r22 = this.f10260e;
            if (r6 <= length - r22) {
                System.arraycopy(bArr, r52, bArr2, r22, r6);
                this.f10260e += r6;
            } else {
                int length2 = bArr2.length - r22;
                System.arraycopy(bArr, r52, bArr2, r22, length2);
                int r62 = r6 - length2;
                a(r62);
                System.arraycopy(bArr, r52 + length2, this.f10259d, 0, r62);
                this.f10260e = r62;
            }
        }
    }

    public static c h(int r22, Iterator it) {
        if (r22 == 1) {
            return (c) it.next();
        }
        int r02 = r22 >>> 1;
        return h(r02, it).l(h(r22 - r02, it));
    }

    public static b z() {
        return new b();
    }

    public abstract int A(int r12, int r22, int r32);

    public abstract int C(int r12, int r22, int r32);

    public abstract int D();

    public abstract String E() throws UnsupportedEncodingException;

    public abstract void G(OutputStream outputStream, int r22, int r32) throws IOException;

    public final c l(c cVar) {
        c cVarPop;
        int size = size();
        int size2 = cVar.size();
        if (size + size2 >= 2147483647L) {
            throw new IllegalArgumentException(androidx.appcompat.graphics.drawable.a.e(53, "ByteString would be too long: ", size, "+", size2));
        }
        int[] r02 = s.f10310h;
        s sVar = this instanceof s ? (s) this : null;
        if (cVar.size() == 0) {
            return this;
        }
        if (size() == 0) {
            return cVar;
        }
        int size3 = cVar.size() + size();
        if (size3 < 128) {
            int size4 = size();
            int size5 = cVar.size();
            byte[] bArr = new byte[size4 + size5];
            m(0, 0, bArr, size4);
            cVar.m(0, size4, bArr, size5);
            return new o(bArr);
        }
        if (sVar != null) {
            c cVar2 = sVar.f10313d;
            if (cVar.size() + cVar2.size() < 128) {
                int size6 = cVar2.size();
                int size7 = cVar.size();
                byte[] bArr2 = new byte[size6 + size7];
                cVar2.m(0, 0, bArr2, size6);
                cVar.m(0, size6, bArr2, size7);
                return new s(sVar.f10312c, new o(bArr2));
            }
        }
        if (sVar != null) {
            c cVar3 = sVar.f10312c;
            int r32 = cVar3.u();
            c cVar4 = sVar.f10313d;
            if (r32 > cVar4.u()) {
                if (sVar.f > cVar.u()) {
                    return new s(cVar3, new s(cVar4, cVar));
                }
            }
        }
        if (size3 >= s.f10310h[Math.max(u(), cVar.u()) + 1]) {
            cVarPop = new s(this, cVar);
        } else {
            s.a aVar = new s.a();
            aVar.a(this);
            aVar.a(cVar);
            Stack<c> stack = aVar.f10316a;
            cVarPop = stack.pop();
            while (!stack.isEmpty()) {
                cVarPop = new s(stack.pop(), cVarPop);
            }
        }
        return cVarPop;
    }

    public final void m(int r42, int r52, byte[] bArr, int r72) {
        if (r42 < 0) {
            throw new IndexOutOfBoundsException(androidx.appcompat.widget.v.c(30, "Source offset < 0: ", r42));
        }
        if (r52 < 0) {
            throw new IndexOutOfBoundsException(androidx.appcompat.widget.v.c(30, "Target offset < 0: ", r52));
        }
        if (r72 < 0) {
            throw new IndexOutOfBoundsException(androidx.appcompat.widget.v.c(23, "Length < 0: ", r72));
        }
        int r02 = r42 + r72;
        if (r02 > size()) {
            throw new IndexOutOfBoundsException(androidx.appcompat.widget.v.c(34, "Source end offset < 0: ", r02));
        }
        int r03 = r52 + r72;
        if (r03 > bArr.length) {
            throw new IndexOutOfBoundsException(androidx.appcompat.widget.v.c(34, "Target end offset < 0: ", r03));
        }
        if (r72 > 0) {
            o(r42, r52, bArr, r72);
        }
    }

    public abstract void o(int r12, int r22, byte[] bArr, int r42);

    public abstract int size();

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }

    public abstract int u();

    public abstract boolean w();

    public abstract boolean x();

    @Override // java.lang.Iterable
    /* renamed from: y, reason: merged with bridge method [inline-methods] */
    public abstract a iterator();
}
