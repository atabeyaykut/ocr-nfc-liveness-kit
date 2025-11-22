package io.realm;

import io.realm.a;
import io.realm.exceptions.RealmException;
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
import tr.gov.turkiye.edevlet.kapisi.data.city.CityModelRealm;

/* loaded from: classes2.dex */
public final class g1 extends CityModelRealm implements io.realm.internal.n {

    /* renamed from: c, reason: collision with root package name */
    public static final OsObjectSchemaInfo f7540c;

    /* renamed from: a, reason: collision with root package name */
    public a f7541a;

    /* renamed from: b, reason: collision with root package name */
    public f0<CityModelRealm> f7542b;

    public static final class a extends io.realm.internal.c {

        /* renamed from: e, reason: collision with root package name */
        public long f7543e;
        public long f;

        /* renamed from: g, reason: collision with root package name */
        public long f7544g;

        /* renamed from: h, reason: collision with root package name */
        public long f7545h;

        public a(OsSchemaInfo osSchemaInfo) {
            super(4, true);
            OsObjectSchemaInfo osObjectSchemaInfoA = osSchemaInfo.a("CityModelRealm");
            this.f7543e = a("cityId", "cityId", osObjectSchemaInfoA);
            this.f = a("cityCode", "cityCode", osObjectSchemaInfoA);
            this.f7544g = a("cityName", "cityName", osObjectSchemaInfoA);
            this.f7545h = a("categoryCode", "categoryCode", osObjectSchemaInfoA);
        }

        @Override // io.realm.internal.c
        public final void b(io.realm.internal.c cVar, io.realm.internal.c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f7543e = aVar.f7543e;
            aVar2.f = aVar.f;
            aVar2.f7544g = aVar.f7544g;
            aVar2.f7545h = aVar.f7545h;
        }
    }

    static {
        OsObjectSchemaInfo.a aVar = new OsObjectSchemaInfo.a("CityModelRealm", false, 4);
        RealmFieldType realmFieldType = RealmFieldType.INTEGER;
        aVar.b("cityId", realmFieldType, true, false, true);
        aVar.b("cityCode", realmFieldType, false, false, true);
        aVar.b("cityName", RealmFieldType.STRING, false, false, true);
        aVar.b("categoryCode", realmFieldType, false, false, true);
        f7540c = aVar.c();
    }

