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
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportLocation;

/* loaded from: classes2.dex */
public final class u1 extends AccidentReportLocation implements io.realm.internal.n {

    /* renamed from: c, reason: collision with root package name */
    public static final OsObjectSchemaInfo f7849c;

    /* renamed from: a, reason: collision with root package name */
    public a f7850a;

    /* renamed from: b, reason: collision with root package name */
    public f0<AccidentReportLocation> f7851b;

    public static final class a extends io.realm.internal.c {

        /* renamed from: e, reason: collision with root package name */
        public long f7852e;
        public long f;

        /* renamed from: g, reason: collision with root package name */
        public long f7853g;

        /* renamed from: h, reason: collision with root package name */
        public long f7854h;

        /* renamed from: i, reason: collision with root package name */
        public long f7855i;

        /* renamed from: j, reason: collision with root package name */
        public long f7856j;

        /* renamed from: k, reason: collision with root package name */
        public long f7857k;

        /* renamed from: l, reason: collision with root package name */
        public long f7858l;

        /* renamed from: m, reason: collision with root package name */
        public long f7859m;

        public a(OsSchemaInfo osSchemaInfo) {
            super(9, true);
            OsObjectSchemaInfo osObjectSchemaInfoA = osSchemaInfo.a("AccidentReportLocation");
            this.f7852e = a("id", "id", osObjectSchemaInfoA);
            this.f = a("deviceAddress", "deviceAddress", osObjectSchemaInfoA);
            this.f7853g = a("deviceLatitude", "deviceLatitude", osObjectSchemaInfoA);
            this.f7854h = a("deviceLongitude", "deviceLongitude", osObjectSchemaInfoA);
            this.f7855i = a("accidentAddress", "accidentAddress", osObjectSchemaInfoA);
            this.f7856j = a("accidentLatitude", "accidentLatitude", osObjectSchemaInfoA);
            this.f7857k = a("accidentLongitude", "accidentLongitude", osObjectSchemaInfoA);
            this.f7858l = a("updatedDate", "updatedDate", osObjectSchemaInfoA);
            this.f7859m = a("radius", "radius", osObjectSchemaInfoA);
        }

        @Override // io.realm.internal.c
        public final void b(io.realm.internal.c cVar, io.realm.internal.c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f7852e = aVar.f7852e;
            aVar2.f = aVar.f;
            aVar2.f7853g = aVar.f7853g;
            aVar2.f7854h = aVar.f7854h;
            aVar2.f7855i = aVar.f7855i;
            aVar2.f7856j = aVar.f7856j;
            aVar2.f7857k = aVar.f7857k;
            aVar2.f7858l = aVar.f7858l;
            aVar2.f7859m = aVar.f7859m;
        }
    }

    static {
        OsObjectSchemaInfo.a aVar = new OsObjectSchemaInfo.a("AccidentReportLocation", true, 9);
        RealmFieldType realmFieldType = RealmFieldType.STRING;
        aVar.b("id", realmFieldType, false, false, false);
        aVar.b("deviceAddress", realmFieldType, false, false, false);
        RealmFieldType realmFieldType2 = RealmFieldType.DOUBLE;
        aVar.b("deviceLatitude", realmFieldType2, false, false, false);
        aVar.b("deviceLongitude", realmFieldType2, false, false, false);
        aVar.b("accidentAddress", realmFieldType, false, false, false);
        aVar.b("accidentLatitude", realmFieldType2, false, false, false);
        aVar.b("accidentLongitude", realmFieldType2, false, false, false);
        aVar.b("updatedDate", realmFieldType, false, false, false);
        aVar.b("radius", RealmFieldType.INTEGER, false, false, false);
        f7849c = aVar.c();
    }

