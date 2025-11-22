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
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportMedia;

/* loaded from: classes2.dex */
public final class w1 extends AccidentReportMedia implements io.realm.internal.n {

    /* renamed from: c, reason: collision with root package name */
    public static final OsObjectSchemaInfo f7875c;

    /* renamed from: a, reason: collision with root package name */
    public a f7876a;

    /* renamed from: b, reason: collision with root package name */
    public f0<AccidentReportMedia> f7877b;

    public static final class a extends io.realm.internal.c {

        /* renamed from: e, reason: collision with root package name */
        public long f7878e;
        public long f;

        /* renamed from: g, reason: collision with root package name */
        public long f7879g;

        /* renamed from: h, reason: collision with root package name */
        public long f7880h;

        /* renamed from: i, reason: collision with root package name */
        public long f7881i;

        /* renamed from: j, reason: collision with root package name */
        public long f7882j;

        public a(OsSchemaInfo osSchemaInfo) {
            super(6, true);
            OsObjectSchemaInfo osObjectSchemaInfoA = osSchemaInfo.a("AccidentReportMedia");
            this.f7878e = a("id", "id", osObjectSchemaInfoA);
            this.f = a("name", "name", osObjectSchemaInfoA);
            this.f7879g = a("mediaType", "mediaType", osObjectSchemaInfoA);
            this.f7880h = a("contentType", "contentType", osObjectSchemaInfoA);
            this.f7881i = a("createDate", "createDate", osObjectSchemaInfoA);
            this.f7882j = a("updatedDate", "updatedDate", osObjectSchemaInfoA);
        }

        @Override // io.realm.internal.c
        public final void b(io.realm.internal.c cVar, io.realm.internal.c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f7878e = aVar.f7878e;
            aVar2.f = aVar.f;
            aVar2.f7879g = aVar.f7879g;
            aVar2.f7880h = aVar.f7880h;
            aVar2.f7881i = aVar.f7881i;
            aVar2.f7882j = aVar.f7882j;
        }
    }

    static {
        OsObjectSchemaInfo.a aVar = new OsObjectSchemaInfo.a("AccidentReportMedia", true, 6);
        RealmFieldType realmFieldType = RealmFieldType.STRING;
        aVar.b("id", realmFieldType, false, false, false);
        aVar.b("name", realmFieldType, false, false, false);
        aVar.b("mediaType", realmFieldType, false, false, false);
        aVar.b("contentType", realmFieldType, false, false, false);
        aVar.b("createDate", realmFieldType, false, false, false);
        aVar.b("updatedDate", realmFieldType, false, false, false);
        f7875c = aVar.c();
    }

