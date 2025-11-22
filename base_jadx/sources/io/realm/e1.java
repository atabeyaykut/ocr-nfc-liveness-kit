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
import tr.gov.turkiye.edevlet.kapisi.data.about.AboutPageModelRealm;

/* loaded from: classes2.dex */
public final class e1 extends AboutPageModelRealm implements io.realm.internal.n {

    /* renamed from: c, reason: collision with root package name */
    public static final OsObjectSchemaInfo f7503c;

    /* renamed from: a, reason: collision with root package name */
    public a f7504a;

    /* renamed from: b, reason: collision with root package name */
    public f0<AboutPageModelRealm> f7505b;

    public static final class a extends io.realm.internal.c {

        /* renamed from: e, reason: collision with root package name */
        public long f7506e;
        public long f;

        /* renamed from: g, reason: collision with root package name */
        public long f7507g;

        /* renamed from: h, reason: collision with root package name */
        public long f7508h;

        public a(OsSchemaInfo osSchemaInfo) {
            super(4, true);
            OsObjectSchemaInfo osObjectSchemaInfoA = osSchemaInfo.a("AboutPageModelRealm");
            this.f7506e = a("id", "id", osObjectSchemaInfoA);
            this.f = a("iconName", "iconName", osObjectSchemaInfoA);
            this.f7507g = a("name", "name", osObjectSchemaInfoA);
            this.f7508h = a("url", "url", osObjectSchemaInfoA);
        }

        @Override // io.realm.internal.c
        public final void b(io.realm.internal.c cVar, io.realm.internal.c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f7506e = aVar.f7506e;
            aVar2.f = aVar.f;
            aVar2.f7507g = aVar.f7507g;
            aVar2.f7508h = aVar.f7508h;
        }
    }

    static {
        OsObjectSchemaInfo.a aVar = new OsObjectSchemaInfo.a("AboutPageModelRealm", false, 4);
        aVar.b("id", RealmFieldType.INTEGER, true, false, true);
        RealmFieldType realmFieldType = RealmFieldType.STRING;
        aVar.b("iconName", realmFieldType, false, false, true);
        aVar.b("name", realmFieldType, false, false, true);
        aVar.b("url", realmFieldType, false, false, true);
        f7503c = aVar.c();
    }

