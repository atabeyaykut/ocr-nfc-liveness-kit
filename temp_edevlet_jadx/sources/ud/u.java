package ud;

import java.io.IOException;
import java.util.ArrayList;
import rc.b0;
import rc.d;
import rc.o;
import rc.q;
import rc.r;
import rc.u;
import rc.x;
import ud.a0;

/* loaded from: classes2.dex */
public final class u<T> implements ud.b<T> {

    /* renamed from: a, reason: collision with root package name */
    public final b0 f18054a;

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f18055b;

    /* renamed from: c, reason: collision with root package name */
    public final d.a f18056c;

    /* renamed from: d, reason: collision with root package name */
    public final f<rc.d0, T> f18057d;

    /* renamed from: e, reason: collision with root package name */
    public volatile boolean f18058e;
    public rc.d f;

    /* renamed from: g, reason: collision with root package name */
    public Throwable f18059g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f18060h;

    public class a implements rc.e {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ d f18061a;

        public a(d dVar) {
            this.f18061a = dVar;
        }

        @Override // rc.e
        public final void a(vc.e eVar, IOException iOException) {
            try {
                this.f18061a.onFailure(u.this, iOException);
            } catch (Throwable th2) {
                h0.n(th2);
                th2.printStackTrace();
            }
        }

        @Override // rc.e
        public final void b(rc.b0 b0Var) {
            d dVar = this.f18061a;
            u uVar = u.this;
            try {
                try {
                    dVar.onResponse(uVar, uVar.d(b0Var));
                } catch (Throwable th2) {
                    h0.n(th2);
                    th2.printStackTrace();
                }
            } catch (Throwable th3) {
                h0.n(th3);
                try {
                    dVar.onFailure(uVar, th3);
                } catch (Throwable th4) {
                    h0.n(th4);
                    th4.printStackTrace();
                }
            }
        }
    }

    public static final class b extends rc.d0 {

        /* renamed from: b, reason: collision with root package name */
        public final rc.d0 f18063b;

        /* renamed from: c, reason: collision with root package name */
        public final ed.d0 f18064c;

        /* renamed from: d, reason: collision with root package name */
        public IOException f18065d;

        public class a extends ed.n {
            public a(ed.g gVar) {
                super(gVar);
            }

            @Override // ed.n, ed.j0
            public final long w(ed.e eVar, long j10) throws IOException {
                try {
                    return super.w(eVar, j10);
                } catch (IOException e10) {
                    b.this.f18065d = e10;
                    throw e10;
                }
            }
        }

        public b(rc.d0 d0Var) {
            this.f18063b = d0Var;
            this.f18064c = ed.v.b(new a(d0Var.c()));
        }

        @Override // rc.d0
        public final long a() {
            return this.f18063b.a();
        }

        @Override // rc.d0
        public final rc.t b() {
            return this.f18063b.b();
        }

        @Override // rc.d0
        public final ed.g c() {
            return this.f18064c;
        }

