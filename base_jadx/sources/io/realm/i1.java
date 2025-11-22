package io.realm;

import io.realm.a;
import io.realm.exceptions.RealmException;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.Property;
import io.realm.internal.Table;
import io.realm.internal.UncheckedRow;
import io.realm.internal.objectstore.OsObjectBuilder;
import java.util.Collections;
import java.util.HashMap;
import java.util.Set;
import tr.gov.turkiye.edevlet.kapisi.data.city.MyCityListDBModel;

/* loaded from: classes2.dex */
public final class i1 extends MyCityListDBModel implements io.realm.internal.n {

    /* renamed from: c, reason: collision with root package name */
    public static final OsObjectSchemaInfo f7566c;

    /* renamed from: a, reason: collision with root package name */
    public a f7567a;

    /* renamed from: b, reason: collision with root package name */
    public f0<MyCityListDBModel> f7568b;

    public static final class a extends io.realm.internal.c {

        /* renamed from: e, reason: collision with root package name */
        public long f7569e;
        public long f;

        public a(OsSchemaInfo osSchemaInfo) {
            super(2, true);
            OsObjectSchemaInfo osObjectSchemaInfoA = osSchemaInfo.a("MyCityListDBModel");
            this.f7569e = a("cityId", "cityId", osObjectSchemaInfoA);
            this.f = a("cityName", "cityName", osObjectSchemaInfoA);
        }

        @Override // io.realm.internal.c
        public final void b(io.realm.internal.c cVar, io.realm.internal.c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f7569e = aVar.f7569e;
            aVar2.f = aVar.f;
        }
    }

    static {
        long[] jArr = {Property.nativeCreatePersistedProperty("cityId", "", Property.a(RealmFieldType.INTEGER, true), true, false), Property.nativeCreatePersistedProperty("cityName", "", Property.a(RealmFieldType.STRING, true), false, false)};
        OsObjectSchemaInfo osObjectSchemaInfo = new OsObjectSchemaInfo("", "MyCityListDBModel", false);
        OsObjectSchemaInfo.nativeAddProperties(osObjectSchemaInfo.f7590a, jArr, new long[0]);
        f7566c = osObjectSchemaInfo;
    }

