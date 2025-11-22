package io.realm;

import io.realm.a;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.UncheckedRow;
import io.realm.internal.objectstore.OsObjectBuilder;
import java.util.Collections;
import java.util.Set;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportPolicy;

/* loaded from: classes2.dex */
public final class a2 extends AccidentReportPolicy implements io.realm.internal.n {

    /* renamed from: c, reason: collision with root package name */
    public static final OsObjectSchemaInfo f7466c;

    /* renamed from: a, reason: collision with root package name */
    public a f7467a;

    /* renamed from: b, reason: collision with root package name */
    public f0<AccidentReportPolicy> f7468b;

    public static final class a extends io.realm.internal.c {

        /* renamed from: e, reason: collision with root package name */
        public long f7469e;
        public long f;

        /* renamed from: g, reason: collision with root package name */
        public long f7470g;

        /* renamed from: h, reason: collision with root package name */
        public long f7471h;

        /* renamed from: i, reason: collision with root package name */
        public long f7472i;

        public a(OsSchemaInfo osSchemaInfo) {
            super(5, true);
            OsObjectSchemaInfo osObjectSchemaInfoA = osSchemaInfo.a("AccidentReportPolicy");
            this.f7469e = a("id", "id", osObjectSchemaInfoA);
            this.f = a("productCode", "productCode", osObjectSchemaInfoA);
            this.f7470g = a("endDate", "endDate", osObjectSchemaInfoA);
            this.f7471h = a("startDate", "startDate", osObjectSchemaInfoA);
            this.f7472i = a("companyName", "companyName", osObjectSchemaInfoA);
        }

        @Override // io.realm.internal.c
        public final void b(io.realm.internal.c cVar, io.realm.internal.c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f7469e = aVar.f7469e;
            aVar2.f = aVar.f;
            aVar2.f7470g = aVar.f7470g;
            aVar2.f7471h = aVar.f7471h;
            aVar2.f7472i = aVar.f7472i;
        }
    }

    static {
        OsObjectSchemaInfo.a aVar = new OsObjectSchemaInfo.a("AccidentReportPolicy", true, 5);
        RealmFieldType realmFieldType = RealmFieldType.STRING;
        aVar.b("id", realmFieldType, false, false, false);
        aVar.b("productCode", realmFieldType, false, false, false);
        aVar.b("endDate", realmFieldType, false, false, false);
        aVar.b("startDate", realmFieldType, false, false, false);
        aVar.b("companyName", realmFieldType, false, false, false);
        f7466c = aVar.c();
    }

    public a2() {
        this.f7468b.c();
    }

    public static a2 c(io.realm.a aVar, UncheckedRow uncheckedRow) {
        a.b bVar = io.realm.a.f7452h.get();
        bVar.b(aVar, uncheckedRow, aVar.i().a(AccidentReportPolicy.class), false, Collections.emptyList());
        a2 a2Var = new a2();
        bVar.a();
        return a2Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void d(g0 g0Var, AccidentReportPolicy accidentReportPolicy, AccidentReportPolicy accidentReportPolicy2, Set set) {
        a aVar = (a) g0Var.f7539j.a(AccidentReportPolicy.class);
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(g0Var.v(AccidentReportPolicy.class), set);
        osObjectBuilder.f(aVar.f7469e, accidentReportPolicy.getId());
        osObjectBuilder.f(aVar.f, accidentReportPolicy.getProductCode());
        osObjectBuilder.f(aVar.f7470g, accidentReportPolicy.getEndDate());
        osObjectBuilder.f(aVar.f7471h, accidentReportPolicy.getStartDate());
        osObjectBuilder.f(aVar.f7472i, accidentReportPolicy.getCompanyName());
        osObjectBuilder.i((io.realm.internal.n) accidentReportPolicy2);
    }

    @Override // io.realm.internal.n
    public final void a() {
        if (this.f7468b != null) {
            return;
        }
        a.b bVar = io.realm.a.f7452h.get();
        this.f7467a = (a) bVar.f7461c;
        f0<AccidentReportPolicy> f0Var = new f0<>(this);
        this.f7468b = f0Var;
        f0Var.f7533e = bVar.f7459a;
        f0Var.f7531c = bVar.f7460b;
        f0Var.f = bVar.f7462d;
        f0Var.f7534g = bVar.f7463e;
    }

    @Override // io.realm.internal.n
    public final f0<?> b() {
        return this.f7468b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a2.class != obj.getClass()) {
            return false;
        }
        a2 a2Var = (a2) obj;
        io.realm.a aVar = this.f7468b.f7533e;
        io.realm.a aVar2 = a2Var.f7468b.f7533e;
        String str = aVar.f7455c.f7746c;
        String str2 = aVar2.f7455c.f7746c;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        if (aVar.j() != aVar2.j() || !aVar.f7457e.getVersionID().equals(aVar2.f7457e.getVersionID())) {
            return false;
        }
        String strM = this.f7468b.f7531c.q().m();
        String strM2 = a2Var.f7468b.f7531c.q().m();
        if (strM == null ? strM2 == null : strM.equals(strM2)) {
            return this.f7468b.f7531c.Y() == a2Var.f7468b.f7531c.Y();
        }
        return false;
    }