    public g1() {
        this.f7542b.c();
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    public static CityModelRealm c(g0 g0Var, a aVar, CityModelRealm cityModelRealm, boolean z10, HashMap map, Set set) {
        boolean z11;
        if ((cityModelRealm instanceof io.realm.internal.n) && !v0.isFrozen(cityModelRealm)) {
            io.realm.internal.n nVar = (io.realm.internal.n) cityModelRealm;
            if (nVar.b().f7533e != null) {
                io.realm.a aVar2 = nVar.b().f7533e;
                if (aVar2.f7454b != g0Var.f7454b) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                }
                if (aVar2.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                    return cityModelRealm;
                }
            }
        }
        a.c cVar = io.realm.a.f7452h;
        a.b bVar = cVar.get();
        s0 s0Var = (io.realm.internal.n) map.get(cityModelRealm);
        if (s0Var != null) {
            return (CityModelRealm) s0Var;
        }
        g1 g1Var = null;
        if (z10) {
            Table tableV = g0Var.v(CityModelRealm.class);
            long jC = tableV.c(aVar.f7543e, cityModelRealm.getCityId());
            if (jC == -1) {
                z11 = false;
            } else {
                try {
                    bVar.b(g0Var, tableV.o(jC), aVar, false, Collections.emptyList());
                    g1Var = new g1();
                    map.put(cityModelRealm, g1Var);
                    bVar.a();
                    z11 = z10;
                } catch (Throwable th2) {
                    bVar.a();
                    throw th2;
                }
            }
        } else {
            z11 = z10;
        }
        if (z11) {
            OsObjectBuilder osObjectBuilder = new OsObjectBuilder(g0Var.v(CityModelRealm.class), set);
            osObjectBuilder.c(aVar.f7543e, Integer.valueOf(cityModelRealm.getCityId()));
            osObjectBuilder.c(aVar.f, Integer.valueOf(cityModelRealm.getCityCode()));
            osObjectBuilder.f(aVar.f7544g, cityModelRealm.getCityName());
            osObjectBuilder.c(aVar.f7545h, Integer.valueOf(cityModelRealm.getCategoryCode()));
            osObjectBuilder.j();
            return g1Var;
        }
        s0 s0Var2 = (io.realm.internal.n) map.get(cityModelRealm);
        if (s0Var2 != null) {
            return (CityModelRealm) s0Var2;
        }
        OsObjectBuilder osObjectBuilder2 = new OsObjectBuilder(g0Var.v(CityModelRealm.class), set);
        osObjectBuilder2.c(aVar.f7543e, Integer.valueOf(cityModelRealm.getCityId()));
        osObjectBuilder2.c(aVar.f, Integer.valueOf(cityModelRealm.getCityCode()));
        osObjectBuilder2.f(aVar.f7544g, cityModelRealm.getCityName());
        osObjectBuilder2.c(aVar.f7545h, Integer.valueOf(cityModelRealm.getCategoryCode()));
        UncheckedRow uncheckedRowG = osObjectBuilder2.g();
        a.b bVar2 = cVar.get();
        bVar2.b(g0Var, uncheckedRowG, g0Var.f7539j.a(CityModelRealm.class), false, Collections.emptyList());
        g1 g1Var2 = new g1();
        bVar2.a();
        map.put(cityModelRealm, g1Var2);
        return g1Var2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long d(g0 g0Var, CityModelRealm cityModelRealm, HashMap map) {
        if ((cityModelRealm instanceof io.realm.internal.n) && !v0.isFrozen(cityModelRealm)) {
            io.realm.internal.n nVar = (io.realm.internal.n) cityModelRealm;
            if (nVar.b().f7533e != null && nVar.b().f7533e.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                return nVar.b().f7531c.Y();
            }
        }
        Table tableV = g0Var.v(CityModelRealm.class);
        long j10 = tableV.f7633a;
        a aVar = (a) g0Var.f7539j.a(CityModelRealm.class);
        long j11 = aVar.f7543e;
        long jNativeFindFirstInt = Integer.valueOf(cityModelRealm.getCityId()) != null ? Table.nativeFindFirstInt(j10, j11, cityModelRealm.getCityId()) : -1L;
        if (jNativeFindFirstInt == -1) {
            jNativeFindFirstInt = OsObject.createRowWithPrimaryKey(tableV, j11, Integer.valueOf(cityModelRealm.getCityId()));
        }
        long j12 = jNativeFindFirstInt;
        map.put(cityModelRealm, Long.valueOf(j12));
        Table.nativeSetLong(j10, aVar.f, j12, cityModelRealm.getCityCode(), false);
        String cityName = cityModelRealm.getCityName();
        long j13 = aVar.f7544g;
        if (cityName != null) {
            Table.nativeSetString(j10, j13, j12, cityName, false);
        } else {
            Table.nativeSetNull(j10, j13, j12, false);
        }
        Table.nativeSetLong(j10, aVar.f7545h, j12, cityModelRealm.getCategoryCode(), false);
        return j12;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void e(g0 g0Var, Iterator it, HashMap map) {
        long jCreateRowWithPrimaryKey;
        Table tableV = g0Var.v(CityModelRealm.class);
        long j10 = tableV.f7633a;
        a aVar = (a) g0Var.f7539j.a(CityModelRealm.class);
        long j11 = aVar.f7543e;
        while (it.hasNext()) {
            CityModelRealm cityModelRealm = (CityModelRealm) it.next();
            if (!map.containsKey(cityModelRealm)) {
                if ((cityModelRealm instanceof io.realm.internal.n) && !v0.isFrozen(cityModelRealm)) {
                    io.realm.internal.n nVar = (io.realm.internal.n) cityModelRealm;
                    if (nVar.b().f7533e != null && nVar.b().f7533e.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                        map.put(cityModelRealm, Long.valueOf(nVar.b().f7531c.Y()));
                    }
                }
                if (Integer.valueOf(cityModelRealm.getCityId()) != null) {
                    jCreateRowWithPrimaryKey = Table.nativeFindFirstInt(j10, j11, cityModelRealm.getCityId());
                } else {
                    jCreateRowWithPrimaryKey = -1;
                }
                if (jCreateRowWithPrimaryKey == -1) {
                    jCreateRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(tableV, j11, Integer.valueOf(cityModelRealm.getCityId()));
                }
                long j12 = jCreateRowWithPrimaryKey;
                map.put(cityModelRealm, Long.valueOf(j12));
                long j13 = j11;
                Table.nativeSetLong(j10, aVar.f, j12, cityModelRealm.getCityCode(), false);
                String cityName = cityModelRealm.getCityName();
                long j14 = aVar.f7544g;
                if (cityName != null) {
                    Table.nativeSetString(j10, j14, j12, cityName, false);
                } else {
                    Table.nativeSetNull(j10, j14, j12, false);
                }
                Table.nativeSetLong(j10, aVar.f7545h, j12, cityModelRealm.getCategoryCode(), false);
                j11 = j13;
            }
        }
    }

    @Override // io.realm.internal.n
    public final void a() {
        if (this.f7542b != null) {
            return;
        }
        a.b bVar = io.realm.a.f7452h.get();
        this.f7541a = (a) bVar.f7461c;
        f0<CityModelRealm> f0Var = new f0<>(this);
        this.f7542b = f0Var;
        f0Var.f7533e = bVar.f7459a;
        f0Var.f7531c = bVar.f7460b;
        f0Var.f = bVar.f7462d;
        f0Var.f7534g = bVar.f7463e;
    }

    @Override // io.realm.internal.n
    public final f0<?> b() {
        return this.f7542b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || g1.class != obj.getClass()) {
            return false;
        }
        g1 g1Var = (g1) obj;
        io.realm.a aVar = this.f7542b.f7533e;
        io.realm.a aVar2 = g1Var.f7542b.f7533e;
        String str = aVar.f7455c.f7746c;
        String str2 = aVar2.f7455c.f7746c;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        if (aVar.j() != aVar2.j() || !aVar.f7457e.getVersionID().equals(aVar2.f7457e.getVersionID())) {
            return false;
        }
        String strM = this.f7542b.f7531c.q().m();
        String strM2 = g1Var.f7542b.f7531c.q().m();
        if (strM == null ? strM2 == null : strM.equals(strM2)) {
            return this.f7542b.f7531c.Y() == g1Var.f7542b.f7531c.Y();
        }
        return false;
    }

    public final int hashCode() {
        f0<CityModelRealm> f0Var = this.f7542b;
        String str = f0Var.f7533e.f7455c.f7746c;
        String strM = f0Var.f7531c.q().m();
        long jY = this.f7542b.f7531c.Y();
        return ((((527 + (str != null ? str.hashCode() : 0)) * 31) + (strM != null ? strM.hashCode() : 0)) * 31) + ((int) ((jY >>> 32) ^ jY));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.city.CityModelRealm, io.realm.h1
    /* renamed from: realmGet$categoryCode */
    public final int getCategoryCode() {
        this.f7542b.f7533e.b();
        return (int) this.f7542b.f7531c.y(this.f7541a.f7545h);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.city.CityModelRealm, io.realm.h1
    /* renamed from: realmGet$cityCode */
    public final int getCityCode() {
        this.f7542b.f7533e.b();
        return (int) this.f7542b.f7531c.y(this.f7541a.f);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.city.CityModelRealm, io.realm.h1
    /* renamed from: realmGet$cityId */
    public final int getCityId() {
        this.f7542b.f7533e.b();
        return (int) this.f7542b.f7531c.y(this.f7541a.f7543e);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.city.CityModelRealm, io.realm.h1
    /* renamed from: realmGet$cityName */
    public final String getCityName() {
        this.f7542b.f7533e.b();
        return this.f7542b.f7531c.R(this.f7541a.f7544g);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.city.CityModelRealm
    public final void realmSet$categoryCode(int r92) {
        f0<CityModelRealm> f0Var = this.f7542b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            this.f7542b.f7531c.A(this.f7541a.f7545h, r92);
        } else if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            pVar.q().v(this.f7541a.f7545h, pVar.Y(), r92);
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.city.CityModelRealm
    public final void realmSet$cityCode(int r92) {
        f0<CityModelRealm> f0Var = this.f7542b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            this.f7542b.f7531c.A(this.f7541a.f, r92);
        } else if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            pVar.q().v(this.f7541a.f, pVar.Y(), r92);
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.city.CityModelRealm
    public final void realmSet$cityId(int r22) {
        f0<CityModelRealm> f0Var = this.f7542b;
        if (f0Var.f7530b) {
            return;
        }
        f0Var.f7533e.b();
        throw new RealmException("Primary key field 'cityId' cannot be changed after object was created.");
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.city.CityModelRealm
    public final void realmSet$cityName(String str) {
        f0<CityModelRealm> f0Var = this.f7542b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'cityName' to null.");
            }
            this.f7542b.f7531c.o(this.f7541a.f7544g, str);
            return;
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'cityName' to null.");
            }
            pVar.q().x(this.f7541a.f7544g, pVar.Y(), str);
        }
    }

    public final String toString() {
        if (!v0.isValid(this)) {
            return "Invalid object";
        }
        return "CityModelRealm = proxy[{cityId:" + getCityId() + "},{cityCode:" + getCityCode() + "},{cityName:" + getCityName() + "},{categoryCode:" + getCategoryCode() + "}]";
    }
}
