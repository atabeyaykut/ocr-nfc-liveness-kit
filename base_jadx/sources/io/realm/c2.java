package io.realm;

import io.realm.a;
import io.realm.a2;
import io.realm.internal.OsList;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.Table;
import io.realm.internal.UncheckedRow;
import io.realm.internal.objectstore.OsObjectBuilder;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportPolicy;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportVehicle;

/* loaded from: classes2.dex */
public final class c2 extends AccidentReportVehicle implements io.realm.internal.n {

    /* renamed from: d, reason: collision with root package name */
    public static final OsObjectSchemaInfo f7478d;

    /* renamed from: a, reason: collision with root package name */
    public a f7479a;

    /* renamed from: b, reason: collision with root package name */
    public f0<AccidentReportVehicle> f7480b;

    /* renamed from: c, reason: collision with root package name */
    public q0<AccidentReportPolicy> f7481c;

    public static final class a extends io.realm.internal.c {

        /* renamed from: e, reason: collision with root package name */
        public long f7482e;
        public long f;

        /* renamed from: g, reason: collision with root package name */
        public long f7483g;

        /* renamed from: h, reason: collision with root package name */
        public long f7484h;

        /* renamed from: i, reason: collision with root package name */
        public long f7485i;

        /* renamed from: j, reason: collision with root package name */
        public long f7486j;

        /* renamed from: k, reason: collision with root package name */
        public long f7487k;

        /* renamed from: l, reason: collision with root package name */
        public long f7488l;

        /* renamed from: m, reason: collision with root package name */
        public long f7489m;

        public a(OsSchemaInfo osSchemaInfo) {
            super(9, true);
            OsObjectSchemaInfo osObjectSchemaInfoA = osSchemaInfo.a("AccidentReportVehicle");
            this.f7482e = a("id", "id", osObjectSchemaInfoA);
            this.f = a("plateCityCode", "plateCityCode", osObjectSchemaInfoA);
            this.f7483g = a("plateNumber", "plateNumber", osObjectSchemaInfoA);
            this.f7484h = a("ownerDifferentFromDriver", "ownerDifferentFromDriver", osObjectSchemaInfoA);
            this.f7485i = a("documentSerialCode", "documentSerialCode", osObjectSchemaInfoA);
            this.f7486j = a("documentSerialNumber", "documentSerialNumber", osObjectSchemaInfoA);
            this.f7487k = a("ownerIdentityNumber", "ownerIdentityNumber", osObjectSchemaInfoA);
            this.f7488l = a("updatedDate", "updatedDate", osObjectSchemaInfoA);
            this.f7489m = a("policies", "policies", osObjectSchemaInfoA);
        }

        @Override // io.realm.internal.c
        public final void b(io.realm.internal.c cVar, io.realm.internal.c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f7482e = aVar.f7482e;
            aVar2.f = aVar.f;
            aVar2.f7483g = aVar.f7483g;
            aVar2.f7484h = aVar.f7484h;
            aVar2.f7485i = aVar.f7485i;
            aVar2.f7486j = aVar.f7486j;
            aVar2.f7487k = aVar.f7487k;
            aVar2.f7488l = aVar.f7488l;
            aVar2.f7489m = aVar.f7489m;
        }
    }

    static {
        OsObjectSchemaInfo.a aVar = new OsObjectSchemaInfo.a("AccidentReportVehicle", true, 9);
        RealmFieldType realmFieldType = RealmFieldType.STRING;
        aVar.b("id", realmFieldType, false, false, false);
        aVar.b("plateCityCode", realmFieldType, false, false, false);
        aVar.b("plateNumber", realmFieldType, false, false, false);
        aVar.b("ownerDifferentFromDriver", RealmFieldType.BOOLEAN, false, false, true);
        aVar.b("documentSerialCode", realmFieldType, false, false, false);
        aVar.b("documentSerialNumber", realmFieldType, false, false, false);
        aVar.b("ownerIdentityNumber", realmFieldType, false, false, false);
        aVar.b("updatedDate", realmFieldType, false, false, false);
        aVar.a("policies", RealmFieldType.LIST, "AccidentReportPolicy");
        f7478d = aVar.c();
    }

