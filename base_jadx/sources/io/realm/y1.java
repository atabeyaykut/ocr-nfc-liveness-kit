package io.realm;

import androidx.core.app.NotificationCompat;
import io.realm.a;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.UncheckedRow;
import io.realm.internal.objectstore.OsObjectBuilder;
import java.util.Collections;
import java.util.HashMap;
import java.util.Set;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportParticipant;

/* loaded from: classes2.dex */
public final class y1 extends AccidentReportParticipant implements io.realm.internal.n {

    /* renamed from: c, reason: collision with root package name */
    public static final OsObjectSchemaInfo f7898c;

    /* renamed from: a, reason: collision with root package name */
    public a f7899a;

    /* renamed from: b, reason: collision with root package name */
    public f0<AccidentReportParticipant> f7900b;

    public static final class a extends io.realm.internal.c {

        /* renamed from: e, reason: collision with root package name */
        public long f7901e;
        public long f;

        /* renamed from: g, reason: collision with root package name */
        public long f7902g;

        /* renamed from: h, reason: collision with root package name */
        public long f7903h;

        /* renamed from: i, reason: collision with root package name */
        public long f7904i;

        /* renamed from: j, reason: collision with root package name */
        public long f7905j;

        /* renamed from: k, reason: collision with root package name */
        public long f7906k;

        /* renamed from: l, reason: collision with root package name */
        public long f7907l;

        public a(OsSchemaInfo osSchemaInfo) {
            super(8, true);
            OsObjectSchemaInfo osObjectSchemaInfoA = osSchemaInfo.a("AccidentReportParticipant");
            this.f7901e = a("reportPartyId", "reportPartyId", osObjectSchemaInfoA);
            this.f = a("identityType", "identityType", osObjectSchemaInfoA);
            this.f7902g = a("identityNumber", "identityNumber", osObjectSchemaInfoA);
            this.f7903h = a("partyRole", "partyRole", osObjectSchemaInfoA);
            this.f7904i = a("name", "name", osObjectSchemaInfoA);
            this.f7905j = a("plate", "plate", osObjectSchemaInfoA);
            this.f7906k = a("comment", "comment", osObjectSchemaInfoA);
            this.f7907l = a(NotificationCompat.CATEGORY_STATUS, NotificationCompat.CATEGORY_STATUS, osObjectSchemaInfoA);
        }

        @Override // io.realm.internal.c
        public final void b(io.realm.internal.c cVar, io.realm.internal.c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f7901e = aVar.f7901e;
            aVar2.f = aVar.f;
            aVar2.f7902g = aVar.f7902g;
            aVar2.f7903h = aVar.f7903h;
            aVar2.f7904i = aVar.f7904i;
            aVar2.f7905j = aVar.f7905j;
            aVar2.f7906k = aVar.f7906k;
            aVar2.f7907l = aVar.f7907l;
        }
    }

    static {
        OsObjectSchemaInfo.a aVar = new OsObjectSchemaInfo.a("AccidentReportParticipant", true, 8);
        RealmFieldType realmFieldType = RealmFieldType.STRING;
        aVar.b("reportPartyId", realmFieldType, false, false, false);
        aVar.b("identityType", realmFieldType, false, false, false);
        aVar.b("identityNumber", realmFieldType, false, false, false);
        aVar.b("partyRole", realmFieldType, false, false, false);
        aVar.b("name", realmFieldType, false, false, false);
        aVar.b("plate", realmFieldType, false, false, false);
        aVar.b("comment", realmFieldType, false, false, false);
        aVar.b(NotificationCompat.CATEGORY_STATUS, realmFieldType, false, false, false);
        f7898c = aVar.c();
    }

