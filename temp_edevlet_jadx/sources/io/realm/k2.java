package io.realm;

import io.realm.a;
import io.realm.exceptions.RealmException;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.Table;
import java.util.HashMap;
import tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm;

/* loaded from: classes2.dex */
public final class k2 extends ConceptServiceModelRealm implements io.realm.internal.n {

    /* renamed from: c, reason: collision with root package name */
    public static final OsObjectSchemaInfo f7695c;

    /* renamed from: a, reason: collision with root package name */
    public a f7696a;

    /* renamed from: b, reason: collision with root package name */
    public f0<ConceptServiceModelRealm> f7697b;

    public static final class a extends io.realm.internal.c {

        /* renamed from: e, reason: collision with root package name */
        public long f7698e;
        public long f;

        /* renamed from: g, reason: collision with root package name */
        public long f7699g;

        /* renamed from: h, reason: collision with root package name */
        public long f7700h;

        /* renamed from: i, reason: collision with root package name */
        public long f7701i;

        /* renamed from: j, reason: collision with root package name */
        public long f7702j;

        /* renamed from: k, reason: collision with root package name */
        public long f7703k;

        /* renamed from: l, reason: collision with root package name */
        public long f7704l;

        /* renamed from: m, reason: collision with root package name */
        public long f7705m;

        /* renamed from: n, reason: collision with root package name */
        public long f7706n;

        /* renamed from: o, reason: collision with root package name */
        public long f7707o;

        public a(OsSchemaInfo osSchemaInfo) {
            super(11, true);
            OsObjectSchemaInfo osObjectSchemaInfoA = osSchemaInfo.a("ConceptServiceModelRealm");
            this.f7698e = a("serviceCode", "serviceCode", osObjectSchemaInfoA);
            this.f = a("serviceName", "serviceName", osObjectSchemaInfoA);
            this.f7699g = a("institutionCode", "institutionCode", osObjectSchemaInfoA);
            this.f7700h = a("institutionName", "institutionName", osObjectSchemaInfoA);
            this.f7701i = a("configPath", "configPath", osObjectSchemaInfoA);
            this.f7702j = a("link", "link", osObjectSchemaInfoA);
            this.f7703k = a("explanation", "explanation", osObjectSchemaInfoA);
            this.f7704l = a("iconName", "iconName", osObjectSchemaInfoA);
            this.f7705m = a("baseUrl", "baseUrl", osObjectSchemaInfoA);
            this.f7706n = a("baseUrlCode", "baseUrlCode", osObjectSchemaInfoA);
            this.f7707o = a("serviceInsertion", "serviceInsertion", osObjectSchemaInfoA);
        }

        @Override // io.realm.internal.c
        public final void b(io.realm.internal.c cVar, io.realm.internal.c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f7698e = aVar.f7698e;
            aVar2.f = aVar.f;
            aVar2.f7699g = aVar.f7699g;
            aVar2.f7700h = aVar.f7700h;
            aVar2.f7701i = aVar.f7701i;
            aVar2.f7702j = aVar.f7702j;
            aVar2.f7703k = aVar.f7703k;
            aVar2.f7704l = aVar.f7704l;
            aVar2.f7705m = aVar.f7705m;
            aVar2.f7706n = aVar.f7706n;
            aVar2.f7707o = aVar.f7707o;
        }
    }

    static {
        OsObjectSchemaInfo.a aVar = new OsObjectSchemaInfo.a("ConceptServiceModelRealm", false, 11);
        RealmFieldType realmFieldType = RealmFieldType.INTEGER;
        aVar.b("serviceCode", realmFieldType, true, false, false);
        RealmFieldType realmFieldType2 = RealmFieldType.STRING;
        aVar.b("serviceName", realmFieldType2, false, false, false);
        aVar.b("institutionCode", realmFieldType, false, false, false);
        aVar.b("institutionName", realmFieldType2, false, false, false);
        aVar.b("configPath", realmFieldType2, false, false, false);
        aVar.b("link", realmFieldType2, false, false, false);
        aVar.b("explanation", realmFieldType2, false, false, false);
        aVar.b("iconName", realmFieldType2, false, false, false);
        aVar.b("baseUrl", realmFieldType2, false, false, false);
        aVar.b("baseUrlCode", realmFieldType, false, false, false);
        aVar.b("serviceInsertion", realmFieldType, false, true, false);
        f7695c = aVar.c();
    }