    public final int hashCode() {
        f0<AccidentReportPolicy> f0Var = this.f7468b;
        String str = f0Var.f7533e.f7455c.f7746c;
        String strM = f0Var.f7531c.q().m();
        long jY = this.f7468b.f7531c.Y();
        return ((((527 + (str != null ? str.hashCode() : 0)) * 31) + (strM != null ? strM.hashCode() : 0)) * 31) + ((int) ((jY >>> 32) ^ jY));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportPolicy, io.realm.b2
    /* renamed from: realmGet$companyName */
    public final String getCompanyName() {
        this.f7468b.f7533e.b();
        return this.f7468b.f7531c.R(this.f7467a.f7472i);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportPolicy, io.realm.b2
    /* renamed from: realmGet$endDate */
    public final String getEndDate() {
        this.f7468b.f7533e.b();
        return this.f7468b.f7531c.R(this.f7467a.f7470g);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportPolicy, io.realm.b2
    /* renamed from: realmGet$id */
    public final String getId() {
        this.f7468b.f7533e.b();
        return this.f7468b.f7531c.R(this.f7467a.f7469e);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportPolicy, io.realm.b2
    /* renamed from: realmGet$productCode */
    public final String getProductCode() {
        this.f7468b.f7533e.b();
        return this.f7468b.f7531c.R(this.f7467a.f);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportPolicy, io.realm.b2
    /* renamed from: realmGet$startDate */
    public final String getStartDate() {
        this.f7468b.f7533e.b();
        return this.f7468b.f7531c.R(this.f7467a.f7471h);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportPolicy
    public final void realmSet$companyName(String str) {
        f0<AccidentReportPolicy> f0Var = this.f7468b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7468b.f7531c.M(this.f7467a.f7472i);
                return;
            } else {
                this.f7468b.f7531c.o(this.f7467a.f7472i, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7467a.f7472i, pVar.Y());
            } else {
                pVar.q().x(this.f7467a.f7472i, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportPolicy
    public final void realmSet$endDate(String str) {
        f0<AccidentReportPolicy> f0Var = this.f7468b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7468b.f7531c.M(this.f7467a.f7470g);
                return;
            } else {
                this.f7468b.f7531c.o(this.f7467a.f7470g, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7467a.f7470g, pVar.Y());
            } else {
                pVar.q().x(this.f7467a.f7470g, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportPolicy
    public final void realmSet$id(String str) {
        f0<AccidentReportPolicy> f0Var = this.f7468b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7468b.f7531c.M(this.f7467a.f7469e);
                return;
            } else {
                this.f7468b.f7531c.o(this.f7467a.f7469e, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7467a.f7469e, pVar.Y());
            } else {
                pVar.q().x(this.f7467a.f7469e, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportPolicy
    public final void realmSet$productCode(String str) {
        f0<AccidentReportPolicy> f0Var = this.f7468b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7468b.f7531c.M(this.f7467a.f);
                return;
            } else {
                this.f7468b.f7531c.o(this.f7467a.f, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7467a.f, pVar.Y());
            } else {
                pVar.q().x(this.f7467a.f, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportPolicy
    public final void realmSet$startDate(String str) {
        f0<AccidentReportPolicy> f0Var = this.f7468b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7468b.f7531c.M(this.f7467a.f7471h);
                return;
            } else {
                this.f7468b.f7531c.o(this.f7467a.f7471h, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7467a.f7471h, pVar.Y());
            } else {
                pVar.q().x(this.f7467a.f7471h, pVar.Y(), str);
            }
        }
    }

    public final String toString() {
        if (!v0.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb2 = new StringBuilder("AccidentReportPolicy = proxy[{id:");
        sb2.append(getId() != null ? getId() : "null");
        sb2.append("},{productCode:");
        sb2.append(getProductCode() != null ? getProductCode() : "null");
        sb2.append("},{endDate:");
        sb2.append(getEndDate() != null ? getEndDate() : "null");
        sb2.append("},{startDate:");
        sb2.append(getStartDate() != null ? getStartDate() : "null");
        sb2.append("},{companyName:");
        return androidx.camera.camera2.internal.c.h(sb2, getCompanyName() != null ? getCompanyName() : "null", "}]");
    }
}
