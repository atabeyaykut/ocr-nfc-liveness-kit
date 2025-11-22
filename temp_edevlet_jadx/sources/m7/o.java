package m7;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Calendar;
import java.util.ConcurrentModificationException;
import java.util.Currency;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import l7.i;

/* loaded from: classes2.dex */
public final class o {
    public static final u A;
    public static final m7.s B;
    public static final w C;

    /* renamed from: a, reason: collision with root package name */
    public static final m7.p f10100a = new m7.p(Class.class, new j7.t(new k()));

    /* renamed from: b, reason: collision with root package name */
    public static final m7.p f10101b = new m7.p(BitSet.class, new j7.t(new v()));

    /* renamed from: c, reason: collision with root package name */
    public static final y f10102c;

    /* renamed from: d, reason: collision with root package name */
    public static final m7.q f10103d;

    /* renamed from: e, reason: collision with root package name */
    public static final m7.q f10104e;
    public static final m7.q f;

    /* renamed from: g, reason: collision with root package name */
    public static final m7.q f10105g;

    /* renamed from: h, reason: collision with root package name */
    public static final m7.p f10106h;

    /* renamed from: i, reason: collision with root package name */
    public static final m7.p f10107i;

    /* renamed from: j, reason: collision with root package name */
    public static final m7.p f10108j;

    /* renamed from: k, reason: collision with root package name */
    public static final b f10109k;

    /* renamed from: l, reason: collision with root package name */
    public static final m7.p f10110l;

    /* renamed from: m, reason: collision with root package name */
    public static final m7.q f10111m;

    /* renamed from: n, reason: collision with root package name */
    public static final h f10112n;

    /* renamed from: o, reason: collision with root package name */
    public static final i f10113o;

    /* renamed from: p, reason: collision with root package name */
    public static final m7.p f10114p;

    /* renamed from: q, reason: collision with root package name */
    public static final m7.p f10115q;

    /* renamed from: r, reason: collision with root package name */
    public static final m7.p f10116r;

    /* renamed from: s, reason: collision with root package name */
    public static final m7.p f10117s;

    /* renamed from: t, reason: collision with root package name */
    public static final m7.p f10118t;

    /* renamed from: u, reason: collision with root package name */
    public static final m7.s f10119u;

    /* renamed from: v, reason: collision with root package name */
    public static final m7.p f10120v;
    public static final m7.p w;

    /* renamed from: x, reason: collision with root package name */
    public static final r f10121x;

    /* renamed from: y, reason: collision with root package name */
    public static final m7.r f10122y;

    /* renamed from: z, reason: collision with root package name */
    public static final m7.p f10123z;

    public static class a extends j7.u<AtomicIntegerArray> {
        @Override // j7.u
        public final AtomicIntegerArray a(q7.a aVar) throws IOException {
            ArrayList arrayList = new ArrayList();
            aVar.a();
            while (aVar.i()) {
                try {
                    arrayList.add(Integer.valueOf(aVar.o()));
                } catch (NumberFormatException e10) {
                    throw new j7.s(e10);
                }
            }
            aVar.e();
            int size = arrayList.size();
            AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
            for (int r22 = 0; r22 < size; r22++) {
                atomicIntegerArray.set(r22, ((Integer) arrayList.get(r22)).intValue());
            }
            return atomicIntegerArray;
        }

        @Override // j7.u
        public final void b(q7.b bVar, AtomicIntegerArray atomicIntegerArray) throws IOException {
            bVar.b();
            int length = atomicIntegerArray.length();
            for (int r12 = 0; r12 < length; r12++) {
                bVar.n(r6.get(r12));
            }
            bVar.e();
        }
    }

    public static class a0 extends j7.u<Number> {
        @Override // j7.u
        public final Number a(q7.a aVar) throws IOException {
            if (aVar.B() == 9) {
                aVar.s();
                return null;
            }
            try {
                return Short.valueOf((short) aVar.o());
            } catch (NumberFormatException e10) {
                throw new j7.s(e10);
            }
        }