        @Override // rc.d0, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            this.f18063b.close();
        }
    }

    public static final class c extends rc.d0 {

        /* renamed from: b, reason: collision with root package name */
        public final rc.t f18067b;

        /* renamed from: c, reason: collision with root package name */
        public final long f18068c;

        public c(rc.t tVar, long j10) {
            this.f18067b = tVar;
            this.f18068c = j10;
        }

        @Override // rc.d0
        public final long a() {
            return this.f18068c;
        }

        @Override // rc.d0
        public final rc.t b() {
            return this.f18067b;
        }

        @Override // rc.d0
        public final ed.g c() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }
    }

    public u(b0 b0Var, Object[] objArr, d.a aVar, f<rc.d0, T> fVar) {
        this.f18054a = b0Var;
        this.f18055b = objArr;
        this.f18056c = aVar;
        this.f18057d = fVar;
    }

    public final rc.d b() throws IOException {
        r.a aVar;
        rc.r rVarA;
        b0 b0Var = this.f18054a;
        b0Var.getClass();
        Object[] objArr = this.f18055b;
        int length = objArr.length;
        y<?>[] yVarArr = b0Var.f17967j;
        if (length != yVarArr.length) {
            throw new IllegalArgumentException(androidx.browser.browseractions.a.b(androidx.appcompat.widget.v.e("Argument count (", length, ") doesn't match expected count ("), yVarArr.length, ")"));
        }
        a0 a0Var = new a0(b0Var.f17961c, b0Var.f17960b, b0Var.f17962d, b0Var.f17963e, b0Var.f, b0Var.f17964g, b0Var.f17965h, b0Var.f17966i);
        if (b0Var.f17968k) {
            length--;
        }
        ArrayList arrayList = new ArrayList(length);
        for (int r72 = 0; r72 < length; r72++) {
            arrayList.add(objArr[r72]);
            yVarArr[r72].a(a0Var, objArr[r72]);
        }
        r.a aVar2 = a0Var.f17950d;
        if (aVar2 != null) {
            rVarA = aVar2.a();
        } else {
            String link = a0Var.f17949c;
            rc.r rVar = a0Var.f17948b;
            rVar.getClass();
            kotlin.jvm.internal.h.f(link, "link");
            try {
                aVar = new r.a();
                aVar.c(rVar, link);
            } catch (IllegalArgumentException unused) {
                aVar = null;
            }
            rVarA = aVar != null ? aVar.a() : null;
            if (rVarA == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + rVar + ", Relative: " + a0Var.f17949c);
            }
        }
        rc.a0 aVar3 = a0Var.f17956k;
        if (aVar3 == null) {
            o.a aVar4 = a0Var.f17955j;
            if (aVar4 != null) {
                aVar3 = new rc.o(aVar4.f14501a, aVar4.f14502b);
            } else {
                u.a aVar5 = a0Var.f17954i;
                if (aVar5 != null) {
                    ArrayList arrayList2 = aVar5.f14547c;
                    if (!(!arrayList2.isEmpty())) {
                        throw new IllegalStateException("Multipart body must have at least one part.".toString());
                    }
                    aVar3 = new rc.u(aVar5.f14545a, aVar5.f14546b, sc.c.v(arrayList2));
                } else if (a0Var.f17953h) {
                    byte[] bArr = new byte[0];
                    rc.a0.f14383a.getClass();
                    long j10 = 0;
                    byte[] bArr2 = sc.c.f15380a;
                    if ((j10 | j10) < 0 || j10 > j10 || j10 - j10 < j10) {
                        throw new ArrayIndexOutOfBoundsException();
                    }
                    aVar3 = new rc.z(null, bArr, 0, 0);
                }
            }
        }
        rc.t tVar = a0Var.f17952g;
        q.a aVar6 = a0Var.f;
        if (tVar != null) {
            if (aVar3 != null) {
                aVar3 = new a0.a(aVar3, tVar);
            } else {
                aVar6.a("Content-Type", tVar.f14534a);
            }
        }
        x.a aVar7 = a0Var.f17951e;
        aVar7.getClass();
        aVar7.f14602a = rVarA;
        aVar7.f14604c = aVar6.c().u();
        aVar7.d(a0Var.f17947a, aVar3);
        aVar7.e(m.class, new m(b0Var.f17959a, arrayList));
        vc.e eVarB = this.f18056c.b(aVar7.a());
        if (eVarB != null) {
            return eVarB;
        }
        throw new NullPointerException("Call.Factory returned null.");
    }

    public final rc.d c() throws IOException {
        rc.d dVar = this.f;
        if (dVar != null) {
            return dVar;
        }
        Throwable th2 = this.f18059g;
        if (th2 != null) {
            if (th2 instanceof IOException) {
                throw ((IOException) th2);
            }
            if (th2 instanceof RuntimeException) {
                throw ((RuntimeException) th2);
            }
            throw ((Error) th2);
        }
        try {
            rc.d dVarB = b();
            this.f = dVarB;
            return dVarB;
        } catch (IOException | Error | RuntimeException e10) {
            h0.n(e10);
            this.f18059g = e10;
            throw e10;
        }
    }

    @Override // ud.b
    public final void cancel() {
        rc.d dVar;
        this.f18058e = true;
        synchronized (this) {
            dVar = this.f;
        }
        if (dVar != null) {
            dVar.cancel();
        }
    }

    public final Object clone() throws CloneNotSupportedException {
        return new u(this.f18054a, this.f18055b, this.f18056c, this.f18057d);
    }

    public final c0<T> d(rc.b0 b0Var) throws IOException {
        rc.d0 d0Var = b0Var.f14391h;
        b0.a aVar = new b0.a(b0Var);
        aVar.f14403g = new c(d0Var.b(), d0Var.a());
        rc.b0 b0VarA = aVar.a();
        int r32 = b0VarA.f14389e;
        if (r32 < 200 || r32 >= 300) {
            try {
                h0.a(d0Var);
                if (b0VarA.c()) {
                    throw new IllegalArgumentException("rawResponse should not be successful response");
                }
                return new c0<>(b0VarA, null);
            } finally {
                d0Var.close();
            }
        }
        if (r32 == 204 || r32 == 205) {
            d0Var.close();
            if (b0VarA.c()) {
                return new c0<>(b0VarA, null);
            }
            throw new IllegalArgumentException("rawResponse must be successful response");
        }
        b bVar = new b(d0Var);
        try {
            T tA = this.f18057d.a(bVar);
            if (b0VarA.c()) {
                return new c0<>(b0VarA, tA);
            }
            throw new IllegalArgumentException("rawResponse must be successful response");
        } catch (RuntimeException e10) {
            IOException iOException = bVar.f18065d;
            if (iOException == null) {
                throw e10;
            }
            throw iOException;
        }
    }

    @Override // ud.b
    public final c0<T> execute() throws IOException {
        rc.d dVarC;
        synchronized (this) {
            if (this.f18060h) {
                throw new IllegalStateException("Already executed.");
            }
            this.f18060h = true;
            dVarC = c();
        }
        if (this.f18058e) {
            dVarC.cancel();
        }
        return d(dVarC.execute());
    }

    @Override // ud.b
    public final boolean m() {
        boolean z10 = true;
        if (this.f18058e) {
            return true;
        }
        synchronized (this) {
            rc.d dVar = this.f;
            if (dVar == null || !dVar.m()) {
                z10 = false;
            }
        }
        return z10;
    }

    @Override // ud.b
    public final void n0(d<T> dVar) {
        rc.d dVar2;
        Throwable th2;
        synchronized (this) {
            if (this.f18060h) {
                throw new IllegalStateException("Already executed.");
            }
            this.f18060h = true;
            dVar2 = this.f;
            th2 = this.f18059g;
            if (dVar2 == null && th2 == null) {
                try {
                    rc.d dVarB = b();
                    this.f = dVarB;
                    dVar2 = dVarB;
                } catch (Throwable th3) {
                    th2 = th3;
                    h0.n(th2);
                    this.f18059g = th2;
                }
            }
        }
        if (th2 != null) {
            dVar.onFailure(this, th2);
            return;
        }
        if (this.f18058e) {
            dVar2.cancel();
        }
        dVar2.y(new a(dVar));
    }

    @Override // ud.b
    public final synchronized rc.x o() {
        try {
        } catch (IOException e10) {
            throw new RuntimeException("Unable to create request.", e10);
        }
        return c().o();
    }

    @Override // ud.b
    public final ud.b clone() {
        return new u(this.f18054a, this.f18055b, this.f18056c, this.f18057d);
    }
}
