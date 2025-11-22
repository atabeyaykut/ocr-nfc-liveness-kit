package mc;

import java.util.Iterator;
import java.util.NoSuchElementException;
import x9.p;

/* loaded from: classes2.dex */
public final class b implements lc.h<ca.d> {

    /* renamed from: a, reason: collision with root package name */
    public final CharSequence f10358a;

    /* renamed from: b, reason: collision with root package name */
    public final int f10359b;

    /* renamed from: c, reason: collision with root package name */
    public final int f10360c;

    /* renamed from: d, reason: collision with root package name */
    public final p<CharSequence, Integer, l9.g<Integer, Integer>> f10361d;

    public static final class a implements Iterator<ca.d>, y9.a {

        /* renamed from: a, reason: collision with root package name */
        public int f10362a = -1;

        /* renamed from: b, reason: collision with root package name */
        public int f10363b;

        /* renamed from: c, reason: collision with root package name */
        public int f10364c;

        /* renamed from: d, reason: collision with root package name */
        public ca.d f10365d;

        /* renamed from: e, reason: collision with root package name */
        public int f10366e;

        public a() {
            int r02 = b.this.f10359b;
            int length = b.this.f10358a.length();
            if (length < 0) {
                throw new IllegalArgumentException(androidx.appcompat.graphics.drawable.a.f("Cannot coerce value to an empty range: maximum ", length, " is less than minimum 0."));
            }
            if (r02 < 0) {
                r02 = 0;
            } else if (r02 > length) {
                r02 = length;
            }
            this.f10363b = r02;
            this.f10364c = r02;
        }

        /* JADX WARN: Removed duplicated region for block: B:9:0x001a  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                r7 = this;
                int r0 = r7.f10364c
                r1 = 0
                if (r0 >= 0) goto Lb
                r7.f10362a = r1
                r0 = 0
                r7.f10365d = r0
                goto L77
            Lb:
                mc.b r2 = mc.b.this
                int r3 = r2.f10360c
                r4 = -1
                r5 = 1
                if (r3 <= 0) goto L1a
                int r6 = r7.f10366e
                int r6 = r6 + r5
                r7.f10366e = r6
                if (r6 >= r3) goto L22
            L1a:
                java.lang.CharSequence r3 = r2.f10358a
                int r3 = r3.length()
                if (r0 <= r3) goto L34
            L22:
                ca.d r0 = new ca.d
                int r1 = r7.f10363b
                java.lang.CharSequence r2 = r2.f10358a
                int r2 = mc.n.J(r2)
                r0.<init>(r1, r2)
            L2f:
                r7.f10365d = r0
                r7.f10364c = r4
                goto L75
            L34:
                x9.p<java.lang.CharSequence, java.lang.Integer, l9.g<java.lang.Integer, java.lang.Integer>> r0 = r2.f10361d
                java.lang.CharSequence r3 = r2.f10358a
                int r6 = r7.f10364c
                java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
                java.lang.Object r0 = r0.mo7invoke(r3, r6)
                l9.g r0 = (l9.g) r0
                if (r0 != 0) goto L54
                ca.d r0 = new ca.d
                int r1 = r7.f10363b
                java.lang.CharSequence r2 = r2.f10358a
                int r2 = mc.n.J(r2)
                r0.<init>(r1, r2)
                goto L2f
            L54:
                A r2 = r0.f9582a
                java.lang.Number r2 = (java.lang.Number) r2
                int r2 = r2.intValue()
                B r0 = r0.f9583b
                java.lang.Number r0 = (java.lang.Number) r0
                int r0 = r0.intValue()
                int r3 = r7.f10363b
                ca.d r3 = b8.f.r0(r3, r2)
                r7.f10365d = r3
                int r2 = r2 + r0
                r7.f10363b = r2
                if (r0 != 0) goto L72
                r1 = 1
            L72:
                int r2 = r2 + r1
                r7.f10364c = r2
            L75:
                r7.f10362a = r5
            L77:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: mc.b.a.a():void");
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.f10362a == -1) {
                a();
            }
            return this.f10362a == 1;
        }

        @Override // java.util.Iterator
        public final ca.d next() {
            if (this.f10362a == -1) {
                a();
            }
            if (this.f10362a == 0) {
                throw new NoSuchElementException();
            }
            ca.d dVar = this.f10365d;
            kotlin.jvm.internal.h.d(dVar, "null cannot be cast to non-null type kotlin.ranges.IntRange");
            this.f10365d = null;
            this.f10362a = -1;
            return dVar;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(CharSequence input, int r32, int r42, p<? super CharSequence, ? super Integer, l9.g<Integer, Integer>> pVar) {
        kotlin.jvm.internal.h.f(input, "input");
        this.f10358a = input;
        this.f10359b = r32;
        this.f10360c = r42;
        this.f10361d = pVar;
    }

    @Override // lc.h
    public final Iterator<ca.d> iterator() {
        return new a();
    }
}
