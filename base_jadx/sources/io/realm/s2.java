package io.realm;

import io.realm.a;
import io.realm.exceptions.RealmException;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.Property;
import io.realm.internal.Table;
import java.util.HashMap;
import tr.gov.turkiye.edevlet.kapisi.data.service.NewestServiceModelRealm;

/* loaded from: classes2.dex */
public final class s2 extends NewestServiceModelRealm implements io.realm.internal.n {

    /* renamed from: c, reason: collision with root package name */
    public static final OsObjectSchemaInfo f7842c;

    /* renamed from: a, reason: collision with root package name */
    public a f7843a;

    /* renamed from: b, reason: collision with root package name */
    public f0<NewestServiceModelRealm> f7844b;

    public static final class a extends io.realm.internal.c {

        /* renamed from: e, reason: collision with root package name */
        public long f7845e;
        public long f;

        public a(OsSchemaInfo osSchemaInfo) {
            super(2, true);
            OsObjectSchemaInfo osObjectSchemaInfoA = osSchemaInfo.a("NewestServiceModelRealm");
            this.f7845e = a("serviceCode", "serviceCode", osObjectSchemaInfoA);
            this.f = a("serviceInsertion", "serviceInsertion", osObjectSchemaInfoA);
        }

        @Override // io.realm.internal.c
        public final void b(io.realm.internal.c cVar, io.realm.internal.c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f7845e = aVar.f7845e;
            aVar2.f = aVar.f;
        }
    }

    static {
        RealmFieldType realmFieldType = RealmFieldType.INTEGER;
        long[] jArr = {Property.nativeCreatePersistedProperty("serviceCode", "", Property.a(realmFieldType, false), true, false), Property.nativeCreatePersistedProperty("serviceInsertion", "", Property.a(realmFieldType, false), false, true)};
        OsObjectSchemaInfo osObjectSchemaInfo = new OsObjectSchemaInfo("", "NewestServiceModelRealm", false);
        OsObjectSchemaInfo.nativeAddProperties(osObjectSchemaInfo.f7590a, jArr, new long[0]);
        f7842c = osObjectSchemaInfo;
    }

    public s2() {
        this.f7844b.c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long c(g0 g0Var, NewestServiceModelRealm newestServiceModelRealm, HashMap map) {
        if ((newestServiceModelRealm instanceof io.realm.internal.n) && !v0.isFrozen(newestServiceModelRealm)) {
            io.realm.internal.n nVar = (io.realm.internal.n) newestServiceModelRealm;
            if (nVar.b().f7533e != null && nVar.b().f7533e.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                return nVar.b().f7531c.Y();
            }
        }
        Table tableV = g0Var.v(NewestServiceModelRealm.class);
        long j10 = tableV.f7633a;
        a aVar = (a) g0Var.f7539j.a(NewestServiceModelRealm.class);
        long j11 = aVar.f7845e;
        long jNativeFindFirstNull = newestServiceModelRealm.getServiceCode() == null ? Table.nativeFindFirstNull(j10, j11) : Table.nativeFindFirstInt(j10, j11, newestServiceModelRealm.getServiceCode().intValue());
        if (jNativeFindFirstNull == -1) {
            jNativeFindFirstNull = OsObject.createRowWithPrimaryKey(tableV, j11, newestServiceModelRealm.getServiceCode());
        }
        long j12 = jNativeFindFirstNull;
        map.put(newestServiceModelRealm, Long.valueOf(j12));
        Integer serviceInsertion = newestServiceModelRealm.getServiceInsertion();
        long j13 = aVar.f;
        if (serviceInsertion != null) {
            Table.nativeSetLong(j10, j13, j12, serviceInsertion.longValue(), false);
        } else {
            Table.nativeSetNull(j10, j13, j12, false);
        }
        return j12;
    }

    @Override // io.realm.internal.n
    public final void a() {
        if (this.f7844b != null) {
            return;
        }
        a.b bVar = io.realm.a.f7452h.get();
        this.f7843a = (a) bVar.f7461c;
        f0<NewestServiceModelRealm> f0Var = new f0<>(this);
        this.f7844b = f0Var;
        f0Var.f7533e = bVar.f7459a;
        f0Var.f7531c = bVar.f7460b;
        f0Var.f = bVar.f7462d;
        f0Var.f7534g = bVar.f7463e;
    }

    @Override // io.realm.internal.n
    public final f0<?> b() {
        return this.f7844b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || s2.class != obj.getClass()) {
            return false;
        }
        s2 s2Var = (s2) obj;
        io.realm.a aVar = this.f7844b.f7533e;
        io.realm.a aVar2 = s2Var.f7844b.f7533e;
        String str = aVar.f7455c.f7746c;
        String str2 = aVar2.f7455c.f7746c;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        if (aVar.j() != aVar2.j() || !aVar.f7457e.getVersionID().equals(aVar2.f7457e.getVersionID())) {
            return false;
        }
        String strM = this.f7844b.f7531c.q().m();
        String strM2 = s2Var.f7844b.f7531c.q().m();
        if (strM == null ? strM2 == null : strM.equals(strM2)) {
            return this.f7844b.f7531c.Y() == s2Var.f7844b.f7531c.Y();
        }
        return false;
    }

