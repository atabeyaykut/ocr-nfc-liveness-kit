package io.realm;

import io.realm.a;
import io.realm.exceptions.RealmException;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.Property;
import io.realm.internal.Table;
import java.util.HashMap;
import tr.gov.turkiye.edevlet.kapisi.data.service.WonderServiceModelRealm;

/* loaded from: classes2.dex */
public final class w2 extends WonderServiceModelRealm implements io.realm.internal.n {

    /* renamed from: c, reason: collision with root package name */
    public static final OsObjectSchemaInfo f7883c;

    /* renamed from: a, reason: collision with root package name */
    public a f7884a;

    /* renamed from: b, reason: collision with root package name */
    public f0<WonderServiceModelRealm> f7885b;

    public static final class a extends io.realm.internal.c {

        /* renamed from: e, reason: collision with root package name */
        public long f7886e;
        public long f;

        /* renamed from: g, reason: collision with root package name */
        public long f7887g;

        public a(OsSchemaInfo osSchemaInfo) {
            super(3, true);
            OsObjectSchemaInfo osObjectSchemaInfoA = osSchemaInfo.a("WonderServiceModelRealm");
            this.f7886e = a("serviceCode", "serviceCode", osObjectSchemaInfoA);
            this.f = a("serviceInsertion", "serviceInsertion", osObjectSchemaInfoA);
            this.f7887g = a("question", "question", osObjectSchemaInfoA);
        }

        @Override // io.realm.internal.c
        public final void b(io.realm.internal.c cVar, io.realm.internal.c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f7886e = aVar.f7886e;
            aVar2.f = aVar.f;
            aVar2.f7887g = aVar.f7887g;
        }
    }

    static {
        RealmFieldType realmFieldType = RealmFieldType.INTEGER;
        long[] jArr = {Property.nativeCreatePersistedProperty("serviceCode", "", Property.a(realmFieldType, false), true, false), Property.nativeCreatePersistedProperty("serviceInsertion", "", Property.a(realmFieldType, false), false, true), Property.nativeCreatePersistedProperty("question", "", Property.a(RealmFieldType.STRING, true), false, false)};
        OsObjectSchemaInfo osObjectSchemaInfo = new OsObjectSchemaInfo("", "WonderServiceModelRealm", false);
        OsObjectSchemaInfo.nativeAddProperties(osObjectSchemaInfo.f7590a, jArr, new long[0]);
        f7883c = osObjectSchemaInfo;
    }

    public w2() {
        this.f7885b.c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long c(g0 g0Var, WonderServiceModelRealm wonderServiceModelRealm, HashMap map) {
        if ((wonderServiceModelRealm instanceof io.realm.internal.n) && !v0.isFrozen(wonderServiceModelRealm)) {
            io.realm.internal.n nVar = (io.realm.internal.n) wonderServiceModelRealm;
            if (nVar.b().f7533e != null && nVar.b().f7533e.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                return nVar.b().f7531c.Y();
            }
        }
        Table tableV = g0Var.v(WonderServiceModelRealm.class);
        long j10 = tableV.f7633a;
        a aVar = (a) g0Var.f7539j.a(WonderServiceModelRealm.class);
        long j11 = aVar.f7886e;
        long jNativeFindFirstNull = wonderServiceModelRealm.getServiceCode() == null ? Table.nativeFindFirstNull(j10, j11) : Table.nativeFindFirstInt(j10, j11, wonderServiceModelRealm.getServiceCode().intValue());
        if (jNativeFindFirstNull == -1) {
            jNativeFindFirstNull = OsObject.createRowWithPrimaryKey(tableV, j11, wonderServiceModelRealm.getServiceCode());
        }
        long j12 = jNativeFindFirstNull;
        map.put(wonderServiceModelRealm, Long.valueOf(j12));
        Integer serviceInsertion = wonderServiceModelRealm.getServiceInsertion();
        long j13 = aVar.f;
        if (serviceInsertion != null) {
            Table.nativeSetLong(j10, j13, j12, serviceInsertion.longValue(), false);
        } else {
            Table.nativeSetNull(j10, j13, j12, false);
        }
        String question = wonderServiceModelRealm.getQuestion();
        long j14 = aVar.f7887g;
        if (question != null) {
            Table.nativeSetString(j10, j14, j12, question, false);
        } else {
            Table.nativeSetNull(j10, j14, j12, false);
        }
        return j12;
    }

    @Override // io.realm.internal.n
    public final void a() {
        if (this.f7885b != null) {
            return;
        }
        a.b bVar = io.realm.a.f7452h.get();
        this.f7884a = (a) bVar.f7461c;
        f0<WonderServiceModelRealm> f0Var = new f0<>(this);
        this.f7885b = f0Var;
        f0Var.f7533e = bVar.f7459a;
        f0Var.f7531c = bVar.f7460b;
        f0Var.f = bVar.f7462d;
        f0Var.f7534g = bVar.f7463e;
    }

    @Override // io.realm.internal.n
    public final f0<?> b() {
        return this.f7885b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || w2.class != obj.getClass()) {
            return false;
        }
        w2 w2Var = (w2) obj;
        io.realm.a aVar = this.f7885b.f7533e;
        io.realm.a aVar2 = w2Var.f7885b.f7533e;
        String str = aVar.f7455c.f7746c;
        String str2 = aVar2.f7455c.f7746c;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        if (aVar.j() != aVar2.j() || !aVar.f7457e.getVersionID().equals(aVar2.f7457e.getVersionID())) {
            return false;
        }
        String strM = this.f7885b.f7531c.q().m();
        String strM2 = w2Var.f7885b.f7531c.q().m();
        if (strM == null ? strM2 == null : strM.equals(strM2)) {
            return this.f7885b.f7531c.Y() == w2Var.f7885b.f7531c.Y();
        }
        return false;
    }