    public w1() {
        this.f7877b.c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static AccidentReportMedia c(g0 g0Var, a aVar, AccidentReportMedia accidentReportMedia, HashMap map, Set set) {
        if ((accidentReportMedia instanceof io.realm.internal.n) && !v0.isFrozen(accidentReportMedia)) {
            io.realm.internal.n nVar = (io.realm.internal.n) accidentReportMedia;
            if (nVar.b().f7533e != null) {
                io.realm.a aVar2 = nVar.b().f7533e;
                if (aVar2.f7454b != g0Var.f7454b) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                }
                if (aVar2.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                    return accidentReportMedia;
                }
            }
        }
        io.realm.a.f7452h.get();
        s0 s0Var = (io.realm.internal.n) map.get(accidentReportMedia);
        if (s0Var != null) {
            return (AccidentReportMedia) s0Var;
        }
        s0 s0Var2 = (io.realm.internal.n) map.get(accidentReportMedia);
        if (s0Var2 != null) {
            return (AccidentReportMedia) s0Var2;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(g0Var.v(AccidentReportMedia.class), set);
        osObjectBuilder.f(aVar.f7878e, accidentReportMedia.getId());
        osObjectBuilder.f(aVar.f, accidentReportMedia.getName());
        osObjectBuilder.f(aVar.f7879g, accidentReportMedia.getMediaType());
        osObjectBuilder.f(aVar.f7880h, accidentReportMedia.getContentType());
        osObjectBuilder.f(aVar.f7881i, accidentReportMedia.getCreateDate());
        osObjectBuilder.f(aVar.f7882j, accidentReportMedia.getUpdatedDate());
        w1 w1VarE = e(g0Var, osObjectBuilder.g());
        map.put(accidentReportMedia, w1VarE);
        return w1VarE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void d(g0 g0Var, Table table, long j10, long j11, AccidentReportMedia accidentReportMedia, HashMap map) {
        if ((accidentReportMedia instanceof io.realm.internal.n) && !v0.isFrozen(accidentReportMedia)) {
            io.realm.internal.n nVar = (io.realm.internal.n) accidentReportMedia;
            if (nVar.b().f7533e != null && nVar.b().f7533e.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                nVar.b().f7531c.Y();
                return;
            }
        }
        long j12 = g0Var.v(AccidentReportMedia.class).f7633a;
        a aVar = (a) g0Var.f7539j.a(AccidentReportMedia.class);
        long jCreateEmbeddedObject = OsObject.createEmbeddedObject(table, j11, j10);
        map.put(accidentReportMedia, Long.valueOf(jCreateEmbeddedObject));
        String id2 = accidentReportMedia.getId();
        long j13 = aVar.f7878e;
        if (id2 != null) {
            Table.nativeSetString(j12, j13, jCreateEmbeddedObject, id2, false);
        } else {
            Table.nativeSetNull(j12, j13, jCreateEmbeddedObject, false);
        }
        String name = accidentReportMedia.getName();
        long j14 = aVar.f;
        if (name != null) {
            Table.nativeSetString(j12, j14, jCreateEmbeddedObject, name, false);
        } else {
            Table.nativeSetNull(j12, j14, jCreateEmbeddedObject, false);
        }
        String mediaType = accidentReportMedia.getMediaType();
        long j15 = aVar.f7879g;
        if (mediaType != null) {
            Table.nativeSetString(j12, j15, jCreateEmbeddedObject, mediaType, false);
        } else {
            Table.nativeSetNull(j12, j15, jCreateEmbeddedObject, false);
        }
        String contentType = accidentReportMedia.getContentType();
        long j16 = aVar.f7880h;
        if (contentType != null) {
            Table.nativeSetString(j12, j16, jCreateEmbeddedObject, contentType, false);
        } else {
            Table.nativeSetNull(j12, j16, jCreateEmbeddedObject, false);
        }
        String createDate = accidentReportMedia.getCreateDate();
        long j17 = aVar.f7881i;
        if (createDate != null) {
            Table.nativeSetString(j12, j17, jCreateEmbeddedObject, createDate, false);
        } else {
            Table.nativeSetNull(j12, j17, jCreateEmbeddedObject, false);
        }
        String updatedDate = accidentReportMedia.getUpdatedDate();
        if (updatedDate != null) {
            Table.nativeSetString(j12, aVar.f7882j, jCreateEmbeddedObject, updatedDate, false);
        } else {
            Table.nativeSetNull(j12, aVar.f7882j, jCreateEmbeddedObject, false);
        }
    }

    public static w1 e(io.realm.a aVar, UncheckedRow uncheckedRow) {
        a.b bVar = io.realm.a.f7452h.get();
        bVar.b(aVar, uncheckedRow, aVar.i().a(AccidentReportMedia.class), false, Collections.emptyList());
        w1 w1Var = new w1();
        bVar.a();
        return w1Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void f(g0 g0Var, AccidentReportMedia accidentReportMedia, AccidentReportMedia accidentReportMedia2, Set set) {
        a aVar = (a) g0Var.f7539j.a(AccidentReportMedia.class);
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(g0Var.v(AccidentReportMedia.class), set);
        osObjectBuilder.f(aVar.f7878e, accidentReportMedia.getId());
        osObjectBuilder.f(aVar.f, accidentReportMedia.getName());
        osObjectBuilder.f(aVar.f7879g, accidentReportMedia.getMediaType());
        osObjectBuilder.f(aVar.f7880h, accidentReportMedia.getContentType());
        osObjectBuilder.f(aVar.f7881i, accidentReportMedia.getCreateDate());
        osObjectBuilder.f(aVar.f7882j, accidentReportMedia.getUpdatedDate());
        osObjectBuilder.i((io.realm.internal.n) accidentReportMedia2);
    }

    @Override // io.realm.internal.n
    public final void a() {
        if (this.f7877b != null) {
            return;
        }
        a.b bVar = io.realm.a.f7452h.get();
        this.f7876a = (a) bVar.f7461c;
        f0<AccidentReportMedia> f0Var = new f0<>(this);
        this.f7877b = f0Var;
        f0Var.f7533e = bVar.f7459a;
        f0Var.f7531c = bVar.f7460b;
        f0Var.f = bVar.f7462d;
        f0Var.f7534g = bVar.f7463e;
    }

    @Override // io.realm.internal.n
    public final f0<?> b() {
        return this.f7877b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || w1.class != obj.getClass()) {
            return false;
        }
        w1 w1Var = (w1) obj;
        io.realm.a aVar = this.f7877b.f7533e;
        io.realm.a aVar2 = w1Var.f7877b.f7533e;
        String str = aVar.f7455c.f7746c;
        String str2 = aVar2.f7455c.f7746c;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        if (aVar.j() != aVar2.j() || !aVar.f7457e.getVersionID().equals(aVar2.f7457e.getVersionID())) {
            return false;
        }
        String strM = this.f7877b.f7531c.q().m();
        String strM2 = w1Var.f7877b.f7531c.q().m();
        if (strM == null ? strM2 == null : strM.equals(strM2)) {
            return this.f7877b.f7531c.Y() == w1Var.f7877b.f7531c.Y();
        }
        return false;
    }

    public final int hashCode() {
        f0<AccidentReportMedia> f0Var = this.f7877b;
        String str = f0Var.f7533e.f7455c.f7746c;
        String strM = f0Var.f7531c.q().m();
        long jY = this.f7877b.f7531c.Y();
        return ((((527 + (str != null ? str.hashCode() : 0)) * 31) + (strM != null ? strM.hashCode() : 0)) * 31) + ((int) ((jY >>> 32) ^ jY));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportMedia, io.realm.x1
    /* renamed from: realmGet$contentType */
    public final String getContentType() {
        this.f7877b.f7533e.b();
        return this.f7877b.f7531c.R(this.f7876a.f7880h);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportMedia, io.realm.x1
    /* renamed from: realmGet$createDate */
    public final String getCreateDate() {
        this.f7877b.f7533e.b();
        return this.f7877b.f7531c.R(this.f7876a.f7881i);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportMedia, io.realm.x1
    /* renamed from: realmGet$id */
    public final String getId() {
        this.f7877b.f7533e.b();
        return this.f7877b.f7531c.R(this.f7876a.f7878e);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportMedia, io.realm.x1
    /* renamed from: realmGet$mediaType */
    public final String getMediaType() {
        this.f7877b.f7533e.b();
        return this.f7877b.f7531c.R(this.f7876a.f7879g);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportMedia, io.realm.x1
    /* renamed from: realmGet$name */
    public final String getName() {
        this.f7877b.f7533e.b();
        return this.f7877b.f7531c.R(this.f7876a.f);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportMedia, io.realm.x1
    /* renamed from: realmGet$updatedDate */
    public final String getUpdatedDate() {
        this.f7877b.f7533e.b();
        return this.f7877b.f7531c.R(this.f7876a.f7882j);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportMedia
    public final void realmSet$contentType(String str) {
        f0<AccidentReportMedia> f0Var = this.f7877b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7877b.f7531c.M(this.f7876a.f7880h);
                return;
            } else {
                this.f7877b.f7531c.o(this.f7876a.f7880h, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7876a.f7880h, pVar.Y());
            } else {
                pVar.q().x(this.f7876a.f7880h, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportMedia
    public final void realmSet$createDate(String str) {
        f0<AccidentReportMedia> f0Var = this.f7877b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7877b.f7531c.M(this.f7876a.f7881i);
                return;
            } else {
                this.f7877b.f7531c.o(this.f7876a.f7881i, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7876a.f7881i, pVar.Y());
            } else {
                pVar.q().x(this.f7876a.f7881i, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportMedia
    public final void realmSet$id(String str) {
        f0<AccidentReportMedia> f0Var = this.f7877b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7877b.f7531c.M(this.f7876a.f7878e);
                return;
            } else {
                this.f7877b.f7531c.o(this.f7876a.f7878e, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7876a.f7878e, pVar.Y());
            } else {
                pVar.q().x(this.f7876a.f7878e, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportMedia
    public final void realmSet$mediaType(String str) {
        f0<AccidentReportMedia> f0Var = this.f7877b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7877b.f7531c.M(this.f7876a.f7879g);
                return;
            } else {
                this.f7877b.f7531c.o(this.f7876a.f7879g, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7876a.f7879g, pVar.Y());
            } else {
                pVar.q().x(this.f7876a.f7879g, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportMedia
    public final void realmSet$name(String str) {
        f0<AccidentReportMedia> f0Var = this.f7877b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7877b.f7531c.M(this.f7876a.f);
                return;
            } else {
                this.f7877b.f7531c.o(this.f7876a.f, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7876a.f, pVar.Y());
            } else {
                pVar.q().x(this.f7876a.f, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportMedia
    public final void realmSet$updatedDate(String str) {
        f0<AccidentReportMedia> f0Var = this.f7877b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7877b.f7531c.M(this.f7876a.f7882j);
                return;
            } else {
                this.f7877b.f7531c.o(this.f7876a.f7882j, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7876a.f7882j, pVar.Y());
            } else {
                pVar.q().x(this.f7876a.f7882j, pVar.Y(), str);
            }
        }
    }

    public final String toString() {
        if (!v0.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb2 = new StringBuilder("AccidentReportMedia = proxy[{id:");
        sb2.append(getId() != null ? getId() : "null");
        sb2.append("},{name:");
        sb2.append(getName() != null ? getName() : "null");
        sb2.append("},{mediaType:");
        sb2.append(getMediaType() != null ? getMediaType() : "null");
        sb2.append("},{contentType:");
        sb2.append(getContentType() != null ? getContentType() : "null");
        sb2.append("},{createDate:");
        sb2.append(getCreateDate() != null ? getCreateDate() : "null");
        sb2.append("},{updatedDate:");
        return androidx.camera.camera2.internal.c.h(sb2, getUpdatedDate() != null ? getUpdatedDate() : "null", "}]");
    }
}