    public e1() {
        this.f7505b.c();
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    public static AboutPageModelRealm c(g0 g0Var, a aVar, AboutPageModelRealm aboutPageModelRealm, boolean z10, HashMap map, Set set) {
        boolean z11;
        if ((aboutPageModelRealm instanceof io.realm.internal.n) && !v0.isFrozen(aboutPageModelRealm)) {
            io.realm.internal.n nVar = (io.realm.internal.n) aboutPageModelRealm;
            if (nVar.b().f7533e != null) {
                io.realm.a aVar2 = nVar.b().f7533e;
                if (aVar2.f7454b != g0Var.f7454b) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                }
                if (aVar2.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                    return aboutPageModelRealm;
                }
            }
        }
        a.c cVar = io.realm.a.f7452h;
        a.b bVar = cVar.get();
        s0 s0Var = (io.realm.internal.n) map.get(aboutPageModelRealm);
        if (s0Var != null) {
            return (AboutPageModelRealm) s0Var;
        }
        e1 e1Var = null;
        if (z10) {
            Table tableV = g0Var.v(AboutPageModelRealm.class);
            long jC = tableV.c(aVar.f7506e, aboutPageModelRealm.getId());
            if (jC == -1) {
                z11 = false;
            } else {
                try {
                    bVar.b(g0Var, tableV.o(jC), aVar, false, Collections.emptyList());
                    e1Var = new e1();
                    map.put(aboutPageModelRealm, e1Var);
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
            OsObjectBuilder osObjectBuilder = new OsObjectBuilder(g0Var.v(AboutPageModelRealm.class), set);
            osObjectBuilder.c(aVar.f7506e, Integer.valueOf(aboutPageModelRealm.getId()));
            osObjectBuilder.f(aVar.f, aboutPageModelRealm.getIconName());
            osObjectBuilder.f(aVar.f7507g, aboutPageModelRealm.getName());
            osObjectBuilder.f(aVar.f7508h, aboutPageModelRealm.getUrl());
            osObjectBuilder.j();
            return e1Var;
        }
        s0 s0Var2 = (io.realm.internal.n) map.get(aboutPageModelRealm);
        if (s0Var2 != null) {
            return (AboutPageModelRealm) s0Var2;
        }
        OsObjectBuilder osObjectBuilder2 = new OsObjectBuilder(g0Var.v(AboutPageModelRealm.class), set);
        osObjectBuilder2.c(aVar.f7506e, Integer.valueOf(aboutPageModelRealm.getId()));
        osObjectBuilder2.f(aVar.f, aboutPageModelRealm.getIconName());
        osObjectBuilder2.f(aVar.f7507g, aboutPageModelRealm.getName());
        osObjectBuilder2.f(aVar.f7508h, aboutPageModelRealm.getUrl());
        UncheckedRow uncheckedRowG = osObjectBuilder2.g();
        a.b bVar2 = cVar.get();
        bVar2.b(g0Var, uncheckedRowG, g0Var.f7539j.a(AboutPageModelRealm.class), false, Collections.emptyList());
        e1 e1Var2 = new e1();
        bVar2.a();
        map.put(aboutPageModelRealm, e1Var2);
        return e1Var2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long d(g0 g0Var, AboutPageModelRealm aboutPageModelRealm, HashMap map) {
        if ((aboutPageModelRealm instanceof io.realm.internal.n) && !v0.isFrozen(aboutPageModelRealm)) {
            io.realm.internal.n nVar = (io.realm.internal.n) aboutPageModelRealm;
            if (nVar.b().f7533e != null && nVar.b().f7533e.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                return nVar.b().f7531c.Y();
            }
        }
        Table tableV = g0Var.v(AboutPageModelRealm.class);
        long j10 = tableV.f7633a;
        a aVar = (a) g0Var.f7539j.a(AboutPageModelRealm.class);
        long j11 = aVar.f7506e;
        long jNativeFindFirstInt = Integer.valueOf(aboutPageModelRealm.getId()) != null ? Table.nativeFindFirstInt(j10, j11, aboutPageModelRealm.getId()) : -1L;
        if (jNativeFindFirstInt == -1) {
            jNativeFindFirstInt = OsObject.createRowWithPrimaryKey(tableV, j11, Integer.valueOf(aboutPageModelRealm.getId()));
        }
        long j12 = jNativeFindFirstInt;
        map.put(aboutPageModelRealm, Long.valueOf(j12));
        String iconName = aboutPageModelRealm.getIconName();
        long j13 = aVar.f;
        if (iconName != null) {
            Table.nativeSetString(j10, j13, j12, iconName, false);
        } else {
            Table.nativeSetNull(j10, j13, j12, false);
        }
        String name = aboutPageModelRealm.getName();
        long j14 = aVar.f7507g;
        if (name != null) {
            Table.nativeSetString(j10, j14, j12, name, false);
        } else {
            Table.nativeSetNull(j10, j14, j12, false);
        }
        String url = aboutPageModelRealm.getUrl();
        long j15 = aVar.f7508h;
        if (url != null) {
            Table.nativeSetString(j10, j15, j12, url, false);
        } else {
            Table.nativeSetNull(j10, j15, j12, false);
        }
        return j12;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void e(g0 g0Var, Iterator it, HashMap map) {
        f1 f1Var;
        Table tableV = g0Var.v(AboutPageModelRealm.class);
        long j10 = tableV.f7633a;
        a aVar = (a) g0Var.f7539j.a(AboutPageModelRealm.class);
        long j11 = aVar.f7506e;
        while (it.hasNext()) {
            AboutPageModelRealm aboutPageModelRealm = (AboutPageModelRealm) it.next();
            if (!map.containsKey(aboutPageModelRealm)) {
                if ((aboutPageModelRealm instanceof io.realm.internal.n) && !v0.isFrozen(aboutPageModelRealm)) {
                    io.realm.internal.n nVar = (io.realm.internal.n) aboutPageModelRealm;
                    if (nVar.b().f7533e != null && nVar.b().f7533e.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                        map.put(aboutPageModelRealm, Long.valueOf(nVar.b().f7531c.Y()));
                    }
                }
                long jNativeFindFirstInt = Integer.valueOf(aboutPageModelRealm.getId()) != null ? Table.nativeFindFirstInt(j10, j11, aboutPageModelRealm.getId()) : -1L;
                if (jNativeFindFirstInt == -1) {
                    jNativeFindFirstInt = OsObject.createRowWithPrimaryKey(tableV, j11, Integer.valueOf(aboutPageModelRealm.getId()));
                }
                long j12 = jNativeFindFirstInt;
                map.put(aboutPageModelRealm, Long.valueOf(j12));
                String iconName = aboutPageModelRealm.getIconName();
                if (iconName != null) {
                    f1Var = aboutPageModelRealm;
                    Table.nativeSetString(j10, aVar.f, j12, iconName, false);
                } else {
                    f1Var = aboutPageModelRealm;
                    Table.nativeSetNull(j10, aVar.f, j12, false);
                }
                String name = f1Var.getName();
                long j13 = aVar.f7507g;
                if (name != null) {
                    Table.nativeSetString(j10, j13, j12, name, false);
                } else {
                    Table.nativeSetNull(j10, j13, j12, false);
                }
                String url = f1Var.getUrl();
                long j14 = aVar.f7508h;
                if (url != null) {
                    Table.nativeSetString(j10, j14, j12, url, false);
                } else {
                    Table.nativeSetNull(j10, j14, j12, false);
                }
            }
        }
    }

    @Override // io.realm.internal.n
    public final void a() {
        if (this.f7505b != null) {
            return;
        }
        a.b bVar = io.realm.a.f7452h.get();
        this.f7504a = (a) bVar.f7461c;
        f0<AboutPageModelRealm> f0Var = new f0<>(this);
        this.f7505b = f0Var;
        f0Var.f7533e = bVar.f7459a;
        f0Var.f7531c = bVar.f7460b;
        f0Var.f = bVar.f7462d;
        f0Var.f7534g = bVar.f7463e;
    }

    @Override // io.realm.internal.n
    public final f0<?> b() {
        return this.f7505b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e1.class != obj.getClass()) {
            return false;
        }
        e1 e1Var = (e1) obj;
        io.realm.a aVar = this.f7505b.f7533e;
        io.realm.a aVar2 = e1Var.f7505b.f7533e;
        String str = aVar.f7455c.f7746c;
        String str2 = aVar2.f7455c.f7746c;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        if (aVar.j() != aVar2.j() || !aVar.f7457e.getVersionID().equals(aVar2.f7457e.getVersionID())) {
            return false;
        }
        String strM = this.f7505b.f7531c.q().m();
        String strM2 = e1Var.f7505b.f7531c.q().m();
        if (strM == null ? strM2 == null : strM.equals(strM2)) {
            return this.f7505b.f7531c.Y() == e1Var.f7505b.f7531c.Y();
        }
        return false;
    }

    public final int hashCode() {
        f0<AboutPageModelRealm> f0Var = this.f7505b;
        String str = f0Var.f7533e.f7455c.f7746c;
        String strM = f0Var.f7531c.q().m();
        long jY = this.f7505b.f7531c.Y();
        return ((((527 + (str != null ? str.hashCode() : 0)) * 31) + (strM != null ? strM.hashCode() : 0)) * 31) + ((int) ((jY >>> 32) ^ jY));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.about.AboutPageModelRealm, io.realm.f1
    /* renamed from: realmGet$iconName */
    public final String getIconName() {
        this.f7505b.f7533e.b();
        return this.f7505b.f7531c.R(this.f7504a.f);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.about.AboutPageModelRealm, io.realm.f1
    /* renamed from: realmGet$id */
    public final int getId() {
        this.f7505b.f7533e.b();
        return (int) this.f7505b.f7531c.y(this.f7504a.f7506e);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.about.AboutPageModelRealm, io.realm.f1
    /* renamed from: realmGet$name */
    public final String getName() {
        this.f7505b.f7533e.b();
        return this.f7505b.f7531c.R(this.f7504a.f7507g);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.about.AboutPageModelRealm, io.realm.f1
    /* renamed from: realmGet$url */
    public final String getUrl() {
        this.f7505b.f7533e.b();
        return this.f7505b.f7531c.R(this.f7504a.f7508h);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.about.AboutPageModelRealm
    public final void realmSet$iconName(String str) {
        f0<AboutPageModelRealm> f0Var = this.f7505b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'iconName' to null.");
            }
            this.f7505b.f7531c.o(this.f7504a.f, str);
            return;
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'iconName' to null.");
            }
            pVar.q().x(this.f7504a.f, pVar.Y(), str);
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.about.AboutPageModelRealm
    public final void realmSet$id(int r22) {
        f0<AboutPageModelRealm> f0Var = this.f7505b;
        if (f0Var.f7530b) {
            return;
        }
        f0Var.f7533e.b();
        throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.about.AboutPageModelRealm
    public final void realmSet$name(String str) {
        f0<AboutPageModelRealm> f0Var = this.f7505b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'name' to null.");
            }
            this.f7505b.f7531c.o(this.f7504a.f7507g, str);
            return;
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'name' to null.");
            }
            pVar.q().x(this.f7504a.f7507g, pVar.Y(), str);
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.about.AboutPageModelRealm
    public final void realmSet$url(String str) {
        f0<AboutPageModelRealm> f0Var = this.f7505b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'url' to null.");
            }
            this.f7505b.f7531c.o(this.f7504a.f7508h, str);
            return;
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'url' to null.");
            }
            pVar.q().x(this.f7504a.f7508h, pVar.Y(), str);
        }
    }

    public final String toString() {
        if (!v0.isValid(this)) {
            return "Invalid object";
        }
        return "AboutPageModelRealm = proxy[{id:" + getId() + "},{iconName:" + getIconName() + "},{name:" + getName() + "},{url:" + getUrl() + "}]";
    }
}