        @Override // j7.u
        public final void b(q7.b bVar, Number number) throws IOException {
            bVar.p(number);
        }
    }

    public static class b extends j7.u<Number> {
        @Override // j7.u
        public final Number a(q7.a aVar) throws IOException {
            if (aVar.B() == 9) {
                aVar.s();
                return null;
            }
            try {
                return Long.valueOf(aVar.p());
            } catch (NumberFormatException e10) {
                throw new j7.s(e10);
            }
        }

        @Override // j7.u
        public final void b(q7.b bVar, Number number) throws IOException {
            bVar.p(number);
        }
    }

    public static class b0 extends j7.u<Number> {
        @Override // j7.u
        public final Number a(q7.a aVar) throws IOException {
            if (aVar.B() == 9) {
                aVar.s();
                return null;
            }
            try {
                return Integer.valueOf(aVar.o());
            } catch (NumberFormatException e10) {
                throw new j7.s(e10);
            }
        }

        @Override // j7.u
        public final void b(q7.b bVar, Number number) throws IOException {
            bVar.p(number);
        }
    }

    public static class c extends j7.u<Number> {
        @Override // j7.u
        public final Number a(q7.a aVar) throws IOException {
            if (aVar.B() != 9) {
                return Float.valueOf((float) aVar.n());
            }
            aVar.s();
            return null;
        }

        @Override // j7.u
        public final void b(q7.b bVar, Number number) throws IOException {
            bVar.p(number);
        }
    }

    public static class c0 extends j7.u<AtomicInteger> {
        @Override // j7.u
        public final AtomicInteger a(q7.a aVar) throws IOException {
            try {
                return new AtomicInteger(aVar.o());
            } catch (NumberFormatException e10) {
                throw new j7.s(e10);
            }
        }

        @Override // j7.u
        public final void b(q7.b bVar, AtomicInteger atomicInteger) throws IOException {
            bVar.n(atomicInteger.get());
        }
    }

    public static class d extends j7.u<Number> {
        @Override // j7.u
        public final Number a(q7.a aVar) throws IOException {
            if (aVar.B() != 9) {
                return Double.valueOf(aVar.n());
            }
            aVar.s();
            return null;
        }

        @Override // j7.u
        public final void b(q7.b bVar, Number number) throws IOException {
            bVar.p(number);
        }
    }

    public static class d0 extends j7.u<AtomicBoolean> {
        @Override // j7.u
        public final AtomicBoolean a(q7.a aVar) throws IOException {
            return new AtomicBoolean(aVar.m());
        }

        @Override // j7.u
        public final void b(q7.b bVar, AtomicBoolean atomicBoolean) throws IOException {
            bVar.r(atomicBoolean.get());
        }
    }

    public static class e extends j7.u<Number> {
        @Override // j7.u
        public final Number a(q7.a aVar) throws IOException {
            int r02 = aVar.B();
            int r12 = g.d.c(r02);
            if (r12 == 5 || r12 == 6) {
                return new l7.h(aVar.v());
            }
            if (r12 != 8) {
                throw new j7.s("Expecting number, got: ".concat(androidx.fragment.app.a.j(r02)));
            }
            aVar.s();
            return null;
        }

        @Override // j7.u
        public final void b(q7.b bVar, Number number) throws IOException {
            bVar.p(number);
        }
    }

    public static final class e0<T extends Enum<T>> extends j7.u<T> {

        /* renamed from: a, reason: collision with root package name */
        public final HashMap f10124a = new HashMap();

        /* renamed from: b, reason: collision with root package name */
        public final HashMap f10125b = new HashMap();

