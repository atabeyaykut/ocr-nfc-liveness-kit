package io.realm;

import io.realm.a;
import io.realm.exceptions.RealmException;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.Property;
import io.realm.internal.Table;
import java.util.HashMap;
import tr.gov.turkiye.edevlet.kapisi.data.section.SectionListModelRealm;

/* loaded from: classes2.dex */
public final class g2 extends SectionListModelRealm implements io.realm.internal.n {

    /* renamed from: c, reason: collision with root package name */
    public static final OsObjectSchemaInfo f7546c;

    /* renamed from: a, reason: collision with root package name */
    public a f7547a;

    /* renamed from: b, reason: collision with root package name */
    public f0<SectionListModelRealm> f7548b;

    public static final class a extends io.realm.internal.c {

        /* renamed from: e, reason: collision with root package name */
        public long f7549e;
        public long f;

        public a(OsSchemaInfo osSchemaInfo) {
            super(2, true);
            OsObjectSchemaInfo osObjectSchemaInfoA = osSchemaInfo.a("SectionListModelRealm");
            this.f7549e = a("code", "code", osObjectSchemaInfoA);
            this.f = a("name", "name", osObjectSchemaInfoA);
        }

        @Override // io.realm.internal.c
        public final void b(io.realm.internal.c cVar, io.realm.internal.c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f7549e = aVar.f7549e;
            aVar2.f = aVar.f;
        }
    }

    static {
        long[] jArr = {Property.nativeCreatePersistedProperty("code", "", Property.a(RealmFieldType.INTEGER, true), true, false), Property.nativeCreatePersistedProperty("name", "", Property.a(RealmFieldType.STRING, true), false, false)};
        OsObjectSchemaInfo osObjectSchemaInfo = new OsObjectSchemaInfo("", "SectionListModelRealm", false);
        OsObjectSchemaInfo.nativeAddProperties(osObjectSchemaInfo.f7590a, jArr, new long[0]);
        f7546c = osObjectSchemaInfo;
    }

    public g2() {
        this.f7548b.c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long c(g0 g0Var, SectionListModelRealm sectionListModelRealm, HashMap map) {
        if ((sectionListModelRealm instanceof io.realm.internal.n) && !v0.isFrozen(sectionListModelRealm)) {
            io.realm.internal.n nVar = (io.realm.internal.n) sectionListModelRealm;
            if (nVar.b().f7533e != null && nVar.b().f7533e.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                return nVar.b().f7531c.Y();
            }
        }
        Table tableV = g0Var.v(SectionListModelRealm.class);
        long j10 = tableV.f7633a;
        a aVar = (a) g0Var.f7539j.a(SectionListModelRealm.class);
        long j11 = aVar.f7549e;
        long jNativeFindFirstInt = Integer.valueOf(sectionListModelRealm.getCode()) != null ? Table.nativeFindFirstInt(j10, j11, sectionListModelRealm.getCode()) : -1L;
        if (jNativeFindFirstInt == -1) {
            jNativeFindFirstInt = OsObject.createRowWithPrimaryKey(tableV, j11, Integer.valueOf(sectionListModelRealm.getCode()));
        }
        long j12 = jNativeFindFirstInt;
        map.put(sectionListModelRealm, Long.valueOf(j12));
        String name = sectionListModelRealm.getName();
        long j13 = aVar.f;
        if (name != null) {
            Table.nativeSetString(j10, j13, j12, name, false);
        } else {
            Table.nativeSetNull(j10, j13, j12, false);
        }
        return j12;
    }

    @Override // io.realm.internal.n
    public final void a() {
        if (this.f7548b != null) {
            return;
        }
        a.b bVar = io.realm.a.f7452h.get();
        this.f7547a = (a) bVar.f7461c;
        f0<SectionListModelRealm> f0Var = new f0<>(this);
        this.f7548b = f0Var;
        f0Var.f7533e = bVar.f7459a;
        f0Var.f7531c = bVar.f7460b;
        f0Var.f = bVar.f7462d;
        f0Var.f7534g = bVar.f7463e;
    }

    @Override // io.realm.internal.n
    public final f0<?> b() {
        return this.f7548b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || g2.class != obj.getClass()) {
            return false;
        }
        g2 g2Var = (g2) obj;
        io.realm.a aVar = this.f7548b.f7533e;
        io.realm.a aVar2 = g2Var.f7548b.f7533e;
        String str = aVar.f7455c.f7746c;
        String str2 = aVar2.f7455c.f7746c;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        if (aVar.j() != aVar2.j() || !aVar.f7457e.getVersionID().equals(aVar2.f7457e.getVersionID())) {
            return false;
        }
        String strM = this.f7548b.f7531c.q().m();
        String strM2 = g2Var.f7548b.f7531c.q().m();
        if (strM == null ? strM2 == null : strM.equals(strM2)) {
            return this.f7548b.f7531c.Y() == g2Var.f7548b.f7531c.Y();
        }
        return false;
    }

    public final int hashCode() {
        f0<SectionListModelRealm> f0Var = this.f7548b;
        String str = f0Var.f7533e.f7455c.f7746c;
        String strM = f0Var.f7531c.q().m();
        long jY = this.f7548b.f7531c.Y();
        return ((((527 + (str != null ? str.hashCode() : 0)) * 31) + (strM != null ? strM.hashCode() : 0)) * 31) + ((int) ((jY >>> 32) ^ jY));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.section.SectionListModelRealm, io.realm.h2
    /* renamed from: realmGet$code */
    public final int getCode() {
        this.f7548b.f7533e.b();
        return (int) this.f7548b.f7531c.y(this.f7547a.f7549e);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.section.SectionListModelRealm, io.realm.h2
    /* renamed from: realmGet$name */
    public final String getName() {
        this.f7548b.f7533e.b();
        return this.f7548b.f7531c.R(this.f7547a.f);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.section.SectionListModelRealm
    public final void realmSet$code(int r22) {
        f0<SectionListModelRealm> f0Var = this.f7548b;
        if (f0Var.f7530b) {
            return;
        }
        f0Var.f7533e.b();
        throw new RealmException("Primary key field 'code' cannot be changed after object was created.");
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.section.SectionListModelRealm
    public final void realmSet$name(String str) {
        f0<SectionListModelRealm> f0Var = this.f7548b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'name' to null.");
            }
            this.f7548b.f7531c.o(this.f7547a.f, str);
            return;
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'name' to null.");
            }
            pVar.q().x(this.f7547a.f, pVar.Y(), str);
        }
    }

    public final String toString() {
        if (!v0.isValid(this)) {
            return "Invalid object";
        }
        return "SectionListModelRealm = proxy[{code:" + getCode() + "},{name:" + getName() + "}]";
    }
}