    public i1() {
        this.f7568b.c();
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    public static MyCityListDBModel c(g0 g0Var, a aVar, MyCityListDBModel myCityListDBModel, boolean z10, HashMap map, Set set) {
        boolean z11;
        if ((myCityListDBModel instanceof io.realm.internal.n) && !v0.isFrozen(myCityListDBModel)) {
            io.realm.internal.n nVar = (io.realm.internal.n) myCityListDBModel;
            if (nVar.b().f7533e != null) {
                io.realm.a aVar2 = nVar.b().f7533e;
                if (aVar2.f7454b != g0Var.f7454b) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                }
                if (aVar2.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                    return myCityListDBModel;
                }
            }
        }
        a.c cVar = io.realm.a.f7452h;
        a.b bVar = cVar.get();
        s0 s0Var = (io.realm.internal.n) map.get(myCityListDBModel);
        if (s0Var != null) {
            return (MyCityListDBModel) s0Var;
        }
        i1 i1Var = null;
        if (z10) {
            Table tableV = g0Var.v(MyCityListDBModel.class);
            long jC = tableV.c(aVar.f7569e, myCityListDBModel.getCityId());
            if (jC == -1) {
                z11 = false;
            } else {
                try {
                    bVar.b(g0Var, tableV.o(jC), aVar, false, Collections.emptyList());
                    i1Var = new i1();
                    map.put(myCityListDBModel, i1Var);
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
            OsObjectBuilder osObjectBuilder = new OsObjectBuilder(g0Var.v(MyCityListDBModel.class), set);
            osObjectBuilder.c(aVar.f7569e, Integer.valueOf(myCityListDBModel.getCityId()));
            osObjectBuilder.f(aVar.f, myCityListDBModel.getCityName());
            osObjectBuilder.j();
            return i1Var;
        }
        s0 s0Var2 = (io.realm.internal.n) map.get(myCityListDBModel);
        if (s0Var2 != null) {
            return (MyCityListDBModel) s0Var2;
        }
        OsObjectBuilder osObjectBuilder2 = new OsObjectBuilder(g0Var.v(MyCityListDBModel.class), set);
        osObjectBuilder2.c(aVar.f7569e, Integer.valueOf(myCityListDBModel.getCityId()));
        osObjectBuilder2.f(aVar.f, myCityListDBModel.getCityName());
        UncheckedRow uncheckedRowG = osObjectBuilder2.g();
        a.b bVar2 = cVar.get();
        bVar2.b(g0Var, uncheckedRowG, g0Var.f7539j.a(MyCityListDBModel.class), false, Collections.emptyList());
        i1 i1Var2 = new i1();
        bVar2.a();
        map.put(myCityListDBModel, i1Var2);
        return i1Var2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long d(g0 g0Var, MyCityListDBModel myCityListDBModel, HashMap map) {
        if ((myCityListDBModel instanceof io.realm.internal.n) && !v0.isFrozen(myCityListDBModel)) {
            io.realm.internal.n nVar = (io.realm.internal.n) myCityListDBModel;
            if (nVar.b().f7533e != null && nVar.b().f7533e.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                return nVar.b().f7531c.Y();
            }
        }
        Table tableV = g0Var.v(MyCityListDBModel.class);
        long j10 = tableV.f7633a;
        a aVar = (a) g0Var.f7539j.a(MyCityListDBModel.class);
        long j11 = aVar.f7569e;
        long jNativeFindFirstInt = Integer.valueOf(myCityListDBModel.getCityId()) != null ? Table.nativeFindFirstInt(j10, j11, myCityListDBModel.getCityId()) : -1L;
        if (jNativeFindFirstInt == -1) {
            jNativeFindFirstInt = OsObject.createRowWithPrimaryKey(tableV, j11, Integer.valueOf(myCityListDBModel.getCityId()));
        }
        long j12 = jNativeFindFirstInt;
        map.put(myCityListDBModel, Long.valueOf(j12));
        String cityName = myCityListDBModel.getCityName();
        long j13 = aVar.f;
        if (cityName != null) {
            Table.nativeSetString(j10, j13, j12, cityName, false);
        } else {
            Table.nativeSetNull(j10, j13, j12, false);
        }
        return j12;
    }

    @Override // io.realm.internal.n
    public final void a() {
        if (this.f7568b != null) {
            return;
        }
        a.b bVar = io.realm.a.f7452h.get();
        this.f7567a = (a) bVar.f7461c;
        f0<MyCityListDBModel> f0Var = new f0<>(this);
        this.f7568b = f0Var;
        f0Var.f7533e = bVar.f7459a;
        f0Var.f7531c = bVar.f7460b;
        f0Var.f = bVar.f7462d;
        f0Var.f7534g = bVar.f7463e;
    }

    @Override // io.realm.internal.n
    public final f0<?> b() {
        return this.f7568b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || i1.class != obj.getClass()) {
            return false;
        }
        i1 i1Var = (i1) obj;
        io.realm.a aVar = this.f7568b.f7533e;
        io.realm.a aVar2 = i1Var.f7568b.f7533e;
        String str = aVar.f7455c.f7746c;
        String str2 = aVar2.f7455c.f7746c;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        if (aVar.j() != aVar2.j() || !aVar.f7457e.getVersionID().equals(aVar2.f7457e.getVersionID())) {
            return false;
        }
        String strM = this.f7568b.f7531c.q().m();
        String strM2 = i1Var.f7568b.f7531c.q().m();
        if (strM == null ? strM2 == null : strM.equals(strM2)) {
            return this.f7568b.f7531c.Y() == i1Var.f7568b.f7531c.Y();
        }
        return false;
    }

    public final int hashCode() {
        f0<MyCityListDBModel> f0Var = this.f7568b;
        String str = f0Var.f7533e.f7455c.f7746c;
        String strM = f0Var.f7531c.q().m();
        long jY = this.f7568b.f7531c.Y();
        return ((((527 + (str != null ? str.hashCode() : 0)) * 31) + (strM != null ? strM.hashCode() : 0)) * 31) + ((int) ((jY >>> 32) ^ jY));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.city.MyCityListDBModel, io.realm.j1
    /* renamed from: realmGet$cityId */
    public final int getCityId() {
        this.f7568b.f7533e.b();
        return (int) this.f7568b.f7531c.y(this.f7567a.f7569e);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.city.MyCityListDBModel, io.realm.j1
    /* renamed from: realmGet$cityName */
    public final String getCityName() {
        this.f7568b.f7533e.b();
        return this.f7568b.f7531c.R(this.f7567a.f);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.city.MyCityListDBModel
    public final void realmSet$cityId(int r22) {
        f0<MyCityListDBModel> f0Var = this.f7568b;
        if (f0Var.f7530b) {
            return;
        }
        f0Var.f7533e.b();
        throw new RealmException("Primary key field 'cityId' cannot be changed after object was created.");
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.city.MyCityListDBModel
    public final void realmSet$cityName(String str) {
        f0<MyCityListDBModel> f0Var = this.f7568b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'cityName' to null.");
            }
            this.f7568b.f7531c.o(this.f7567a.f, str);
            return;
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'cityName' to null.");
            }
            pVar.q().x(this.f7567a.f, pVar.Y(), str);
        }
    }

    public final String toString() {
        if (!v0.isValid(this)) {
            return "Invalid object";
        }
        return "MyCityListDBModel = proxy[{cityId:" + getCityId() + "},{cityName:" + getCityName() + "}]";
    }
}