        public e0(Class<T> cls) {
            try {
                for (T t10 : cls.getEnumConstants()) {
                    String strName = t10.name();
                    k7.b bVar = (k7.b) cls.getField(strName).getAnnotation(k7.b.class);
                    if (bVar != null) {
                        strName = bVar.value();
                        for (String str : bVar.alternate()) {
                            this.f10124a.put(str, t10);
                        }
                    }
                    this.f10124a.put(strName, t10);
                    this.f10125b.put(t10, strName);
                }
            } catch (NoSuchFieldException e10) {
                throw new AssertionError(e10);
            }
        }

        @Override // j7.u
        public final Object a(q7.a aVar) throws IOException {
            if (aVar.B() != 9) {
                return (Enum) this.f10124a.get(aVar.v());
            }
            aVar.s();
            return null;
        }

        @Override // j7.u
        public final void b(q7.b bVar, Object obj) throws IOException {
            Enum r32 = (Enum) obj;
            bVar.q(r32 == null ? null : (String) this.f10125b.get(r32));
        }
    }

    public static class f extends j7.u<Character> {
        @Override // j7.u
        public final Character a(q7.a aVar) throws IOException {
            if (aVar.B() == 9) {
                aVar.s();
                return null;
            }
            String strV = aVar.v();
            if (strV.length() == 1) {
                return Character.valueOf(strV.charAt(0));
            }
            throw new j7.s("Expecting character, got: ".concat(strV));
        }

        @Override // j7.u
        public final void b(q7.b bVar, Character ch2) throws IOException {
            Character ch3 = ch2;
            bVar.q(ch3 == null ? null : String.valueOf(ch3));
        }
    }

    public static class g extends j7.u<String> {
        @Override // j7.u
        public final String a(q7.a aVar) throws IOException {
            int r02 = aVar.B();
            if (r02 != 9) {
                return r02 == 8 ? Boolean.toString(aVar.m()) : aVar.v();
            }
            aVar.s();
            return null;
        }

        @Override // j7.u
        public final void b(q7.b bVar, String str) throws IOException {
            bVar.q(str);
        }
    }

    public static class h extends j7.u<BigDecimal> {
        @Override // j7.u
        public final BigDecimal a(q7.a aVar) throws IOException {
            if (aVar.B() == 9) {
                aVar.s();
                return null;
            }
            try {
                return new BigDecimal(aVar.v());
            } catch (NumberFormatException e10) {
                throw new j7.s(e10);
            }
        }

        @Override // j7.u
        public final void b(q7.b bVar, BigDecimal bigDecimal) throws IOException {
            bVar.p(bigDecimal);
        }
    }

    public static class i extends j7.u<BigInteger> {
        @Override // j7.u
        public final BigInteger a(q7.a aVar) throws IOException {
            if (aVar.B() == 9) {
                aVar.s();
                return null;
            }
            try {
                return new BigInteger(aVar.v());
            } catch (NumberFormatException e10) {
                throw new j7.s(e10);
            }
        }

        @Override // j7.u
        public final void b(q7.b bVar, BigInteger bigInteger) throws IOException {
            bVar.p(bigInteger);
        }
    }

    public static class j extends j7.u<StringBuilder> {
        @Override // j7.u
        public final StringBuilder a(q7.a aVar) throws IOException {
            if (aVar.B() != 9) {
                return new StringBuilder(aVar.v());
            }
            aVar.s();
            return null;
        }

        @Override // j7.u
        public final void b(q7.b bVar, StringBuilder sb2) throws IOException {
            StringBuilder sb3 = sb2;
            bVar.q(sb3 == null ? null : sb3.toString());
        }
    }

    public static class k extends j7.u<Class> {
        @Override // j7.u
        public final Class a(q7.a aVar) throws IOException {
            throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
        }