    public final int hashCode() {
        f0<WonderServiceModelRealm> f0Var = this.f7885b;
        String str = f0Var.f7533e.f7455c.f7746c;
        String strM = f0Var.f7531c.q().m();
        long jY = this.f7885b.f7531c.Y();
        return ((((527 + (str != null ? str.hashCode() : 0)) * 31) + (strM != null ? strM.hashCode() : 0)) * 31) + ((int) ((jY >>> 32) ^ jY));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.WonderServiceModelRealm, io.realm.x2
    /* renamed from: realmGet$question */
    public final String getQuestion() {
        this.f7885b.f7533e.b();
        return this.f7885b.f7531c.R(this.f7884a.f7887g);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.WonderServiceModelRealm, io.realm.x2
    /* renamed from: realmGet$serviceCode */
    public final Integer getServiceCode() {
        this.f7885b.f7533e.b();
        if (this.f7885b.f7531c.C(this.f7884a.f7886e)) {
            return null;
        }
        return Integer.valueOf((int) this.f7885b.f7531c.y(this.f7884a.f7886e));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.WonderServiceModelRealm, io.realm.x2
    /* renamed from: realmGet$serviceInsertion */
    public final Integer getServiceInsertion() {
        this.f7885b.f7533e.b();
        if (this.f7885b.f7531c.C(this.f7884a.f)) {
            return null;
        }
        return Integer.valueOf((int) this.f7885b.f7531c.y(this.f7884a.f));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.WonderServiceModelRealm
    public final void realmSet$question(String str) {
        f0<WonderServiceModelRealm> f0Var = this.f7885b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'question' to null.");
            }
            this.f7885b.f7531c.o(this.f7884a.f7887g, str);
            return;
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'question' to null.");
            }
            pVar.q().x(this.f7884a.f7887g, pVar.Y(), str);
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.WonderServiceModelRealm
    public final void realmSet$serviceCode(Integer num) {
        f0<WonderServiceModelRealm> f0Var = this.f7885b;
        if (f0Var.f7530b) {
            return;
        }
        f0Var.f7533e.b();
        throw new RealmException("Primary key field 'serviceCode' cannot be changed after object was created.");
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.WonderServiceModelRealm
    public final void realmSet$serviceInsertion(Integer num) {
        f0<WonderServiceModelRealm> f0Var = this.f7885b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            f0<WonderServiceModelRealm> f0Var2 = this.f7885b;
            if (num == null) {
                f0Var2.f7531c.M(this.f7884a.f);
                return;
            } else {
                f0Var2.f7531c.A(this.f7884a.f, num.intValue());
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (num == null) {
                pVar.q().w(this.f7884a.f, pVar.Y());
            } else {
                pVar.q().v(this.f7884a.f, pVar.Y(), num.intValue());
            }
        }
    }

    public final String toString() {
        if (!v0.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb2 = new StringBuilder("WonderServiceModelRealm = proxy[{serviceCode:");
        sb2.append(getServiceCode() != null ? getServiceCode() : "null");
        sb2.append("},{serviceInsertion:");
        sb2.append(getServiceInsertion() != null ? getServiceInsertion() : "null");
        sb2.append("},{question:");
        sb2.append(getQuestion());
        sb2.append("}]");
        return sb2.toString();
    }
}