    public final int hashCode() {
        f0<NewestServiceModelRealm> f0Var = this.f7844b;
        String str = f0Var.f7533e.f7455c.f7746c;
        String strM = f0Var.f7531c.q().m();
        long jY = this.f7844b.f7531c.Y();
        return ((((527 + (str != null ? str.hashCode() : 0)) * 31) + (strM != null ? strM.hashCode() : 0)) * 31) + ((int) ((jY >>> 32) ^ jY));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.NewestServiceModelRealm, io.realm.t2
    /* renamed from: realmGet$serviceCode */
    public final Integer getServiceCode() {
        this.f7844b.f7533e.b();
        if (this.f7844b.f7531c.C(this.f7843a.f7845e)) {
            return null;
        }
        return Integer.valueOf((int) this.f7844b.f7531c.y(this.f7843a.f7845e));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.NewestServiceModelRealm, io.realm.t2
    /* renamed from: realmGet$serviceInsertion */
    public final Integer getServiceInsertion() {
        this.f7844b.f7533e.b();
        if (this.f7844b.f7531c.C(this.f7843a.f)) {
            return null;
        }
        return Integer.valueOf((int) this.f7844b.f7531c.y(this.f7843a.f));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.NewestServiceModelRealm
    public final void realmSet$serviceCode(Integer num) {
        f0<NewestServiceModelRealm> f0Var = this.f7844b;
        if (f0Var.f7530b) {
            return;
        }
        f0Var.f7533e.b();
        throw new RealmException("Primary key field 'serviceCode' cannot be changed after object was created.");
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.NewestServiceModelRealm
    public final void realmSet$serviceInsertion(Integer num) {
        f0<NewestServiceModelRealm> f0Var = this.f7844b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            f0<NewestServiceModelRealm> f0Var2 = this.f7844b;
            if (num == null) {
                f0Var2.f7531c.M(this.f7843a.f);
                return;
            } else {
                f0Var2.f7531c.A(this.f7843a.f, num.intValue());
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (num == null) {
                pVar.q().w(this.f7843a.f, pVar.Y());
            } else {
                pVar.q().v(this.f7843a.f, pVar.Y(), num.intValue());
            }
        }
    }

    public final String toString() {
        if (!v0.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb2 = new StringBuilder("NewestServiceModelRealm = proxy[{serviceCode:");
        sb2.append(getServiceCode() != null ? getServiceCode() : "null");
        sb2.append("},{serviceInsertion:");
        return androidx.camera.core.impl.a.e(sb2, getServiceInsertion() != null ? getServiceInsertion() : "null", "}]");
    }
}