    public k2() {
        this.f7697b.c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long c(g0 g0Var, ConceptServiceModelRealm conceptServiceModelRealm, HashMap map) {
        if ((conceptServiceModelRealm instanceof io.realm.internal.n) && !v0.isFrozen(conceptServiceModelRealm)) {
            io.realm.internal.n nVar = (io.realm.internal.n) conceptServiceModelRealm;
            if (nVar.b().f7533e != null && nVar.b().f7533e.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                return nVar.b().f7531c.Y();
            }
        }
        Table tableV = g0Var.v(ConceptServiceModelRealm.class);
        long j10 = tableV.f7633a;
        a aVar = (a) g0Var.f7539j.a(ConceptServiceModelRealm.class);
        long j11 = aVar.f7698e;
        long jNativeFindFirstNull = conceptServiceModelRealm.getServiceCode() == null ? Table.nativeFindFirstNull(j10, j11) : Table.nativeFindFirstInt(j10, j11, conceptServiceModelRealm.getServiceCode().intValue());
        if (jNativeFindFirstNull == -1) {
            jNativeFindFirstNull = OsObject.createRowWithPrimaryKey(tableV, j11, conceptServiceModelRealm.getServiceCode());
        }
        long j12 = jNativeFindFirstNull;
        map.put(conceptServiceModelRealm, Long.valueOf(j12));
        String serviceName = conceptServiceModelRealm.getServiceName();
        long j13 = aVar.f;
        if (serviceName != null) {
            Table.nativeSetString(j10, j13, j12, serviceName, false);
        } else {
            Table.nativeSetNull(j10, j13, j12, false);
        }
        Integer institutionCode = conceptServiceModelRealm.getInstitutionCode();
        long j14 = aVar.f7699g;
        if (institutionCode != null) {
            Table.nativeSetLong(j10, j14, j12, institutionCode.longValue(), false);
        } else {
            Table.nativeSetNull(j10, j14, j12, false);
        }
        String institutionName = conceptServiceModelRealm.getInstitutionName();
        long j15 = aVar.f7700h;
        if (institutionName != null) {
            Table.nativeSetString(j10, j15, j12, institutionName, false);
        } else {
            Table.nativeSetNull(j10, j15, j12, false);
        }
        String configPath = conceptServiceModelRealm.getConfigPath();
        long j16 = aVar.f7701i;
        if (configPath != null) {
            Table.nativeSetString(j10, j16, j12, configPath, false);
        } else {
            Table.nativeSetNull(j10, j16, j12, false);
        }
        String link = conceptServiceModelRealm.getLink();
        long j17 = aVar.f7702j;
        if (link != null) {
            Table.nativeSetString(j10, j17, j12, link, false);
        } else {
            Table.nativeSetNull(j10, j17, j12, false);
        }
        String explanation = conceptServiceModelRealm.getExplanation();
        long j18 = aVar.f7703k;
        if (explanation != null) {
            Table.nativeSetString(j10, j18, j12, explanation, false);
        } else {
            Table.nativeSetNull(j10, j18, j12, false);
        }
        String iconName = conceptServiceModelRealm.getIconName();
        long j19 = aVar.f7704l;
        if (iconName != null) {
            Table.nativeSetString(j10, j19, j12, iconName, false);
        } else {
            Table.nativeSetNull(j10, j19, j12, false);
        }
        String baseUrl = conceptServiceModelRealm.getBaseUrl();
        long j20 = aVar.f7705m;
        if (baseUrl != null) {
            Table.nativeSetString(j10, j20, j12, baseUrl, false);
        } else {
            Table.nativeSetNull(j10, j20, j12, false);
        }
        Integer baseUrlCode = conceptServiceModelRealm.getBaseUrlCode();
        long j21 = aVar.f7706n;
        if (baseUrlCode != null) {
            Table.nativeSetLong(j10, j21, j12, baseUrlCode.longValue(), false);
        } else {
            Table.nativeSetNull(j10, j21, j12, false);
        }
        Integer serviceInsertion = conceptServiceModelRealm.getServiceInsertion();
        long j22 = aVar.f7707o;
        if (serviceInsertion != null) {
            Table.nativeSetLong(j10, j22, j12, serviceInsertion.longValue(), false);
        } else {
            Table.nativeSetNull(j10, j22, j12, false);
        }
        return j12;
    }

    @Override // io.realm.internal.n
    public final void a() {
        if (this.f7697b != null) {
            return;
        }
        a.b bVar = io.realm.a.f7452h.get();
        this.f7696a = (a) bVar.f7461c;
        f0<ConceptServiceModelRealm> f0Var = new f0<>(this);
        this.f7697b = f0Var;
        f0Var.f7533e = bVar.f7459a;
        f0Var.f7531c = bVar.f7460b;
        f0Var.f = bVar.f7462d;
        f0Var.f7534g = bVar.f7463e;
    }

    @Override // io.realm.internal.n
    public final f0<?> b() {
        return this.f7697b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || k2.class != obj.getClass()) {
            return false;
        }
        k2 k2Var = (k2) obj;
        io.realm.a aVar = this.f7697b.f7533e;
        io.realm.a aVar2 = k2Var.f7697b.f7533e;
        String str = aVar.f7455c.f7746c;
        String str2 = aVar2.f7455c.f7746c;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        if (aVar.j() != aVar2.j() || !aVar.f7457e.getVersionID().equals(aVar2.f7457e.getVersionID())) {
            return false;
        }
        String strM = this.f7697b.f7531c.q().m();
        String strM2 = k2Var.f7697b.f7531c.q().m();
        if (strM == null ? strM2 == null : strM.equals(strM2)) {
            return this.f7697b.f7531c.Y() == k2Var.f7697b.f7531c.Y();
        }
        return false;
    }