    public y1() {
        this.f7900b.c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static AccidentReportParticipant c(g0 g0Var, a aVar, AccidentReportParticipant accidentReportParticipant, HashMap map, Set set) {
        if ((accidentReportParticipant instanceof io.realm.internal.n) && !v0.isFrozen(accidentReportParticipant)) {
            io.realm.internal.n nVar = (io.realm.internal.n) accidentReportParticipant;
            if (nVar.b().f7533e != null) {
                io.realm.a aVar2 = nVar.b().f7533e;
                if (aVar2.f7454b != g0Var.f7454b) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                }
                if (aVar2.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                    return accidentReportParticipant;
                }
            }
        }
        io.realm.a.f7452h.get();
        s0 s0Var = (io.realm.internal.n) map.get(accidentReportParticipant);
        if (s0Var != null) {
            return (AccidentReportParticipant) s0Var;
        }
        s0 s0Var2 = (io.realm.internal.n) map.get(accidentReportParticipant);
        if (s0Var2 != null) {
            return (AccidentReportParticipant) s0Var2;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(g0Var.v(AccidentReportParticipant.class), set);
        osObjectBuilder.f(aVar.f7901e, accidentReportParticipant.getReportPartyId());
        osObjectBuilder.f(aVar.f, accidentReportParticipant.getIdentityType());
        osObjectBuilder.f(aVar.f7902g, accidentReportParticipant.getIdentityNumber());
        osObjectBuilder.f(aVar.f7903h, accidentReportParticipant.getPartyRole());
        osObjectBuilder.f(aVar.f7904i, accidentReportParticipant.getName());
        osObjectBuilder.f(aVar.f7905j, accidentReportParticipant.getPlate());
        osObjectBuilder.f(aVar.f7906k, accidentReportParticipant.getComment());
        osObjectBuilder.f(aVar.f7907l, accidentReportParticipant.getStatus());
        y1 y1VarD = d(g0Var, osObjectBuilder.g());
        map.put(accidentReportParticipant, y1VarD);
        return y1VarD;
    }

    public static y1 d(io.realm.a aVar, UncheckedRow uncheckedRow) {
        a.b bVar = io.realm.a.f7452h.get();
        bVar.b(aVar, uncheckedRow, aVar.i().a(AccidentReportParticipant.class), false, Collections.emptyList());
        y1 y1Var = new y1();
        bVar.a();
        return y1Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void e(g0 g0Var, AccidentReportParticipant accidentReportParticipant, AccidentReportParticipant accidentReportParticipant2, Set set) {
        a aVar = (a) g0Var.f7539j.a(AccidentReportParticipant.class);
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(g0Var.v(AccidentReportParticipant.class), set);
        osObjectBuilder.f(aVar.f7901e, accidentReportParticipant.getReportPartyId());
        osObjectBuilder.f(aVar.f, accidentReportParticipant.getIdentityType());
        osObjectBuilder.f(aVar.f7902g, accidentReportParticipant.getIdentityNumber());
        osObjectBuilder.f(aVar.f7903h, accidentReportParticipant.getPartyRole());
        osObjectBuilder.f(aVar.f7904i, accidentReportParticipant.getName());
        osObjectBuilder.f(aVar.f7905j, accidentReportParticipant.getPlate());
        osObjectBuilder.f(aVar.f7906k, accidentReportParticipant.getComment());
        osObjectBuilder.f(aVar.f7907l, accidentReportParticipant.getStatus());
        osObjectBuilder.i((io.realm.internal.n) accidentReportParticipant2);
    }

    @Override // io.realm.internal.n
    public final void a() {
        if (this.f7900b != null) {
            return;
        }
        a.b bVar = io.realm.a.f7452h.get();
        this.f7899a = (a) bVar.f7461c;
        f0<AccidentReportParticipant> f0Var = new f0<>(this);
        this.f7900b = f0Var;
        f0Var.f7533e = bVar.f7459a;
        f0Var.f7531c = bVar.f7460b;
        f0Var.f = bVar.f7462d;
        f0Var.f7534g = bVar.f7463e;
    }

    @Override // io.realm.internal.n
    public final f0<?> b() {
        return this.f7900b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || y1.class != obj.getClass()) {
            return false;
        }
        y1 y1Var = (y1) obj;
        io.realm.a aVar = this.f7900b.f7533e;
        io.realm.a aVar2 = y1Var.f7900b.f7533e;
        String str = aVar.f7455c.f7746c;
        String str2 = aVar2.f7455c.f7746c;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        if (aVar.j() != aVar2.j() || !aVar.f7457e.getVersionID().equals(aVar2.f7457e.getVersionID())) {
            return false;
        }
        String strM = this.f7900b.f7531c.q().m();
        String strM2 = y1Var.f7900b.f7531c.q().m();
        if (strM == null ? strM2 == null : strM.equals(strM2)) {
            return this.f7900b.f7531c.Y() == y1Var.f7900b.f7531c.Y();
        }
        return false;
    }

    public final int hashCode() {
        f0<AccidentReportParticipant> f0Var = this.f7900b;
        String str = f0Var.f7533e.f7455c.f7746c;
        String strM = f0Var.f7531c.q().m();
        long jY = this.f7900b.f7531c.Y();
        return ((((527 + (str != null ? str.hashCode() : 0)) * 31) + (strM != null ? strM.hashCode() : 0)) * 31) + ((int) ((jY >>> 32) ^ jY));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportParticipant, io.realm.z1
    /* renamed from: realmGet$comment */
    public final String getComment() {
        this.f7900b.f7533e.b();
        return this.f7900b.f7531c.R(this.f7899a.f7906k);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportParticipant, io.realm.z1
    /* renamed from: realmGet$identityNumber */
    public final String getIdentityNumber() {
        this.f7900b.f7533e.b();
        return this.f7900b.f7531c.R(this.f7899a.f7902g);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportParticipant, io.realm.z1
    /* renamed from: realmGet$identityType */
    public final String getIdentityType() {
        this.f7900b.f7533e.b();
        return this.f7900b.f7531c.R(this.f7899a.f);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportParticipant, io.realm.z1
    /* renamed from: realmGet$name */
    public final String getName() {
        this.f7900b.f7533e.b();
        return this.f7900b.f7531c.R(this.f7899a.f7904i);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportParticipant, io.realm.z1
    /* renamed from: realmGet$partyRole */
    public final String getPartyRole() {
        this.f7900b.f7533e.b();
        return this.f7900b.f7531c.R(this.f7899a.f7903h);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportParticipant, io.realm.z1
    /* renamed from: realmGet$plate */
    public final String getPlate() {
        this.f7900b.f7533e.b();
        return this.f7900b.f7531c.R(this.f7899a.f7905j);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportParticipant, io.realm.z1
    /* renamed from: realmGet$reportPartyId */
    public final String getReportPartyId() {
        this.f7900b.f7533e.b();
        return this.f7900b.f7531c.R(this.f7899a.f7901e);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportParticipant, io.realm.z1
    /* renamed from: realmGet$status */
    public final String getStatus() {
        this.f7900b.f7533e.b();
        return this.f7900b.f7531c.R(this.f7899a.f7907l);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportParticipant
    public final void realmSet$comment(String str) {
        f0<AccidentReportParticipant> f0Var = this.f7900b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7900b.f7531c.M(this.f7899a.f7906k);
                return;
            } else {
                this.f7900b.f7531c.o(this.f7899a.f7906k, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7899a.f7906k, pVar.Y());
            } else {
                pVar.q().x(this.f7899a.f7906k, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportParticipant
    public final void realmSet$identityNumber(String str) {
        f0<AccidentReportParticipant> f0Var = this.f7900b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7900b.f7531c.M(this.f7899a.f7902g);
                return;
            } else {
                this.f7900b.f7531c.o(this.f7899a.f7902g, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7899a.f7902g, pVar.Y());
            } else {
                pVar.q().x(this.f7899a.f7902g, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportParticipant
    public final void realmSet$identityType(String str) {
        f0<AccidentReportParticipant> f0Var = this.f7900b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7900b.f7531c.M(this.f7899a.f);
                return;
            } else {
                this.f7900b.f7531c.o(this.f7899a.f, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7899a.f, pVar.Y());
            } else {
                pVar.q().x(this.f7899a.f, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportParticipant
    public final void realmSet$name(String str) {
        f0<AccidentReportParticipant> f0Var = this.f7900b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7900b.f7531c.M(this.f7899a.f7904i);
                return;
            } else {
                this.f7900b.f7531c.o(this.f7899a.f7904i, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7899a.f7904i, pVar.Y());
            } else {
                pVar.q().x(this.f7899a.f7904i, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportParticipant
    public final void realmSet$partyRole(String str) {
        f0<AccidentReportParticipant> f0Var = this.f7900b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7900b.f7531c.M(this.f7899a.f7903h);
                return;
            } else {
                this.f7900b.f7531c.o(this.f7899a.f7903h, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7899a.f7903h, pVar.Y());
            } else {
                pVar.q().x(this.f7899a.f7903h, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportParticipant
    public final void realmSet$plate(String str) {
        f0<AccidentReportParticipant> f0Var = this.f7900b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7900b.f7531c.M(this.f7899a.f7905j);
                return;
            } else {
                this.f7900b.f7531c.o(this.f7899a.f7905j, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7899a.f7905j, pVar.Y());
            } else {
                pVar.q().x(this.f7899a.f7905j, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportParticipant
    public final void realmSet$reportPartyId(String str) {
        f0<AccidentReportParticipant> f0Var = this.f7900b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7900b.f7531c.M(this.f7899a.f7901e);
                return;
            } else {
                this.f7900b.f7531c.o(this.f7899a.f7901e, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7899a.f7901e, pVar.Y());
            } else {
                pVar.q().x(this.f7899a.f7901e, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportParticipant
    public final void realmSet$status(String str) {
        f0<AccidentReportParticipant> f0Var = this.f7900b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7900b.f7531c.M(this.f7899a.f7907l);
                return;
            } else {
                this.f7900b.f7531c.o(this.f7899a.f7907l, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7899a.f7907l, pVar.Y());
            } else {
                pVar.q().x(this.f7899a.f7907l, pVar.Y(), str);
            }
        }
    }

    public final String toString() {
        if (!v0.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb2 = new StringBuilder("AccidentReportParticipant = proxy[{reportPartyId:");
        sb2.append(getReportPartyId() != null ? getReportPartyId() : "null");
        sb2.append("},{identityType:");
        sb2.append(getIdentityType() != null ? getIdentityType() : "null");
        sb2.append("},{identityNumber:");
        sb2.append(getIdentityNumber() != null ? getIdentityNumber() : "null");
        sb2.append("},{partyRole:");
        sb2.append(getPartyRole() != null ? getPartyRole() : "null");
        sb2.append("},{name:");
        sb2.append(getName() != null ? getName() : "null");
        sb2.append("},{plate:");
        sb2.append(getPlate() != null ? getPlate() : "null");
        sb2.append("},{comment:");
        sb2.append(getComment() != null ? getComment() : "null");
        sb2.append("},{status:");
        return androidx.camera.camera2.internal.c.h(sb2, getStatus() != null ? getStatus() : "null", "}]");
    }
}