        @Override // j7.u
        public final void b(q7.b bVar, Class cls) throws IOException {
            throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + cls.getName() + ". Forgot to register a type adapter?");
        }
    }

    public static class l extends j7.u<StringBuffer> {
        @Override // j7.u
        public final StringBuffer a(q7.a aVar) throws IOException {
            if (aVar.B() != 9) {
                return new StringBuffer(aVar.v());
            }
            aVar.s();
            return null;
        }

        @Override // j7.u
        public final void b(q7.b bVar, StringBuffer stringBuffer) throws IOException {
            StringBuffer stringBuffer2 = stringBuffer;
            bVar.q(stringBuffer2 == null ? null : stringBuffer2.toString());
        }
    }

    public static class m extends j7.u<URL> {
        @Override // j7.u
        public final URL a(q7.a aVar) throws IOException {
            if (aVar.B() == 9) {
                aVar.s();
            } else {
                String strV = aVar.v();
                if (!"null".equals(strV)) {
                    return new URL(strV);
                }
            }
            return null;
        }

        @Override // j7.u
        public final void b(q7.b bVar, URL url) throws IOException {
            URL url2 = url;
            bVar.q(url2 == null ? null : url2.toExternalForm());
        }
    }

    public static class n extends j7.u<URI> {
        @Override // j7.u
        public final URI a(q7.a aVar) throws IOException {
            if (aVar.B() == 9) {
                aVar.s();
            } else {
                try {
                    String strV = aVar.v();
                    if (!"null".equals(strV)) {
                        return new URI(strV);
                    }
                } catch (URISyntaxException e10) {
                    throw new j7.m(e10);
                }
            }
            return null;
        }

        @Override // j7.u
        public final void b(q7.b bVar, URI r22) throws IOException {
            URI r23 = r22;
            bVar.q(r23 == null ? null : r23.toASCIIString());
        }
    }

    /* renamed from: m7.o$o, reason: collision with other inner class name */
    public static class C0183o extends j7.u<InetAddress> {
        @Override // j7.u
        public final InetAddress a(q7.a aVar) throws IOException {
            if (aVar.B() != 9) {
                return InetAddress.getByName(aVar.v());
            }
            aVar.s();
            return null;
        }

        @Override // j7.u
        public final void b(q7.b bVar, InetAddress inetAddress) throws IOException {
            InetAddress inetAddress2 = inetAddress;
            bVar.q(inetAddress2 == null ? null : inetAddress2.getHostAddress());
        }
    }

    public static class p extends j7.u<UUID> {
        @Override // j7.u
        public final UUID a(q7.a aVar) throws IOException {
            if (aVar.B() != 9) {
                return UUID.fromString(aVar.v());
            }
            aVar.s();
            return null;
        }

        @Override // j7.u
        public final void b(q7.b bVar, UUID r22) throws IOException {
            UUID r23 = r22;
            bVar.q(r23 == null ? null : r23.toString());
        }
    }

    public static class q extends j7.u<Currency> {
        @Override // j7.u
        public final Currency a(q7.a aVar) throws IOException {
            return Currency.getInstance(aVar.v());
        }

        @Override // j7.u
        public final void b(q7.b bVar, Currency currency) throws IOException {
            bVar.q(currency.getCurrencyCode());
        }
    }

    public static class r implements j7.v {

        public class a extends j7.u<Timestamp> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ j7.u f10126a;

            public a(j7.u uVar) {
                this.f10126a = uVar;
            }

            @Override // j7.u
            public final Timestamp a(q7.a aVar) throws IOException {
                Date date = (Date) this.f10126a.a(aVar);
                if (date != null) {
                    return new Timestamp(date.getTime());
                }
                return null;
            }

            @Override // j7.u
            public final void b(q7.b bVar, Timestamp timestamp) throws IOException {
                this.f10126a.b(bVar, timestamp);
            }
        }

        @Override // j7.v
        public final <T> j7.u<T> b(j7.h hVar, p7.a<T> aVar) {
            if (aVar.f12844a != Timestamp.class) {
                return null;
            }
            hVar.getClass();
            return new a(hVar.b(new p7.a<>(Date.class)));
        }
    }

    public static class s extends j7.u<Calendar> {
        @Override // j7.u
        public final Calendar a(q7.a aVar) throws IOException {
            if (aVar.B() == 9) {
                aVar.s();
                return null;
            }
            aVar.b();
            int r22 = 0;
            int r32 = 0;
            int r42 = 0;
            int r52 = 0;
            int r6 = 0;
            int r72 = 0;
            while (aVar.B() != 4) {
                String strQ = aVar.q();
                int r12 = aVar.o();
                if ("year".equals(strQ)) {
                    r22 = r12;
                } else if ("month".equals(strQ)) {
                    r32 = r12;
                } else if ("dayOfMonth".equals(strQ)) {
                    r42 = r12;
                } else if ("hourOfDay".equals(strQ)) {
                    r52 = r12;
                } else if ("minute".equals(strQ)) {
                    r6 = r12;
                } else if ("second".equals(strQ)) {
                    r72 = r12;
                }
            }
            aVar.f();
            return new GregorianCalendar(r22, r32, r42, r52, r6, r72);
        }

        @Override // j7.u
        public final void b(q7.b bVar, Calendar calendar) throws IOException {
            if (calendar == null) {
                bVar.j();
                return;
            }
            bVar.c();
            bVar.g("year");
            bVar.n(r4.get(1));
            bVar.g("month");
            bVar.n(r4.get(2));
            bVar.g("dayOfMonth");
            bVar.n(r4.get(5));
            bVar.g("hourOfDay");
            bVar.n(r4.get(11));
            bVar.g("minute");
            bVar.n(r4.get(12));
            bVar.g("second");
            bVar.n(r4.get(13));
            bVar.f();
        }
    }

    public static class t extends j7.u<Locale> {
        @Override // j7.u
        public final Locale a(q7.a aVar) throws IOException {
            if (aVar.B() == 9) {
                aVar.s();
                return null;
            }
            StringTokenizer stringTokenizer = new StringTokenizer(aVar.v(), "_");
            String strNextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            String strNextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            String strNextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            if (strNextToken2 == null && strNextToken3 == null) {
                return new Locale(strNextToken);
            }
            return strNextToken3 == null ? new Locale(strNextToken, strNextToken2) : new Locale(strNextToken, strNextToken2, strNextToken3);
        }

        @Override // j7.u
        public final void b(q7.b bVar, Locale locale) throws IOException {
            Locale locale2 = locale;
            bVar.q(locale2 == null ? null : locale2.toString());
        }
    }

    public static class u extends j7.u<j7.l> {
        public static j7.l c(q7.a aVar) throws IOException {
            int r02 = g.d.c(aVar.B());
            if (r02 == 0) {
                j7.j jVar = new j7.j();
                aVar.a();
                while (aVar.i()) {
                    Object objC = c(aVar);
                    if (objC == null) {
                        objC = j7.n.f8300a;
                    }
                    jVar.f8299a.add(objC);
                }
                aVar.e();
                return jVar;
            }
            if (r02 != 2) {
                if (r02 == 5) {
                    return new j7.q(aVar.v());
                }
                if (r02 == 6) {
                    return new j7.q(new l7.h(aVar.v()));
                }
                if (r02 == 7) {
                    return new j7.q(Boolean.valueOf(aVar.m()));
                }
                if (r02 != 8) {
                    throw new IllegalArgumentException();
                }
                aVar.s();
                return j7.n.f8300a;
            }
            j7.o oVar = new j7.o();
            aVar.b();
            while (aVar.i()) {
                String strQ = aVar.q();
                j7.l lVarC = c(aVar);
                if (lVarC == null) {
                    lVarC = j7.n.f8300a;
                }
                oVar.f8301a.put(strQ, lVarC);
            }
            aVar.f();
            return oVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static void d(j7.l lVar, q7.b bVar) throws IOException {
            if (lVar == null || (lVar instanceof j7.n)) {
                bVar.j();
                return;
            }
            boolean z10 = lVar instanceof j7.q;
            if (z10) {
                if (!z10) {
                    throw new IllegalStateException("Not a JSON Primitive: " + lVar);
                }
                j7.q qVar = (j7.q) lVar;
                Object obj = qVar.f8303a;
                if (obj instanceof Number) {
                    bVar.p(qVar.l());
                    return;
                } else if (obj instanceof Boolean) {
                    bVar.r(qVar.h());
                    return;
                } else {
                    bVar.q(qVar.m());
                    return;
                }
            }
            boolean z11 = lVar instanceof j7.j;
            if (z11) {
                bVar.b();
                if (!z11) {
                    throw new IllegalStateException("Not a JSON Array: " + lVar);
                }
                Iterator<j7.l> it = ((j7.j) lVar).iterator();
                while (it.hasNext()) {
                    d(it.next(), bVar);
                }
                bVar.e();
                return;
            }
            boolean z12 = lVar instanceof j7.o;
            if (!z12) {
                throw new IllegalArgumentException("Couldn't write " + lVar.getClass());
            }
            bVar.c();
            if (!z12) {
                throw new IllegalStateException("Not a JSON Object: " + lVar);
            }
            l7.i iVar = l7.i.this;
            i.e eVar = iVar.f9427e.f9438d;
            int r12 = iVar.f9426d;
            while (true) {
                i.e eVar2 = iVar.f9427e;
                if (!(eVar != eVar2)) {
                    bVar.f();
                    return;
                }
                if (eVar == eVar2) {
                    throw new NoSuchElementException();
                }
                if (iVar.f9426d != r12) {
                    throw new ConcurrentModificationException();
                }
                i.e eVar3 = eVar.f9438d;
                bVar.g((String) eVar.f);
                d((j7.l) eVar.f9440g, bVar);
                eVar = eVar3;
            }
        }

        @Override // j7.u
        public final /* bridge */ /* synthetic */ j7.l a(q7.a aVar) throws IOException {
            return c(aVar);
        }

        @Override // j7.u
        public final /* bridge */ /* synthetic */ void b(q7.b bVar, j7.l lVar) throws IOException {
            d(lVar, bVar);
        }
    }

    public static class v extends j7.u<BitSet> {
        /* JADX WARN: Removed duplicated region for block: B:21:0x0045  */
        @Override // j7.u
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.util.BitSet a(q7.a r7) throws java.io.IOException {
            /*
                r6 = this;
                java.util.BitSet r0 = new java.util.BitSet
                r0.<init>()
                r7.a()
                int r1 = r7.B()
                r2 = 0
            Ld:
                r3 = 2
                if (r1 == r3) goto L5f
                int r3 = g.d.c(r1)
                r4 = 5
                r5 = 1
                if (r3 == r4) goto L3a
                r4 = 6
                if (r3 == r4) goto L33
                r4 = 7
                if (r3 != r4) goto L23
                boolean r1 = r7.m()
                goto L47
            L23:
                j7.s r7 = new j7.s
                java.lang.String r0 = androidx.fragment.app.a.j(r1)
                java.lang.String r1 = "Invalid bitset value type: "
                java.lang.String r0 = r1.concat(r0)
                r7.<init>(r0)
                throw r7
            L33:
                int r1 = r7.o()
                if (r1 == 0) goto L45
                goto L46
            L3a:
                java.lang.String r1 = r7.v()
                int r1 = java.lang.Integer.parseInt(r1)     // Catch: java.lang.NumberFormatException -> L53
                if (r1 == 0) goto L45
                goto L46
            L45:
                r5 = 0
            L46:
                r1 = r5
            L47:
                if (r1 == 0) goto L4c
                r0.set(r2)
            L4c:
                int r2 = r2 + 1
                int r1 = r7.B()
                goto Ld
            L53:
                j7.s r7 = new j7.s
                java.lang.String r0 = "Error: Expecting: bitset number value (1, 0), Found: "
                java.lang.String r0 = androidx.browser.browseractions.b.e(r0, r1)
                r7.<init>(r0)
                throw r7
            L5f:
                r7.e()
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: m7.o.v.a(q7.a):java.lang.Object");
        }

        @Override // j7.u
        public final void b(q7.b bVar, BitSet bitSet) throws IOException {
            BitSet bitSet2 = bitSet;
            bVar.b();
            int length = bitSet2.length();
            for (int r12 = 0; r12 < length; r12++) {
                bVar.n(bitSet2.get(r12) ? 1L : 0L);
            }
            bVar.e();
        }
    }

    public static class w implements j7.v {
        @Override // j7.v
        public final <T> j7.u<T> b(j7.h hVar, p7.a<T> aVar) {
            Class<? super T> superclass = aVar.f12844a;
            if (!Enum.class.isAssignableFrom(superclass) || superclass == Enum.class) {
                return null;
            }
            if (!superclass.isEnum()) {
                superclass = superclass.getSuperclass();
            }
            return new e0(superclass);
        }
    }

    public static class x extends j7.u<Boolean> {
        @Override // j7.u
        public final Boolean a(q7.a aVar) throws IOException {
            int r02 = aVar.B();
            if (r02 != 9) {
                return Boolean.valueOf(r02 == 6 ? Boolean.parseBoolean(aVar.v()) : aVar.m());
            }
            aVar.s();
            return null;
        }

        @Override // j7.u
        public final void b(q7.b bVar, Boolean bool) throws IOException {
            bVar.o(bool);
        }
    }

    public static class y extends j7.u<Boolean> {
        @Override // j7.u
        public final Boolean a(q7.a aVar) throws IOException {
            if (aVar.B() != 9) {
                return Boolean.valueOf(aVar.v());
            }
            aVar.s();
            return null;
        }

        @Override // j7.u
        public final void b(q7.b bVar, Boolean bool) throws IOException {
            Boolean bool2 = bool;
            bVar.q(bool2 == null ? "null" : bool2.toString());
        }
    }

    public static class z extends j7.u<Number> {
        @Override // j7.u
        public final Number a(q7.a aVar) throws IOException {
            if (aVar.B() == 9) {
                aVar.s();
                return null;
            }
            try {
                return Byte.valueOf((byte) aVar.o());
            } catch (NumberFormatException e10) {
                throw new j7.s(e10);
            }
        }

        @Override // j7.u
        public final void b(q7.b bVar, Number number) throws IOException {
            bVar.p(number);
        }
    }

    static {
        x xVar = new x();
        f10102c = new y();
        f10103d = new m7.q(Boolean.TYPE, Boolean.class, xVar);
        f10104e = new m7.q(Byte.TYPE, Byte.class, new z());
        f = new m7.q(Short.TYPE, Short.class, new a0());
        f10105g = new m7.q(Integer.TYPE, Integer.class, new b0());
        f10106h = new m7.p(AtomicInteger.class, new j7.t(new c0()));
        f10107i = new m7.p(AtomicBoolean.class, new j7.t(new d0()));
        f10108j = new m7.p(AtomicIntegerArray.class, new j7.t(new a()));
        f10109k = new b();
        new c();
        new d();
        f10110l = new m7.p(Number.class, new e());
        f10111m = new m7.q(Character.TYPE, Character.class, new f());
        g gVar = new g();
        f10112n = new h();
        f10113o = new i();
        f10114p = new m7.p(String.class, gVar);
        f10115q = new m7.p(StringBuilder.class, new j());
        f10116r = new m7.p(StringBuffer.class, new l());
        f10117s = new m7.p(URL.class, new m());
        f10118t = new m7.p(URI.class, new n());
        f10119u = new m7.s(InetAddress.class, new C0183o());
        f10120v = new m7.p(UUID.class, new p());
        w = new m7.p(Currency.class, new j7.t(new q()));
        f10121x = new r();
        f10122y = new m7.r(new s());
        f10123z = new m7.p(Locale.class, new t());
        u uVar = new u();
        A = uVar;
        B = new m7.s(j7.l.class, uVar);
        C = new w();
    }
}