    public c2() {
        this.f7480b.c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void c(g0 g0Var, Table table, long j10, long j11, AccidentReportVehicle accidentReportVehicle, HashMap map) {
        long j12;
        if ((accidentReportVehicle instanceof io.realm.internal.n) && !v0.isFrozen(accidentReportVehicle)) {
            io.realm.internal.n nVar = (io.realm.internal.n) accidentReportVehicle;
            if (nVar.b().f7533e != null && nVar.b().f7533e.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                nVar.b().f7531c.Y();
                return;
            }
        }
        Table tableV = g0Var.v(AccidentReportVehicle.class);
        long j13 = tableV.f7633a;
        u uVar = g0Var.f7539j;
        a aVar = (a) uVar.a(AccidentReportVehicle.class);
        long jCreateEmbeddedObject = OsObject.createEmbeddedObject(table, j11, j10);
        map.put(accidentReportVehicle, Long.valueOf(jCreateEmbeddedObject));
        String id2 = accidentReportVehicle.getId();
        if (id2 != null) {
            j12 = jCreateEmbeddedObject;
            Table.nativeSetString(j13, aVar.f7482e, jCreateEmbeddedObject, id2, false);
        } else {
            j12 = jCreateEmbeddedObject;
            Table.nativeSetNull(j13, aVar.f7482e, j12, false);
        }
        String plateCityCode = accidentReportVehicle.getPlateCityCode();
        long j14 = aVar.f;
        if (plateCityCode != null) {
            Table.nativeSetString(j13, j14, j12, plateCityCode, false);
        } else {
            Table.nativeSetNull(j13, j14, j12, false);
        }
        String plateNumber = accidentReportVehicle.getPlateNumber();
        long j15 = aVar.f7483g;
        if (plateNumber != null) {
            Table.nativeSetString(j13, j15, j12, plateNumber, false);
        } else {
            Table.nativeSetNull(j13, j15, j12, false);
        }
        Table.nativeSetBoolean(j13, aVar.f7484h, j12, accidentReportVehicle.getOwnerDifferentFromDriver(), false);
        String documentSerialCode = accidentReportVehicle.getDocumentSerialCode();
        long j16 = aVar.f7485i;
        if (documentSerialCode != null) {
            Table.nativeSetString(j13, j16, j12, documentSerialCode, false);
        } else {
            Table.nativeSetNull(j13, j16, j12, false);
        }
        String documentSerialNumber = accidentReportVehicle.getDocumentSerialNumber();
        long j17 = aVar.f7486j;
        if (documentSerialNumber != null) {
            Table.nativeSetString(j13, j17, j12, documentSerialNumber, false);
        } else {
            Table.nativeSetNull(j13, j17, j12, false);
        }
        String ownerIdentityNumber = accidentReportVehicle.getOwnerIdentityNumber();
        long j18 = aVar.f7487k;
        if (ownerIdentityNumber != null) {
            Table.nativeSetString(j13, j18, j12, ownerIdentityNumber, false);
        } else {
            Table.nativeSetNull(j13, j18, j12, false);
        }
        String updatedDate = accidentReportVehicle.getUpdatedDate();
        long j19 = aVar.f7488l;
        if (updatedDate != null) {
            Table.nativeSetString(j13, j19, j12, updatedDate, false);
        } else {
            Table.nativeSetNull(j13, j19, j12, false);
        }
        long j20 = j12;
        OsList osList = new OsList(tableV.o(j20), aVar.f7489m);
        q0<AccidentReportPolicy> policies = accidentReportVehicle.getPolicies();
        osList.I();
        if (policies != null) {
            Iterator<AccidentReportPolicy> it = policies.iterator();
            while (it.hasNext()) {
                AccidentReportPolicy next = it.next();
                Long l5 = (Long) map.get(next);
                if (l5 != null) {
                    throw new IllegalArgumentException("Embedded objects can only have one parent pointing to them. This object was already copied, so another object is pointing to it: " + l5.toString());
                }
                long j21 = aVar.f7489m;
                OsObjectSchemaInfo osObjectSchemaInfo = a2.f7466c;
                if ((next instanceof io.realm.internal.n) && !v0.isFrozen(next)) {
                    io.realm.internal.n nVar2 = (io.realm.internal.n) next;
                    if (nVar2.b().f7533e != null && nVar2.b().f7533e.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                        nVar2.b().f7531c.Y();
                    }
                }
                long j22 = g0Var.v(AccidentReportPolicy.class).f7633a;
                a2.a aVar2 = (a2.a) uVar.a(AccidentReportPolicy.class);
                long jCreateEmbeddedObject2 = OsObject.createEmbeddedObject(tableV, j20, j21);
                map.put(next, Long.valueOf(jCreateEmbeddedObject2));
                String id3 = next.getId();
                long j23 = aVar2.f7469e;
                if (id3 != null) {
                    Table.nativeSetString(j22, j23, jCreateEmbeddedObject2, id3, false);
                } else {
                    Table.nativeSetNull(j22, j23, jCreateEmbeddedObject2, false);
                }
                String productCode = next.getProductCode();
                long j24 = aVar2.f;
                if (productCode != null) {
                    Table.nativeSetString(j22, j24, jCreateEmbeddedObject2, productCode, false);
                } else {
                    Table.nativeSetNull(j22, j24, jCreateEmbeddedObject2, false);
                }
                String endDate = next.getEndDate();
                long j25 = aVar2.f7470g;
                if (endDate != null) {
                    Table.nativeSetString(j22, j25, jCreateEmbeddedObject2, endDate, false);
                } else {
                    Table.nativeSetNull(j22, j25, jCreateEmbeddedObject2, false);
                }
                String startDate = next.getStartDate();
                long j26 = aVar2.f7471h;
                if (startDate != null) {
                    Table.nativeSetString(j22, j26, jCreateEmbeddedObject2, startDate, false);
                } else {
                    Table.nativeSetNull(j22, j26, jCreateEmbeddedObject2, false);
                }
                String companyName = next.getCompanyName();
                long j27 = aVar2.f7472i;
                if (companyName != null) {
                    Table.nativeSetString(j22, j27, jCreateEmbeddedObject2, companyName, false);
                } else {
                    Table.nativeSetNull(j22, j27, jCreateEmbeddedObject2, false);
                }
            }
        }
    }

    public static c2 d(io.realm.a aVar, UncheckedRow uncheckedRow) {
        a.b bVar = io.realm.a.f7452h.get();
        bVar.b(aVar, uncheckedRow, aVar.i().a(AccidentReportVehicle.class), false, Collections.emptyList());
        c2 c2Var = new c2();
        bVar.a();
        return c2Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void e(g0 g0Var, AccidentReportVehicle accidentReportVehicle, AccidentReportVehicle accidentReportVehicle2, HashMap map, Set set) {
        a aVar = (a) g0Var.f7539j.a(AccidentReportVehicle.class);
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(g0Var.v(AccidentReportVehicle.class), set);
        osObjectBuilder.f(aVar.f7482e, accidentReportVehicle.getId());
        osObjectBuilder.f(aVar.f, accidentReportVehicle.getPlateCityCode());
        osObjectBuilder.f(aVar.f7483g, accidentReportVehicle.getPlateNumber());
        osObjectBuilder.a(aVar.f7484h, Boolean.valueOf(accidentReportVehicle.getOwnerDifferentFromDriver()));
        osObjectBuilder.f(aVar.f7485i, accidentReportVehicle.getDocumentSerialCode());
        osObjectBuilder.f(aVar.f7486j, accidentReportVehicle.getDocumentSerialNumber());
        osObjectBuilder.f(aVar.f7487k, accidentReportVehicle.getOwnerIdentityNumber());
        osObjectBuilder.f(aVar.f7488l, accidentReportVehicle.getUpdatedDate());
        q0<AccidentReportPolicy> policies = accidentReportVehicle.getPolicies();
        if (policies != null) {
            q0 q0Var = new q0();
            OsList osList = accidentReportVehicle2.getPolicies().f7793b.f7889b;
            osList.q();
            for (int r12 = 0; r12 < policies.size(); r12++) {
                AccidentReportPolicy accidentReportPolicy = policies.get(r12);
                if (((AccidentReportPolicy) map.get(accidentReportPolicy)) != null) {
                    throw new IllegalArgumentException("Embedded objects can only have one parent pointing to them. This object was already copied, so another object is pointing to it: cachepolicies.toString()");
                }
                a2 a2VarC = a2.c(g0Var, g0Var.v(AccidentReportPolicy.class).o(osList.n()));
                map.put(accidentReportPolicy, a2VarC);
                q0Var.add(a2VarC);
                new HashMap();
                a2.d(g0Var, accidentReportPolicy, a2VarC, Collections.EMPTY_SET);
            }
        } else {
            osObjectBuilder.e(aVar.f7489m, new q0());
        }
        osObjectBuilder.i((io.realm.internal.n) accidentReportVehicle2);
    }

    @Override // io.realm.internal.n
    public final void a() {
        if (this.f7480b != null) {
            return;
        }
        a.b bVar = io.realm.a.f7452h.get();
        this.f7479a = (a) bVar.f7461c;
        f0<AccidentReportVehicle> f0Var = new f0<>(this);
        this.f7480b = f0Var;
        f0Var.f7533e = bVar.f7459a;
        f0Var.f7531c = bVar.f7460b;
        f0Var.f = bVar.f7462d;
        f0Var.f7534g = bVar.f7463e;
    }

    @Override // io.realm.internal.n
    public final f0<?> b() {
        return this.f7480b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c2.class != obj.getClass()) {
            return false;
        }
        c2 c2Var = (c2) obj;
        io.realm.a aVar = this.f7480b.f7533e;
        io.realm.a aVar2 = c2Var.f7480b.f7533e;
        String str = aVar.f7455c.f7746c;
        String str2 = aVar2.f7455c.f7746c;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        if (aVar.j() != aVar2.j() || !aVar.f7457e.getVersionID().equals(aVar2.f7457e.getVersionID())) {
            return false;
        }
        String strM = this.f7480b.f7531c.q().m();
        String strM2 = c2Var.f7480b.f7531c.q().m();
        if (strM == null ? strM2 == null : strM.equals(strM2)) {
            return this.f7480b.f7531c.Y() == c2Var.f7480b.f7531c.Y();
        }
        return false;
    }

    public final int hashCode() {
        f0<AccidentReportVehicle> f0Var = this.f7480b;
        String str = f0Var.f7533e.f7455c.f7746c;
        String strM = f0Var.f7531c.q().m();
        long jY = this.f7480b.f7531c.Y();
        return ((((527 + (str != null ? str.hashCode() : 0)) * 31) + (strM != null ? strM.hashCode() : 0)) * 31) + ((int) ((jY >>> 32) ^ jY));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportVehicle, io.realm.d2
    /* renamed from: realmGet$documentSerialCode */
    public final String getDocumentSerialCode() {
        this.f7480b.f7533e.b();
        return this.f7480b.f7531c.R(this.f7479a.f7485i);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportVehicle, io.realm.d2
    /* renamed from: realmGet$documentSerialNumber */
    public final String getDocumentSerialNumber() {
        this.f7480b.f7533e.b();
        return this.f7480b.f7531c.R(this.f7479a.f7486j);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportVehicle, io.realm.d2
    /* renamed from: realmGet$id */
    public final String getId() {
        this.f7480b.f7533e.b();
        return this.f7480b.f7531c.R(this.f7479a.f7482e);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportVehicle, io.realm.d2
    /* renamed from: realmGet$ownerDifferentFromDriver */
    public final boolean getOwnerDifferentFromDriver() {
        this.f7480b.f7533e.b();
        return this.f7480b.f7531c.x(this.f7479a.f7484h);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportVehicle, io.realm.d2
    /* renamed from: realmGet$ownerIdentityNumber */
    public final String getOwnerIdentityNumber() {
        this.f7480b.f7533e.b();
        return this.f7480b.f7531c.R(this.f7479a.f7487k);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportVehicle, io.realm.d2
    /* renamed from: realmGet$plateCityCode */
    public final String getPlateCityCode() {
        this.f7480b.f7533e.b();
        return this.f7480b.f7531c.R(this.f7479a.f);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportVehicle, io.realm.d2
    /* renamed from: realmGet$plateNumber */
    public final String getPlateNumber() {
        this.f7480b.f7533e.b();
        return this.f7480b.f7531c.R(this.f7479a.f7483g);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportVehicle, io.realm.d2
    /* renamed from: realmGet$policies */
    public final q0<AccidentReportPolicy> getPolicies() {
        this.f7480b.f7533e.b();
        q0<AccidentReportPolicy> q0Var = this.f7481c;
        if (q0Var != null) {
            return q0Var;
        }
        q0<AccidentReportPolicy> q0Var2 = new q0<>(this.f7480b.f7533e, this.f7480b.f7531c.z(this.f7479a.f7489m), AccidentReportPolicy.class);
        this.f7481c = q0Var2;
        return q0Var2;
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportVehicle, io.realm.d2
    /* renamed from: realmGet$updatedDate */
    public final String getUpdatedDate() {
        this.f7480b.f7533e.b();
        return this.f7480b.f7531c.R(this.f7479a.f7488l);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportVehicle
    public final void realmSet$documentSerialCode(String str) {
        f0<AccidentReportVehicle> f0Var = this.f7480b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7480b.f7531c.M(this.f7479a.f7485i);
                return;
            } else {
                this.f7480b.f7531c.o(this.f7479a.f7485i, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7479a.f7485i, pVar.Y());
            } else {
                pVar.q().x(this.f7479a.f7485i, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportVehicle
    public final void realmSet$documentSerialNumber(String str) {
        f0<AccidentReportVehicle> f0Var = this.f7480b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7480b.f7531c.M(this.f7479a.f7486j);
                return;
            } else {
                this.f7480b.f7531c.o(this.f7479a.f7486j, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7479a.f7486j, pVar.Y());
            } else {
                pVar.q().x(this.f7479a.f7486j, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportVehicle
    public final void realmSet$id(String str) {
        f0<AccidentReportVehicle> f0Var = this.f7480b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7480b.f7531c.M(this.f7479a.f7482e);
                return;
            } else {
                this.f7480b.f7531c.o(this.f7479a.f7482e, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7479a.f7482e, pVar.Y());
            } else {
                pVar.q().x(this.f7479a.f7482e, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportVehicle
    public final void realmSet$ownerDifferentFromDriver(boolean z10) {
        f0<AccidentReportVehicle> f0Var = this.f7480b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            this.f7480b.f7531c.t(this.f7479a.f7484h, z10);
        } else if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            pVar.q().s(this.f7479a.f7484h, pVar.Y(), z10);
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportVehicle
    public final void realmSet$ownerIdentityNumber(String str) {
        f0<AccidentReportVehicle> f0Var = this.f7480b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7480b.f7531c.M(this.f7479a.f7487k);
                return;
            } else {
                this.f7480b.f7531c.o(this.f7479a.f7487k, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7479a.f7487k, pVar.Y());
            } else {
                pVar.q().x(this.f7479a.f7487k, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportVehicle
    public final void realmSet$plateCityCode(String str) {
        f0<AccidentReportVehicle> f0Var = this.f7480b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7480b.f7531c.M(this.f7479a.f);
                return;
            } else {
                this.f7480b.f7531c.o(this.f7479a.f, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7479a.f, pVar.Y());
            } else {
                pVar.q().x(this.f7479a.f, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportVehicle
    public final void realmSet$plateNumber(String str) {
        f0<AccidentReportVehicle> f0Var = this.f7480b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7480b.f7531c.M(this.f7479a.f7483g);
                return;
            } else {
                this.f7480b.f7531c.o(this.f7479a.f7483g, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7479a.f7483g, pVar.Y());
            } else {
                pVar.q().x(this.f7479a.f7483g, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportVehicle
    public final void realmSet$policies(q0<AccidentReportPolicy> q0Var) {
        f0<AccidentReportVehicle> f0Var = this.f7480b;
        int r22 = 0;
        if (f0Var.f7530b) {
            if (!f0Var.f || f0Var.f7534g.contains("policies")) {
                return;
            }
            if (q0Var != null && !q0Var.x()) {
                g0 g0Var = (g0) this.f7480b.f7533e;
                q0<AccidentReportPolicy> q0Var2 = new q0<>();
                Iterator<AccidentReportPolicy> it = q0Var.iterator();
                while (it.hasNext()) {
                    AccidentReportPolicy next = it.next();
                    if (next != null && !v0.isManaged(next)) {
                        next = (AccidentReportPolicy) g0Var.o(next, new v[0]);
                    }
                    q0Var2.add(next);
                }
                q0Var = q0Var2;
            }
        }
        this.f7480b.f7533e.b();
        OsList osListZ = this.f7480b.f7531c.z(this.f7479a.f7489m);
        if (q0Var != null && q0Var.size() == osListZ.W()) {
            int size = q0Var.size();
            while (r22 < size) {
                s0 s0Var = (AccidentReportPolicy) q0Var.get(r22);
                this.f7480b.a(s0Var);
                osListZ.T(r22, ((io.realm.internal.n) s0Var).b().f7531c.Y());
                r22++;
            }
            return;
        }
        osListZ.I();
        if (q0Var == null) {
            return;
        }
        int size2 = q0Var.size();
        while (r22 < size2) {
            s0 s0Var2 = (AccidentReportPolicy) q0Var.get(r22);
            this.f7480b.a(s0Var2);
            osListZ.k(((io.realm.internal.n) s0Var2).b().f7531c.Y());
            r22++;
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportVehicle
    public final void realmSet$updatedDate(String str) {
        f0<AccidentReportVehicle> f0Var = this.f7480b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7480b.f7531c.M(this.f7479a.f7488l);
                return;
            } else {
                this.f7480b.f7531c.o(this.f7479a.f7488l, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7479a.f7488l, pVar.Y());
            } else {
                pVar.q().x(this.f7479a.f7488l, pVar.Y(), str);
            }
        }
    }

    public final String toString() {
        if (!v0.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb2 = new StringBuilder("AccidentReportVehicle = proxy[{id:");
        sb2.append(getId() != null ? getId() : "null");
        sb2.append("},{plateCityCode:");
        sb2.append(getPlateCityCode() != null ? getPlateCityCode() : "null");
        sb2.append("},{plateNumber:");
        sb2.append(getPlateNumber() != null ? getPlateNumber() : "null");
        sb2.append("},{ownerDifferentFromDriver:");
        sb2.append(getOwnerDifferentFromDriver());
        sb2.append("},{documentSerialCode:");
        sb2.append(getDocumentSerialCode() != null ? getDocumentSerialCode() : "null");
        sb2.append("},{documentSerialNumber:");
        sb2.append(getDocumentSerialNumber() != null ? getDocumentSerialNumber() : "null");
        sb2.append("},{ownerIdentityNumber:");
        sb2.append(getOwnerIdentityNumber() != null ? getOwnerIdentityNumber() : "null");
        sb2.append("},{updatedDate:");
        sb2.append(getUpdatedDate() != null ? getUpdatedDate() : "null");
        sb2.append("},{policies:RealmList<AccidentReportPolicy>[");
        sb2.append(getPolicies().size());
        sb2.append("]}]");
        return sb2.toString();
    }
}