    public u1() {
        this.f7851b.c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static AccidentReportLocation c(g0 g0Var, a aVar, AccidentReportLocation accidentReportLocation, HashMap map, Set set) {
        if ((accidentReportLocation instanceof io.realm.internal.n) && !v0.isFrozen(accidentReportLocation)) {
            io.realm.internal.n nVar = (io.realm.internal.n) accidentReportLocation;
            if (nVar.b().f7533e != null) {
                io.realm.a aVar2 = nVar.b().f7533e;
                if (aVar2.f7454b != g0Var.f7454b) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                }
                if (aVar2.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                    return accidentReportLocation;
                }
            }
        }
        io.realm.a.f7452h.get();
        s0 s0Var = (io.realm.internal.n) map.get(accidentReportLocation);
        if (s0Var != null) {
            return (AccidentReportLocation) s0Var;
        }
        s0 s0Var2 = (io.realm.internal.n) map.get(accidentReportLocation);
        if (s0Var2 != null) {
            return (AccidentReportLocation) s0Var2;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(g0Var.v(AccidentReportLocation.class), set);
        osObjectBuilder.f(aVar.f7852e, accidentReportLocation.getId());
        osObjectBuilder.f(aVar.f, accidentReportLocation.getDeviceAddress());
        osObjectBuilder.b(aVar.f7853g, accidentReportLocation.getDeviceLatitude());
        osObjectBuilder.b(aVar.f7854h, accidentReportLocation.getDeviceLongitude());
        osObjectBuilder.f(aVar.f7855i, accidentReportLocation.getAccidentAddress());
        osObjectBuilder.b(aVar.f7856j, accidentReportLocation.getAccidentLatitude());
        osObjectBuilder.b(aVar.f7857k, accidentReportLocation.getAccidentLongitude());
        osObjectBuilder.f(aVar.f7858l, accidentReportLocation.getUpdatedDate());
        osObjectBuilder.c(aVar.f7859m, accidentReportLocation.getRadius());
        u1 u1VarE = e(g0Var, osObjectBuilder.g());
        map.put(accidentReportLocation, u1VarE);
        return u1VarE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void d(g0 g0Var, Table table, long j10, long j11, AccidentReportLocation accidentReportLocation, HashMap map) {
        if ((accidentReportLocation instanceof io.realm.internal.n) && !v0.isFrozen(accidentReportLocation)) {
            io.realm.internal.n nVar = (io.realm.internal.n) accidentReportLocation;
            if (nVar.b().f7533e != null && nVar.b().f7533e.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                nVar.b().f7531c.Y();
                return;
            }
        }
        long j12 = g0Var.v(AccidentReportLocation.class).f7633a;
        a aVar = (a) g0Var.f7539j.a(AccidentReportLocation.class);
        long jCreateEmbeddedObject = OsObject.createEmbeddedObject(table, j11, j10);
        map.put(accidentReportLocation, Long.valueOf(jCreateEmbeddedObject));
        String id2 = accidentReportLocation.getId();
        long j13 = aVar.f7852e;
        if (id2 != null) {
            Table.nativeSetString(j12, j13, jCreateEmbeddedObject, id2, false);
        } else {
            Table.nativeSetNull(j12, j13, jCreateEmbeddedObject, false);
        }
        String deviceAddress = accidentReportLocation.getDeviceAddress();
        long j14 = aVar.f;
        if (deviceAddress != null) {
            Table.nativeSetString(j12, j14, jCreateEmbeddedObject, deviceAddress, false);
        } else {
            Table.nativeSetNull(j12, j14, jCreateEmbeddedObject, false);
        }
        Double deviceLatitude = accidentReportLocation.getDeviceLatitude();
        long j15 = aVar.f7853g;
        if (deviceLatitude != null) {
            Table.nativeSetDouble(j12, j15, jCreateEmbeddedObject, deviceLatitude.doubleValue(), false);
        } else {
            Table.nativeSetNull(j12, j15, jCreateEmbeddedObject, false);
        }
        Double deviceLongitude = accidentReportLocation.getDeviceLongitude();
        long j16 = aVar.f7854h;
        if (deviceLongitude != null) {
            Table.nativeSetDouble(j12, j16, jCreateEmbeddedObject, deviceLongitude.doubleValue(), false);
        } else {
            Table.nativeSetNull(j12, j16, jCreateEmbeddedObject, false);
        }
        String accidentAddress = accidentReportLocation.getAccidentAddress();
        long j17 = aVar.f7855i;
        if (accidentAddress != null) {
            Table.nativeSetString(j12, j17, jCreateEmbeddedObject, accidentAddress, false);
        } else {
            Table.nativeSetNull(j12, j17, jCreateEmbeddedObject, false);
        }
        Double accidentLatitude = accidentReportLocation.getAccidentLatitude();
        long j18 = aVar.f7856j;
        if (accidentLatitude != null) {
            Table.nativeSetDouble(j12, j18, jCreateEmbeddedObject, accidentLatitude.doubleValue(), false);
        } else {
            Table.nativeSetNull(j12, j18, jCreateEmbeddedObject, false);
        }
        Double accidentLongitude = accidentReportLocation.getAccidentLongitude();
        long j19 = aVar.f7857k;
        if (accidentLongitude != null) {
            Table.nativeSetDouble(j12, j19, jCreateEmbeddedObject, accidentLongitude.doubleValue(), false);
        } else {
            Table.nativeSetNull(j12, j19, jCreateEmbeddedObject, false);
        }
        String updatedDate = accidentReportLocation.getUpdatedDate();
        long j20 = aVar.f7858l;
        if (updatedDate != null) {
            Table.nativeSetString(j12, j20, jCreateEmbeddedObject, updatedDate, false);
        } else {
            Table.nativeSetNull(j12, j20, jCreateEmbeddedObject, false);
        }
        Integer radius = accidentReportLocation.getRadius();
        if (radius != null) {
            Table.nativeSetLong(j12, aVar.f7859m, jCreateEmbeddedObject, radius.longValue(), false);
        } else {
            Table.nativeSetNull(j12, aVar.f7859m, jCreateEmbeddedObject, false);
        }
    }

    public static u1 e(io.realm.a aVar, UncheckedRow uncheckedRow) {
        a.b bVar = io.realm.a.f7452h.get();
        bVar.b(aVar, uncheckedRow, aVar.i().a(AccidentReportLocation.class), false, Collections.emptyList());
        u1 u1Var = new u1();
        bVar.a();
        return u1Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void f(g0 g0Var, AccidentReportLocation accidentReportLocation, AccidentReportLocation accidentReportLocation2, Set set) {
        a aVar = (a) g0Var.f7539j.a(AccidentReportLocation.class);
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(g0Var.v(AccidentReportLocation.class), set);
        osObjectBuilder.f(aVar.f7852e, accidentReportLocation.getId());
        osObjectBuilder.f(aVar.f, accidentReportLocation.getDeviceAddress());
        osObjectBuilder.b(aVar.f7853g, accidentReportLocation.getDeviceLatitude());
        osObjectBuilder.b(aVar.f7854h, accidentReportLocation.getDeviceLongitude());
        osObjectBuilder.f(aVar.f7855i, accidentReportLocation.getAccidentAddress());
        osObjectBuilder.b(aVar.f7856j, accidentReportLocation.getAccidentLatitude());
        osObjectBuilder.b(aVar.f7857k, accidentReportLocation.getAccidentLongitude());
        osObjectBuilder.f(aVar.f7858l, accidentReportLocation.getUpdatedDate());
        osObjectBuilder.c(aVar.f7859m, accidentReportLocation.getRadius());
        osObjectBuilder.i((io.realm.internal.n) accidentReportLocation2);
    }

    @Override // io.realm.internal.n
    public final void a() {
        if (this.f7851b != null) {
            return;
        }
        a.b bVar = io.realm.a.f7452h.get();
        this.f7850a = (a) bVar.f7461c;
        f0<AccidentReportLocation> f0Var = new f0<>(this);
        this.f7851b = f0Var;
        f0Var.f7533e = bVar.f7459a;
        f0Var.f7531c = bVar.f7460b;
        f0Var.f = bVar.f7462d;
        f0Var.f7534g = bVar.f7463e;
    }

    @Override // io.realm.internal.n
    public final f0<?> b() {
        return this.f7851b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || u1.class != obj.getClass()) {
            return false;
        }
        u1 u1Var = (u1) obj;
        io.realm.a aVar = this.f7851b.f7533e;
        io.realm.a aVar2 = u1Var.f7851b.f7533e;
        String str = aVar.f7455c.f7746c;
        String str2 = aVar2.f7455c.f7746c;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        if (aVar.j() != aVar2.j() || !aVar.f7457e.getVersionID().equals(aVar2.f7457e.getVersionID())) {
            return false;
        }
        String strM = this.f7851b.f7531c.q().m();
        String strM2 = u1Var.f7851b.f7531c.q().m();
        if (strM == null ? strM2 == null : strM.equals(strM2)) {
            return this.f7851b.f7531c.Y() == u1Var.f7851b.f7531c.Y();
        }
        return false;
    }

    public final int hashCode() {
        f0<AccidentReportLocation> f0Var = this.f7851b;
        String str = f0Var.f7533e.f7455c.f7746c;
        String strM = f0Var.f7531c.q().m();
        long jY = this.f7851b.f7531c.Y();
        return ((((527 + (str != null ? str.hashCode() : 0)) * 31) + (strM != null ? strM.hashCode() : 0)) * 31) + ((int) ((jY >>> 32) ^ jY));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportLocation, io.realm.v1
    /* renamed from: realmGet$accidentAddress */
    public final String getAccidentAddress() {
        this.f7851b.f7533e.b();
        return this.f7851b.f7531c.R(this.f7850a.f7855i);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportLocation, io.realm.v1
    /* renamed from: realmGet$accidentLatitude */
    public final Double getAccidentLatitude() {
        this.f7851b.f7533e.b();
        if (this.f7851b.f7531c.C(this.f7850a.f7856j)) {
            return null;
        }
        return Double.valueOf(this.f7851b.f7531c.O(this.f7850a.f7856j));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportLocation, io.realm.v1
    /* renamed from: realmGet$accidentLongitude */
    public final Double getAccidentLongitude() {
        this.f7851b.f7533e.b();
        if (this.f7851b.f7531c.C(this.f7850a.f7857k)) {
            return null;
        }
        return Double.valueOf(this.f7851b.f7531c.O(this.f7850a.f7857k));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportLocation, io.realm.v1
    /* renamed from: realmGet$deviceAddress */
    public final String getDeviceAddress() {
        this.f7851b.f7533e.b();
        return this.f7851b.f7531c.R(this.f7850a.f);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportLocation, io.realm.v1
    /* renamed from: realmGet$deviceLatitude */
    public final Double getDeviceLatitude() {
        this.f7851b.f7533e.b();
        if (this.f7851b.f7531c.C(this.f7850a.f7853g)) {
            return null;
        }
        return Double.valueOf(this.f7851b.f7531c.O(this.f7850a.f7853g));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportLocation, io.realm.v1
    /* renamed from: realmGet$deviceLongitude */
    public final Double getDeviceLongitude() {
        this.f7851b.f7533e.b();
        if (this.f7851b.f7531c.C(this.f7850a.f7854h)) {
            return null;
        }
        return Double.valueOf(this.f7851b.f7531c.O(this.f7850a.f7854h));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportLocation, io.realm.v1
    /* renamed from: realmGet$id */
    public final String getId() {
        this.f7851b.f7533e.b();
        return this.f7851b.f7531c.R(this.f7850a.f7852e);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportLocation, io.realm.v1
    /* renamed from: realmGet$radius */
    public final Integer getRadius() {
        this.f7851b.f7533e.b();
        if (this.f7851b.f7531c.C(this.f7850a.f7859m)) {
            return null;
        }
        return Integer.valueOf((int) this.f7851b.f7531c.y(this.f7850a.f7859m));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportLocation, io.realm.v1
    /* renamed from: realmGet$updatedDate */
    public final String getUpdatedDate() {
        this.f7851b.f7533e.b();
        return this.f7851b.f7531c.R(this.f7850a.f7858l);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportLocation
    public final void realmSet$accidentAddress(String str) {
        f0<AccidentReportLocation> f0Var = this.f7851b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7851b.f7531c.M(this.f7850a.f7855i);
                return;
            } else {
                this.f7851b.f7531c.o(this.f7850a.f7855i, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7850a.f7855i, pVar.Y());
            } else {
                pVar.q().x(this.f7850a.f7855i, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportLocation
    public final void realmSet$accidentLatitude(Double d10) {
        f0<AccidentReportLocation> f0Var = this.f7851b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            f0<AccidentReportLocation> f0Var2 = this.f7851b;
            if (d10 == null) {
                f0Var2.f7531c.M(this.f7850a.f7856j);
                return;
            } else {
                f0Var2.f7531c.W(this.f7850a.f7856j, d10.doubleValue());
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (d10 == null) {
                pVar.q().w(this.f7850a.f7856j, pVar.Y());
            } else {
                pVar.q().t(this.f7850a.f7856j, pVar.Y(), d10.doubleValue());
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportLocation
    public final void realmSet$accidentLongitude(Double d10) {
        f0<AccidentReportLocation> f0Var = this.f7851b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            f0<AccidentReportLocation> f0Var2 = this.f7851b;
            if (d10 == null) {
                f0Var2.f7531c.M(this.f7850a.f7857k);
                return;
            } else {
                f0Var2.f7531c.W(this.f7850a.f7857k, d10.doubleValue());
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (d10 == null) {
                pVar.q().w(this.f7850a.f7857k, pVar.Y());
            } else {
                pVar.q().t(this.f7850a.f7857k, pVar.Y(), d10.doubleValue());
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportLocation
    public final void realmSet$deviceAddress(String str) {
        f0<AccidentReportLocation> f0Var = this.f7851b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7851b.f7531c.M(this.f7850a.f);
                return;
            } else {
                this.f7851b.f7531c.o(this.f7850a.f, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7850a.f, pVar.Y());
            } else {
                pVar.q().x(this.f7850a.f, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportLocation
    public final void realmSet$deviceLatitude(Double d10) {
        f0<AccidentReportLocation> f0Var = this.f7851b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            f0<AccidentReportLocation> f0Var2 = this.f7851b;
            if (d10 == null) {
                f0Var2.f7531c.M(this.f7850a.f7853g);
                return;
            } else {
                f0Var2.f7531c.W(this.f7850a.f7853g, d10.doubleValue());
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (d10 == null) {
                pVar.q().w(this.f7850a.f7853g, pVar.Y());
            } else {
                pVar.q().t(this.f7850a.f7853g, pVar.Y(), d10.doubleValue());
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportLocation
    public final void realmSet$deviceLongitude(Double d10) {
        f0<AccidentReportLocation> f0Var = this.f7851b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            f0<AccidentReportLocation> f0Var2 = this.f7851b;
            if (d10 == null) {
                f0Var2.f7531c.M(this.f7850a.f7854h);
                return;
            } else {
                f0Var2.f7531c.W(this.f7850a.f7854h, d10.doubleValue());
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (d10 == null) {
                pVar.q().w(this.f7850a.f7854h, pVar.Y());
            } else {
                pVar.q().t(this.f7850a.f7854h, pVar.Y(), d10.doubleValue());
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportLocation
    public final void realmSet$id(String str) {
        f0<AccidentReportLocation> f0Var = this.f7851b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7851b.f7531c.M(this.f7850a.f7852e);
                return;
            } else {
                this.f7851b.f7531c.o(this.f7850a.f7852e, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7850a.f7852e, pVar.Y());
            } else {
                pVar.q().x(this.f7850a.f7852e, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportLocation
    public final void realmSet$radius(Integer num) {
        f0<AccidentReportLocation> f0Var = this.f7851b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            f0<AccidentReportLocation> f0Var2 = this.f7851b;
            if (num == null) {
                f0Var2.f7531c.M(this.f7850a.f7859m);
                return;
            } else {
                f0Var2.f7531c.A(this.f7850a.f7859m, num.intValue());
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (num == null) {
                pVar.q().w(this.f7850a.f7859m, pVar.Y());
            } else {
                pVar.q().v(this.f7850a.f7859m, pVar.Y(), num.intValue());
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportLocation
    public final void realmSet$updatedDate(String str) {
        f0<AccidentReportLocation> f0Var = this.f7851b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7851b.f7531c.M(this.f7850a.f7858l);
                return;
            } else {
                this.f7851b.f7531c.o(this.f7850a.f7858l, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7850a.f7858l, pVar.Y());
            } else {
                pVar.q().x(this.f7850a.f7858l, pVar.Y(), str);
            }
        }
    }

    public final String toString() {
        if (!v0.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb2 = new StringBuilder("AccidentReportLocation = proxy[{id:");
        sb2.append(getId() != null ? getId() : "null");
        sb2.append("},{deviceAddress:");
        sb2.append(getDeviceAddress() != null ? getDeviceAddress() : "null");
        sb2.append("},{deviceLatitude:");
        sb2.append(getDeviceLatitude() != null ? getDeviceLatitude() : "null");
        sb2.append("},{deviceLongitude:");
        sb2.append(getDeviceLongitude() != null ? getDeviceLongitude() : "null");
        sb2.append("},{accidentAddress:");
        sb2.append(getAccidentAddress() != null ? getAccidentAddress() : "null");
        sb2.append("},{accidentLatitude:");
        sb2.append(getAccidentLatitude() != null ? getAccidentLatitude() : "null");
        sb2.append("},{accidentLongitude:");
        sb2.append(getAccidentLongitude() != null ? getAccidentLongitude() : "null");
        sb2.append("},{updatedDate:");
        sb2.append(getUpdatedDate() != null ? getUpdatedDate() : "null");
        sb2.append("},{radius:");
        return androidx.camera.core.impl.a.e(sb2, getRadius() != null ? getRadius() : "null", "}]");
    }
}
