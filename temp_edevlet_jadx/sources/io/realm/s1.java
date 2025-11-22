package io.realm;

import io.realm.a;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.Table;
import io.realm.internal.UncheckedRow;
import io.realm.internal.objectstore.OsObjectBuilder;
import java.util.Collections;
import java.util.HashMap;
import java.util.Set;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportDriver;

/* loaded from: classes2.dex */
public final class s1 extends AccidentReportDriver implements io.realm.internal.n {

    /* renamed from: c, reason: collision with root package name */
    public static final OsObjectSchemaInfo f7831c;

    /* renamed from: a, reason: collision with root package name */
    public a f7832a;

    /* renamed from: b, reason: collision with root package name */
    public f0<AccidentReportDriver> f7833b;

    public static final class a extends io.realm.internal.c {

        /* renamed from: e, reason: collision with root package name */
        public long f7834e;
        public long f;

        /* renamed from: g, reason: collision with root package name */
        public long f7835g;

        /* renamed from: h, reason: collision with root package name */
        public long f7836h;

        /* renamed from: i, reason: collision with root package name */
        public long f7837i;

        /* renamed from: j, reason: collision with root package name */
        public long f7838j;

        /* renamed from: k, reason: collision with root package name */
        public long f7839k;

        /* renamed from: l, reason: collision with root package name */
        public long f7840l;

        /* renamed from: m, reason: collision with root package name */
        public long f7841m;

        public a(OsSchemaInfo osSchemaInfo) {
            super(9, true);
            OsObjectSchemaInfo osObjectSchemaInfoA = osSchemaInfo.a("AccidentReportDriver");
            this.f7834e = a("id", "id", osObjectSchemaInfoA);
            this.f = a("name", "name", osObjectSchemaInfoA);
            this.f7835g = a("surName", "surName", osObjectSchemaInfoA);
            this.f7836h = a("birthDate", "birthDate", osObjectSchemaInfoA);
            this.f7837i = a("phoneNumber", "phoneNumber", osObjectSchemaInfoA);
            this.f7838j = a("identityNumber", "identityNumber", osObjectSchemaInfoA);
            this.f7839k = a("identityType", "identityType", osObjectSchemaInfoA);
            this.f7840l = a("createdDate", "createdDate", osObjectSchemaInfoA);
            this.f7841m = a("updatedDate", "updatedDate", osObjectSchemaInfoA);
        }

        @Override // io.realm.internal.c
        public final void b(io.realm.internal.c cVar, io.realm.internal.c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f7834e = aVar.f7834e;
            aVar2.f = aVar.f;
            aVar2.f7835g = aVar.f7835g;
            aVar2.f7836h = aVar.f7836h;
            aVar2.f7837i = aVar.f7837i;
            aVar2.f7838j = aVar.f7838j;
            aVar2.f7839k = aVar.f7839k;
            aVar2.f7840l = aVar.f7840l;
            aVar2.f7841m = aVar.f7841m;
        }
    }

    static {
        OsObjectSchemaInfo.a aVar = new OsObjectSchemaInfo.a("AccidentReportDriver", true, 9);
        RealmFieldType realmFieldType = RealmFieldType.STRING;
        aVar.b("id", realmFieldType, false, false, false);
        aVar.b("name", realmFieldType, false, false, false);
        aVar.b("surName", realmFieldType, false, false, false);
        aVar.b("birthDate", realmFieldType, false, false, false);
        aVar.b("phoneNumber", realmFieldType, false, false, false);
        aVar.b("identityNumber", realmFieldType, false, false, false);
        aVar.b("identityType", realmFieldType, false, false, false);
        aVar.b("createdDate", realmFieldType, false, false, false);
        aVar.b("updatedDate", realmFieldType, false, false, false);
        f7831c = aVar.c();
    }