    public final int hashCode() {
        f0<ConceptServiceModelRealm> f0Var = this.f7697b;
        String str = f0Var.f7533e.f7455c.f7746c;
        String strM = f0Var.f7531c.q().m();
        long jY = this.f7697b.f7531c.Y();
        return ((((527 + (str != null ? str.hashCode() : 0)) * 31) + (strM != null ? strM.hashCode() : 0)) * 31) + ((int) ((jY >>> 32) ^ jY));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm, io.realm.l2
    /* renamed from: realmGet$baseUrl */
    public final String getBaseUrl() {
        this.f7697b.f7533e.b();
        return this.f7697b.f7531c.R(this.f7696a.f7705m);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm, io.realm.l2
    /* renamed from: realmGet$baseUrlCode */
    public final Integer getBaseUrlCode() {
        this.f7697b.f7533e.b();
        if (this.f7697b.f7531c.C(this.f7696a.f7706n)) {
            return null;
        }
        return Integer.valueOf((int) this.f7697b.f7531c.y(this.f7696a.f7706n));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm, io.realm.l2
    /* renamed from: realmGet$configPath */
    public final String getConfigPath() {
        this.f7697b.f7533e.b();
        return this.f7697b.f7531c.R(this.f7696a.f7701i);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm, io.realm.l2
    /* renamed from: realmGet$explanation */
    public final String getExplanation() {
        this.f7697b.f7533e.b();
        return this.f7697b.f7531c.R(this.f7696a.f7703k);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm, io.realm.l2
    /* renamed from: realmGet$iconName */
    public final String getIconName() {
        this.f7697b.f7533e.b();
        return this.f7697b.f7531c.R(this.f7696a.f7704l);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm, io.realm.l2
    /* renamed from: realmGet$institutionCode */
    public final Integer getInstitutionCode() {
        this.f7697b.f7533e.b();
        if (this.f7697b.f7531c.C(this.f7696a.f7699g)) {
            return null;
        }
        return Integer.valueOf((int) this.f7697b.f7531c.y(this.f7696a.f7699g));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm, io.realm.l2
    /* renamed from: realmGet$institutionName */
    public final String getInstitutionName() {
        this.f7697b.f7533e.b();
        return this.f7697b.f7531c.R(this.f7696a.f7700h);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm, io.realm.l2
    /* renamed from: realmGet$link */
    public final String getLink() {
        this.f7697b.f7533e.b();
        return this.f7697b.f7531c.R(this.f7696a.f7702j);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm, io.realm.l2
    /* renamed from: realmGet$serviceCode */
    public final Integer getServiceCode() {
        this.f7697b.f7533e.b();
        if (this.f7697b.f7531c.C(this.f7696a.f7698e)) {
            return null;
        }
        return Integer.valueOf((int) this.f7697b.f7531c.y(this.f7696a.f7698e));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm, io.realm.l2
    /* renamed from: realmGet$serviceInsertion */
    public final Integer getServiceInsertion() {
        this.f7697b.f7533e.b();
        if (this.f7697b.f7531c.C(this.f7696a.f7707o)) {
            return null;
        }
        return Integer.valueOf((int) this.f7697b.f7531c.y(this.f7696a.f7707o));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm, io.realm.l2
    /* renamed from: realmGet$serviceName */
    public final String getServiceName() {
        this.f7697b.f7533e.b();
        return this.f7697b.f7531c.R(this.f7696a.f);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm
    public final void realmSet$baseUrl(String str) {
        f0<ConceptServiceModelRealm> f0Var = this.f7697b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7697b.f7531c.M(this.f7696a.f7705m);
                return;
            } else {
                this.f7697b.f7531c.o(this.f7696a.f7705m, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7696a.f7705m, pVar.Y());
            } else {
                pVar.q().x(this.f7696a.f7705m, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm
    public final void realmSet$baseUrlCode(Integer num) {
        f0<ConceptServiceModelRealm> f0Var = this.f7697b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            f0<ConceptServiceModelRealm> f0Var2 = this.f7697b;
            if (num == null) {
                f0Var2.f7531c.M(this.f7696a.f7706n);
                return;
            } else {
                f0Var2.f7531c.A(this.f7696a.f7706n, num.intValue());
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (num == null) {
                pVar.q().w(this.f7696a.f7706n, pVar.Y());
            } else {
                pVar.q().v(this.f7696a.f7706n, pVar.Y(), num.intValue());
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm
    public final void realmSet$configPath(String str) {
        f0<ConceptServiceModelRealm> f0Var = this.f7697b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7697b.f7531c.M(this.f7696a.f7701i);
                return;
            } else {
                this.f7697b.f7531c.o(this.f7696a.f7701i, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7696a.f7701i, pVar.Y());
            } else {
                pVar.q().x(this.f7696a.f7701i, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm
    public final void realmSet$explanation(String str) {
        f0<ConceptServiceModelRealm> f0Var = this.f7697b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7697b.f7531c.M(this.f7696a.f7703k);
                return;
            } else {
                this.f7697b.f7531c.o(this.f7696a.f7703k, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7696a.f7703k, pVar.Y());
            } else {
                pVar.q().x(this.f7696a.f7703k, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm
    public final void realmSet$iconName(String str) {
        f0<ConceptServiceModelRealm> f0Var = this.f7697b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7697b.f7531c.M(this.f7696a.f7704l);
                return;
            } else {
                this.f7697b.f7531c.o(this.f7696a.f7704l, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7696a.f7704l, pVar.Y());
            } else {
                pVar.q().x(this.f7696a.f7704l, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm
    public final void realmSet$institutionCode(Integer num) {
        f0<ConceptServiceModelRealm> f0Var = this.f7697b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            f0<ConceptServiceModelRealm> f0Var2 = this.f7697b;
            if (num == null) {
                f0Var2.f7531c.M(this.f7696a.f7699g);
                return;
            } else {
                f0Var2.f7531c.A(this.f7696a.f7699g, num.intValue());
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (num == null) {
                pVar.q().w(this.f7696a.f7699g, pVar.Y());
            } else {
                pVar.q().v(this.f7696a.f7699g, pVar.Y(), num.intValue());
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm
    public final void realmSet$institutionName(String str) {
        f0<ConceptServiceModelRealm> f0Var = this.f7697b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7697b.f7531c.M(this.f7696a.f7700h);
                return;
            } else {
                this.f7697b.f7531c.o(this.f7696a.f7700h, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7696a.f7700h, pVar.Y());
            } else {
                pVar.q().x(this.f7696a.f7700h, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm
    public final void realmSet$link(String str) {
        f0<ConceptServiceModelRealm> f0Var = this.f7697b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7697b.f7531c.M(this.f7696a.f7702j);
                return;
            } else {
                this.f7697b.f7531c.o(this.f7696a.f7702j, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7696a.f7702j, pVar.Y());
            } else {
                pVar.q().x(this.f7696a.f7702j, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm
    public final void realmSet$serviceCode(Integer num) {
        f0<ConceptServiceModelRealm> f0Var = this.f7697b;
        if (f0Var.f7530b) {
            return;
        }
        f0Var.f7533e.b();
        throw new RealmException("Primary key field 'serviceCode' cannot be changed after object was created.");
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm
    public final void realmSet$serviceInsertion(Integer num) {
        f0<ConceptServiceModelRealm> f0Var = this.f7697b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            f0<ConceptServiceModelRealm> f0Var2 = this.f7697b;
            if (num == null) {
                f0Var2.f7531c.M(this.f7696a.f7707o);
                return;
            } else {
                f0Var2.f7531c.A(this.f7696a.f7707o, num.intValue());
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (num == null) {
                pVar.q().w(this.f7696a.f7707o, pVar.Y());
            } else {
                pVar.q().v(this.f7696a.f7707o, pVar.Y(), num.intValue());
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm
    public final void realmSet$serviceName(String str) {
        f0<ConceptServiceModelRealm> f0Var = this.f7697b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7697b.f7531c.M(this.f7696a.f);
                return;
            } else {
                this.f7697b.f7531c.o(this.f7696a.f, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7696a.f, pVar.Y());
            } else {
                pVar.q().x(this.f7696a.f, pVar.Y(), str);
            }
        }
    }

    public final String toString() {
        if (!v0.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb2 = new StringBuilder("ConceptServiceModelRealm = proxy[{serviceCode:");
        sb2.append(getServiceCode() != null ? getServiceCode() : "null");
        sb2.append("},{serviceName:");
        sb2.append(getServiceName() != null ? getServiceName() : "null");
        sb2.append("},{institutionCode:");
        sb2.append(getInstitutionCode() != null ? getInstitutionCode() : "null");
        sb2.append("},{institutionName:");
        sb2.append(getInstitutionName() != null ? getInstitutionName() : "null");
        sb2.append("},{configPath:");
        sb2.append(getConfigPath() != null ? getConfigPath() : "null");
        sb2.append("},{link:");
        sb2.append(getLink() != null ? getLink() : "null");
        sb2.append("},{explanation:");
        sb2.append(getExplanation() != null ? getExplanation() : "null");
        sb2.append("},{iconName:");
        sb2.append(getIconName() != null ? getIconName() : "null");
        sb2.append("},{baseUrl:");
        sb2.append(getBaseUrl() != null ? getBaseUrl() : "null");
        sb2.append("},{baseUrlCode:");
        sb2.append(getBaseUrlCode() != null ? getBaseUrlCode() : "null");
        sb2.append("},{serviceInsertion:");
        return androidx.camera.core.impl.a.e(sb2, getServiceInsertion() != null ? getServiceInsertion() : "null", "}]");
    }
}