    public s1() {
        this.f7833b.c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static AccidentReportDriver c(g0 g0Var, a aVar, AccidentReportDriver accidentReportDriver, HashMap map, Set set) {
        if ((accidentReportDriver instanceof io.realm.internal.n) && !v0.isFrozen(accidentReportDriver)) {
            io.realm.internal.n nVar = (io.realm.internal.n) accidentReportDriver;
            if (nVar.b().f7533e != null) {
                io.realm.a aVar2 = nVar.b().f7533e;
                if (aVar2.f7454b != g0Var.f7454b) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                }
                if (aVar2.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                    return accidentReportDriver;
                }
            }
        }
        io.realm.a.f7452h.get();
        s0 s0Var = (io.realm.internal.n) map.get(accidentReportDriver);
        if (s0Var != null) {
            return (AccidentReportDriver) s0Var;
        }
        s0 s0Var2 = (io.realm.internal.n) map.get(accidentReportDriver);
        if (s0Var2 != null) {
            return (AccidentReportDriver) s0Var2;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(g0Var.v(AccidentReportDriver.class), set);
        osObjectBuilder.f(aVar.f7834e, accidentReportDriver.getId());
        osObjectBuilder.f(aVar.f, accidentReportDriver.getName());
        osObjectBuilder.f(aVar.f7835g, accidentReportDriver.getSurName());
        osObjectBuilder.f(aVar.f7836h, accidentReportDriver.getBirthDate());
        osObjectBuilder.f(aVar.f7837i, accidentReportDriver.getPhoneNumber());
        osObjectBuilder.f(aVar.f7838j, accidentReportDriver.getIdentityNumber());
        osObjectBuilder.f(aVar.f7839k, accidentReportDriver.getIdentityType());
        osObjectBuilder.f(aVar.f7840l, accidentReportDriver.getCreatedDate());
        osObjectBuilder.f(aVar.f7841m, accidentReportDriver.getUpdatedDate());
        s1 s1VarE = e(g0Var, osObjectBuilder.g());
        map.put(accidentReportDriver, s1VarE);
        return s1VarE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void d(g0 g0Var, Table table, long j10, long j11, AccidentReportDriver accidentReportDriver, HashMap map) {
        if ((accidentReportDriver instanceof io.realm.internal.n) && !v0.isFrozen(accidentReportDriver)) {
            io.realm.internal.n nVar = (io.realm.internal.n) accidentReportDriver;
            if (nVar.b().f7533e != null && nVar.b().f7533e.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                nVar.b().f7531c.Y();
                return;
            }
        }
        long j12 = g0Var.v(AccidentReportDriver.class).f7633a;
        a aVar = (a) g0Var.f7539j.a(AccidentReportDriver.class);
        long jCreateEmbeddedObject = OsObject.createEmbeddedObject(table, j11, j10);
        map.put(accidentReportDriver, Long.valueOf(jCreateEmbeddedObject));
        String id2 = accidentReportDriver.getId();
        long j13 = aVar.f7834e;
        if (id2 != null) {
            Table.nativeSetString(j12, j13, jCreateEmbeddedObject, id2, false);
        } else {
            Table.nativeSetNull(j12, j13, jCreateEmbeddedObject, false);
        }
        String name = accidentReportDriver.getName();
        long j14 = aVar.f;
        if (name != null) {
            Table.nativeSetString(j12, j14, jCreateEmbeddedObject, name, false);
        } else {
            Table.nativeSetNull(j12, j14, jCreateEmbeddedObject, false);
        }
        String surName = accidentReportDriver.getSurName();
        long j15 = aVar.f7835g;
        if (surName != null) {
            Table.nativeSetString(j12, j15, jCreateEmbeddedObject, surName, false);
        } else {
            Table.nativeSetNull(j12, j15, jCreateEmbeddedObject, false);
        }
        String birthDate = accidentReportDriver.getBirthDate();
        long j16 = aVar.f7836h;
        if (birthDate != null) {
            Table.nativeSetString(j12, j16, jCreateEmbeddedObject, birthDate, false);
        } else {
            Table.nativeSetNull(j12, j16, jCreateEmbeddedObject, false);
        }
        String phoneNumber = accidentReportDriver.getPhoneNumber();
        long j17 = aVar.f7837i;
        if (phoneNumber != null) {
            Table.nativeSetString(j12, j17, jCreateEmbeddedObject, phoneNumber, false);
        } else {
            Table.nativeSetNull(j12, j17, jCreateEmbeddedObject, false);
        }
        String identityNumber = accidentReportDriver.getIdentityNumber();
        long j18 = aVar.f7838j;
        if (identityNumber != null) {
            Table.nativeSetString(j12, j18, jCreateEmbeddedObject, identityNumber, false);
        } else {
            Table.nativeSetNull(j12, j18, jCreateEmbeddedObject, false);
        }
        String identityType = accidentReportDriver.getIdentityType();
        long j19 = aVar.f7839k;
        if (identityType != null) {
            Table.nativeSetString(j12, j19, jCreateEmbeddedObject, identityType, false);
        } else {
            Table.nativeSetNull(j12, j19, jCreateEmbeddedObject, false);
        }
        String createdDate = accidentReportDriver.getCreatedDate();
        long j20 = aVar.f7840l;
        if (createdDate != null) {
            Table.nativeSetString(j12, j20, jCreateEmbeddedObject, createdDate, false);
        } else {
            Table.nativeSetNull(j12, j20, jCreateEmbeddedObject, false);
        }
        String updatedDate = accidentReportDriver.getUpdatedDate();
        if (updatedDate != null) {
            Table.nativeSetString(j12, aVar.f7841m, jCreateEmbeddedObject, updatedDate, false);
        } else {
            Table.nativeSetNull(j12, aVar.f7841m, jCreateEmbeddedObject, false);
        }
    }

    public static s1 e(io.realm.a aVar, UncheckedRow uncheckedRow) {
        a.b bVar = io.realm.a.f7452h.get();
        bVar.b(aVar, uncheckedRow, aVar.i().a(AccidentReportDriver.class), false, Collections.emptyList());
        s1 s1Var = new s1();
        bVar.a();
        return s1Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void f(g0 g0Var, AccidentReportDriver accidentReportDriver, AccidentReportDriver accidentReportDriver2, Set set) {
        a aVar = (a) g0Var.f7539j.a(AccidentReportDriver.class);
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(g0Var.v(AccidentReportDriver.class), set);
        osObjectBuilder.f(aVar.f7834e, accidentReportDriver.getId());
        osObjectBuilder.f(aVar.f, accidentReportDriver.getName());
        osObjectBuilder.f(aVar.f7835g, accidentReportDriver.getSurName());
        osObjectBuilder.f(aVar.f7836h, accidentReportDriver.getBirthDate());
        osObjectBuilder.f(aVar.f7837i, accidentReportDriver.getPhoneNumber());
        osObjectBuilder.f(aVar.f7838j, accidentReportDriver.getIdentityNumber());
        osObjectBuilder.f(aVar.f7839k, accidentReportDriver.getIdentityType());
        osObjectBuilder.f(aVar.f7840l, accidentReportDriver.getCreatedDate());
        osObjectBuilder.f(aVar.f7841m, accidentReportDriver.getUpdatedDate());
        osObjectBuilder.i((io.realm.internal.n) accidentReportDriver2);
    }

    @Override // io.realm.internal.n
    public final void a() {
        if (this.f7833b != null) {
            return;
        }
        a.b bVar = io.realm.a.f7452h.get();
        this.f7832a = (a) bVar.f7461c;
        f0<AccidentReportDriver> f0Var = new f0<>(this);
        this.f7833b = f0Var;
        f0Var.f7533e = bVar.f7459a;
        f0Var.f7531c = bVar.f7460b;
        f0Var.f = bVar.f7462d;
        f0Var.f7534g = bVar.f7463e;
    }

    @Override // io.realm.internal.n
    public final f0<?> b() {
        return this.f7833b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || s1.class != obj.getClass()) {
            return false;
        }
        s1 s1Var = (s1) obj;
        io.realm.a aVar = this.f7833b.f7533e;
        io.realm.a aVar2 = s1Var.f7833b.f7533e;
        String str = aVar.f7455c.f7746c;
        String str2 = aVar2.f7455c.f7746c;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        if (aVar.j() != aVar2.j() || !aVar.f7457e.getVersionID().equals(aVar2.f7457e.getVersionID())) {
            return false;
        }
        String strM = this.f7833b.f7531c.q().m();
        String strM2 = s1Var.f7833b.f7531c.q().m();
        if (strM == null ? strM2 == null : strM.equals(strM2)) {
            return this.f7833b.f7531c.Y() == s1Var.f7833b.f7531c.Y();
        }
        return false;
    }

    public final int hashCode() {
        f0<AccidentReportDriver> f0Var = this.f7833b;
        String str = f0Var.f7533e.f7455c.f7746c;
        String strM = f0Var.f7531c.q().m();
        long jY = this.f7833b.f7531c.Y();
        return ((((527 + (str != null ? str.hashCode() : 0)) * 31) + (strM != null ? strM.hashCode() : 0)) * 31) + ((int) ((jY >>> 32) ^ jY));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportDriver, io.realm.t1
    /* renamed from: realmGet$birthDate */
    public final String getBirthDate() {
        this.f7833b.f7533e.b();
        return this.f7833b.f7531c.R(this.f7832a.f7836h);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportDriver, io.realm.t1
    /* renamed from: realmGet$createdDate */
    public final String getCreatedDate() {
        this.f7833b.f7533e.b();
        return this.f7833b.f7531c.R(this.f7832a.f7840l);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportDriver, io.realm.t1
    /* renamed from: realmGet$id */
    public final String getId() {
        this.f7833b.f7533e.b();
        return this.f7833b.f7531c.R(this.f7832a.f7834e);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportDriver, io.realm.t1
    /* renamed from: realmGet$identityNumber */
    public final String getIdentityNumber() {
        this.f7833b.f7533e.b();
        return this.f7833b.f7531c.R(this.f7832a.f7838j);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportDriver, io.realm.t1
    /* renamed from: realmGet$identityType */
    public final String getIdentityType() {
        this.f7833b.f7533e.b();
        return this.f7833b.f7531c.R(this.f7832a.f7839k);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportDriver, io.realm.t1
    /* renamed from: realmGet$name */
    public final String getName() {
        this.f7833b.f7533e.b();
        return this.f7833b.f7531c.R(this.f7832a.f);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportDriver, io.realm.t1
    /* renamed from: realmGet$phoneNumber */
    public final String getPhoneNumber() {
        this.f7833b.f7533e.b();
        return this.f7833b.f7531c.R(this.f7832a.f7837i);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportDriver, io.realm.t1
    /* renamed from: realmGet$surName */
    public final String getSurName() {
        this.f7833b.f7533e.b();
        return this.f7833b.f7531c.R(this.f7832a.f7835g);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportDriver, io.realm.t1
    /* renamed from: realmGet$updatedDate */
    public final String getUpdatedDate() {
        this.f7833b.f7533e.b();
        return this.f7833b.f7531c.R(this.f7832a.f7841m);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportDriver
    public final void realmSet$birthDate(String str) {
        f0<AccidentReportDriver> f0Var = this.f7833b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7833b.f7531c.M(this.f7832a.f7836h);
                return;
            } else {
                this.f7833b.f7531c.o(this.f7832a.f7836h, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7832a.f7836h, pVar.Y());
            } else {
                pVar.q().x(this.f7832a.f7836h, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportDriver
    public final void realmSet$createdDate(String str) {
        f0<AccidentReportDriver> f0Var = this.f7833b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7833b.f7531c.M(this.f7832a.f7840l);
                return;
            } else {
                this.f7833b.f7531c.o(this.f7832a.f7840l, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7832a.f7840l, pVar.Y());
            } else {
                pVar.q().x(this.f7832a.f7840l, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportDriver
    public final void realmSet$id(String str) {
        f0<AccidentReportDriver> f0Var = this.f7833b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7833b.f7531c.M(this.f7832a.f7834e);
                return;
            } else {
                this.f7833b.f7531c.o(this.f7832a.f7834e, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7832a.f7834e, pVar.Y());
            } else {
                pVar.q().x(this.f7832a.f7834e, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportDriver
    public final void realmSet$identityNumber(String str) {
        f0<AccidentReportDriver> f0Var = this.f7833b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7833b.f7531c.M(this.f7832a.f7838j);
                return;
            } else {
                this.f7833b.f7531c.o(this.f7832a.f7838j, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7832a.f7838j, pVar.Y());
            } else {
                pVar.q().x(this.f7832a.f7838j, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportDriver
    public final void realmSet$identityType(String str) {
        f0<AccidentReportDriver> f0Var = this.f7833b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7833b.f7531c.M(this.f7832a.f7839k);
                return;
            } else {
                this.f7833b.f7531c.o(this.f7832a.f7839k, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7832a.f7839k, pVar.Y());
            } else {
                pVar.q().x(this.f7832a.f7839k, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportDriver
    public final void realmSet$name(String str) {
        f0<AccidentReportDriver> f0Var = this.f7833b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7833b.f7531c.M(this.f7832a.f);
                return;
            } else {
                this.f7833b.f7531c.o(this.f7832a.f, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7832a.f, pVar.Y());
            } else {
                pVar.q().x(this.f7832a.f, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportDriver
    public final void realmSet$phoneNumber(String str) {
        f0<AccidentReportDriver> f0Var = this.f7833b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7833b.f7531c.M(this.f7832a.f7837i);
                return;
            } else {
                this.f7833b.f7531c.o(this.f7832a.f7837i, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7832a.f7837i, pVar.Y());
            } else {
                pVar.q().x(this.f7832a.f7837i, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportDriver
    public final void realmSet$surName(String str) {
        f0<AccidentReportDriver> f0Var = this.f7833b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7833b.f7531c.M(this.f7832a.f7835g);
                return;
            } else {
                this.f7833b.f7531c.o(this.f7832a.f7835g, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7832a.f7835g, pVar.Y());
            } else {
                pVar.q().x(this.f7832a.f7835g, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportDriver
    public final void realmSet$updatedDate(String str) {
        f0<AccidentReportDriver> f0Var = this.f7833b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7833b.f7531c.M(this.f7832a.f7841m);
                return;
            } else {
                this.f7833b.f7531c.o(this.f7832a.f7841m, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7832a.f7841m, pVar.Y());
            } else {
                pVar.q().x(this.f7832a.f7841m, pVar.Y(), str);
            }
        }
    }

    public final String toString() {
        if (!v0.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb2 = new StringBuilder("AccidentReportDriver = proxy[{id:");
        sb2.append(getId() != null ? getId() : "null");
        sb2.append("},{name:");
        sb2.append(getName() != null ? getName() : "null");
        sb2.append("},{surName:");
        sb2.append(getSurName() != null ? getSurName() : "null");
        sb2.append("},{birthDate:");
        sb2.append(getBirthDate() != null ? getBirthDate() : "null");
        sb2.append("},{phoneNumber:");
        sb2.append(getPhoneNumber() != null ? getPhoneNumber() : "null");
        sb2.append("},{identityNumber:");
        sb2.append(getIdentityNumber() != null ? getIdentityNumber() : "null");
        sb2.append("},{identityType:");
        sb2.append(getIdentityType() != null ? getIdentityType() : "null");
        sb2.append("},{createdDate:");
        sb2.append(getCreatedDate() != null ? getCreatedDate() : "null");
        sb2.append("},{updatedDate:");
        return androidx.camera.camera2.internal.c.h(sb2, getUpdatedDate() != null ? getUpdatedDate() : "null", "}]");
    }
}
