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
import java.util.Set;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;

/* loaded from: classes2.dex */
public final class u2 extends ServiceModelRealm implements io.realm.internal.n {

    /* renamed from: c, reason: collision with root package name */
    public static final OsObjectSchemaInfo f7860c;

    /* renamed from: a, reason: collision with root package name */
    public a f7861a;

    /* renamed from: b, reason: collision with root package name */
    public f0<ServiceModelRealm> f7862b;

    public static final class a extends io.realm.internal.c {

        /* renamed from: e, reason: collision with root package name */
        public long f7863e;
        public long f;

        /* renamed from: g, reason: collision with root package name */
        public long f7864g;

        /* renamed from: h, reason: collision with root package name */
        public long f7865h;

        /* renamed from: i, reason: collision with root package name */
        public long f7866i;

        /* renamed from: j, reason: collision with root package name */
        public long f7867j;

        /* renamed from: k, reason: collision with root package name */
        public long f7868k;

        /* renamed from: l, reason: collision with root package name */
        public long f7869l;

        /* renamed from: m, reason: collision with root package name */
        public long f7870m;

        /* renamed from: n, reason: collision with root package name */
        public long f7871n;

        /* renamed from: o, reason: collision with root package name */
        public long f7872o;

        public a(OsSchemaInfo osSchemaInfo) {
            super(11, true);
            OsObjectSchemaInfo osObjectSchemaInfoA = osSchemaInfo.a("ServiceModelRealm");
            this.f7863e = a("serviceCode", "serviceCode", osObjectSchemaInfoA);
            this.f = a("serviceName", "serviceName", osObjectSchemaInfoA);
            this.f7864g = a("institutionCode", "institutionCode", osObjectSchemaInfoA);
            this.f7865h = a("institutionName", "institutionName", osObjectSchemaInfoA);
            this.f7866i = a("configPath", "configPath", osObjectSchemaInfoA);
            this.f7867j = a("link", "link", osObjectSchemaInfoA);
            this.f7868k = a("explanation", "explanation", osObjectSchemaInfoA);
            this.f7869l = a("iconName", "iconName", osObjectSchemaInfoA);
            this.f7870m = a("baseUrl", "baseUrl", osObjectSchemaInfoA);
            this.f7871n = a("baseUrlCode", "baseUrlCode", osObjectSchemaInfoA);
            this.f7872o = a("isFavorite", "isFavorite", osObjectSchemaInfoA);
        }

        @Override // io.realm.internal.c
        public final void b(io.realm.internal.c cVar, io.realm.internal.c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f7863e = aVar.f7863e;
            aVar2.f = aVar.f;
            aVar2.f7864g = aVar.f7864g;
            aVar2.f7865h = aVar.f7865h;
            aVar2.f7866i = aVar.f7866i;
            aVar2.f7867j = aVar.f7867j;
            aVar2.f7868k = aVar.f7868k;
            aVar2.f7869l = aVar.f7869l;
            aVar2.f7870m = aVar.f7870m;
            aVar2.f7871n = aVar.f7871n;
            aVar2.f7872o = aVar.f7872o;
        }
    }

    static {
        OsObjectSchemaInfo.a aVar = new OsObjectSchemaInfo.a("ServiceModelRealm", false, 11);
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
        aVar.b("isFavorite", RealmFieldType.BOOLEAN, false, false, true);
        f7860c = aVar.c();
    }

    public u2() {
        this.f7862b.c();
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    public static ServiceModelRealm c(g0 g0Var, a aVar, ServiceModelRealm serviceModelRealm, boolean z10, HashMap map, Set set) {
        boolean z11;
        if ((serviceModelRealm instanceof io.realm.internal.n) && !v0.isFrozen(serviceModelRealm)) {
            io.realm.internal.n nVar = (io.realm.internal.n) serviceModelRealm;
            if (nVar.b().f7533e != null) {
                io.realm.a aVar2 = nVar.b().f7533e;
                if (aVar2.f7454b != g0Var.f7454b) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                }
                if (aVar2.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                    return serviceModelRealm;
                }
            }
        }
        a.c cVar = io.realm.a.f7452h;
        a.b bVar = cVar.get();
        s0 s0Var = (io.realm.internal.n) map.get(serviceModelRealm);
        if (s0Var != null) {
            return (ServiceModelRealm) s0Var;
        }
        u2 u2Var = null;
        if (z10) {
            Table tableV = g0Var.v(ServiceModelRealm.class);
            long j10 = aVar.f7863e;
            Integer serviceCode = serviceModelRealm.getServiceCode();
            long jD = serviceCode == null ? tableV.d(j10) : tableV.c(j10, serviceCode.longValue());
            if (jD == -1) {
                z11 = false;
            } else {
                try {
                    bVar.b(g0Var, tableV.o(jD), aVar, false, Collections.emptyList());
                    u2Var = new u2();
                    map.put(serviceModelRealm, u2Var);
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
            OsObjectBuilder osObjectBuilder = new OsObjectBuilder(g0Var.v(ServiceModelRealm.class), set);
            osObjectBuilder.c(aVar.f7863e, serviceModelRealm.getServiceCode());
            osObjectBuilder.f(aVar.f, serviceModelRealm.getServiceName());
            osObjectBuilder.c(aVar.f7864g, serviceModelRealm.getInstitutionCode());
            osObjectBuilder.f(aVar.f7865h, serviceModelRealm.getInstitutionName());
            osObjectBuilder.f(aVar.f7866i, serviceModelRealm.getConfigPath());
            osObjectBuilder.f(aVar.f7867j, serviceModelRealm.getLink());
            osObjectBuilder.f(aVar.f7868k, serviceModelRealm.getExplanation());
            osObjectBuilder.f(aVar.f7869l, serviceModelRealm.getIconName());
            osObjectBuilder.f(aVar.f7870m, serviceModelRealm.getBaseUrl());
            osObjectBuilder.c(aVar.f7871n, serviceModelRealm.getBaseUrlCode());
            osObjectBuilder.a(aVar.f7872o, Boolean.valueOf(serviceModelRealm.getIsFavorite()));
            osObjectBuilder.j();
            return u2Var;
        }
        s0 s0Var2 = (io.realm.internal.n) map.get(serviceModelRealm);
        if (s0Var2 != null) {
            return (ServiceModelRealm) s0Var2;
        }
        OsObjectBuilder osObjectBuilder2 = new OsObjectBuilder(g0Var.v(ServiceModelRealm.class), set);
        osObjectBuilder2.c(aVar.f7863e, serviceModelRealm.getServiceCode());
        osObjectBuilder2.f(aVar.f, serviceModelRealm.getServiceName());
        osObjectBuilder2.c(aVar.f7864g, serviceModelRealm.getInstitutionCode());
        osObjectBuilder2.f(aVar.f7865h, serviceModelRealm.getInstitutionName());
        osObjectBuilder2.f(aVar.f7866i, serviceModelRealm.getConfigPath());
        osObjectBuilder2.f(aVar.f7867j, serviceModelRealm.getLink());
        osObjectBuilder2.f(aVar.f7868k, serviceModelRealm.getExplanation());
        osObjectBuilder2.f(aVar.f7869l, serviceModelRealm.getIconName());
        osObjectBuilder2.f(aVar.f7870m, serviceModelRealm.getBaseUrl());
        osObjectBuilder2.c(aVar.f7871n, serviceModelRealm.getBaseUrlCode());
        osObjectBuilder2.a(aVar.f7872o, Boolean.valueOf(serviceModelRealm.getIsFavorite()));
        UncheckedRow uncheckedRowG = osObjectBuilder2.g();
        a.b bVar2 = cVar.get();
        bVar2.b(g0Var, uncheckedRowG, g0Var.f7539j.a(ServiceModelRealm.class), false, Collections.emptyList());
        u2 u2Var2 = new u2();
        bVar2.a();
        map.put(serviceModelRealm, u2Var2);
        return u2Var2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long d(g0 g0Var, ServiceModelRealm serviceModelRealm, HashMap map) {
        if ((serviceModelRealm instanceof io.realm.internal.n) && !v0.isFrozen(serviceModelRealm)) {
            io.realm.internal.n nVar = (io.realm.internal.n) serviceModelRealm;
            if (nVar.b().f7533e != null && nVar.b().f7533e.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                return nVar.b().f7531c.Y();
            }
        }
        Table tableV = g0Var.v(ServiceModelRealm.class);
        long j10 = tableV.f7633a;
        a aVar = (a) g0Var.f7539j.a(ServiceModelRealm.class);
        long j11 = aVar.f7863e;
        long jNativeFindFirstNull = serviceModelRealm.getServiceCode() == null ? Table.nativeFindFirstNull(j10, j11) : Table.nativeFindFirstInt(j10, j11, serviceModelRealm.getServiceCode().intValue());
        if (jNativeFindFirstNull == -1) {
            jNativeFindFirstNull = OsObject.createRowWithPrimaryKey(tableV, j11, serviceModelRealm.getServiceCode());
        }
        long j12 = jNativeFindFirstNull;
        map.put(serviceModelRealm, Long.valueOf(j12));
        String serviceName = serviceModelRealm.getServiceName();
        long j13 = aVar.f;
        if (serviceName != null) {
            Table.nativeSetString(j10, j13, j12, serviceName, false);
        } else {
            Table.nativeSetNull(j10, j13, j12, false);
        }
        Integer institutionCode = serviceModelRealm.getInstitutionCode();
        long j14 = aVar.f7864g;
        if (institutionCode != null) {
            Table.nativeSetLong(j10, j14, j12, institutionCode.longValue(), false);
        } else {
            Table.nativeSetNull(j10, j14, j12, false);
        }
        String institutionName = serviceModelRealm.getInstitutionName();
        long j15 = aVar.f7865h;
        if (institutionName != null) {
            Table.nativeSetString(j10, j15, j12, institutionName, false);
        } else {
            Table.nativeSetNull(j10, j15, j12, false);
        }
        String configPath = serviceModelRealm.getConfigPath();
        long j16 = aVar.f7866i;
        if (configPath != null) {
            Table.nativeSetString(j10, j16, j12, configPath, false);
        } else {
            Table.nativeSetNull(j10, j16, j12, false);
        }
        String link = serviceModelRealm.getLink();
        long j17 = aVar.f7867j;
        if (link != null) {
            Table.nativeSetString(j10, j17, j12, link, false);
        } else {
            Table.nativeSetNull(j10, j17, j12, false);
        }
        String explanation = serviceModelRealm.getExplanation();
        long j18 = aVar.f7868k;
        if (explanation != null) {
            Table.nativeSetString(j10, j18, j12, explanation, false);
        } else {
            Table.nativeSetNull(j10, j18, j12, false);
        }
        String iconName = serviceModelRealm.getIconName();
        long j19 = aVar.f7869l;
        if (iconName != null) {
            Table.nativeSetString(j10, j19, j12, iconName, false);
        } else {
            Table.nativeSetNull(j10, j19, j12, false);
        }
        String baseUrl = serviceModelRealm.getBaseUrl();
        long j20 = aVar.f7870m;
        if (baseUrl != null) {
            Table.nativeSetString(j10, j20, j12, baseUrl, false);
        } else {
            Table.nativeSetNull(j10, j20, j12, false);
        }
        Integer baseUrlCode = serviceModelRealm.getBaseUrlCode();
        long j21 = aVar.f7871n;
        if (baseUrlCode != null) {
            Table.nativeSetLong(j10, j21, j12, baseUrlCode.longValue(), false);
        } else {
            Table.nativeSetNull(j10, j21, j12, false);
        }
        Table.nativeSetBoolean(j10, aVar.f7872o, j12, serviceModelRealm.getIsFavorite(), false);
        return j12;
    }

    @Override // io.realm.internal.n
    public final void a() {
        if (this.f7862b != null) {
            return;
        }
        a.b bVar = io.realm.a.f7452h.get();
        this.f7861a = (a) bVar.f7461c;
        f0<ServiceModelRealm> f0Var = new f0<>(this);
        this.f7862b = f0Var;
        f0Var.f7533e = bVar.f7459a;
        f0Var.f7531c = bVar.f7460b;
        f0Var.f = bVar.f7462d;
        f0Var.f7534g = bVar.f7463e;
    }

    @Override // io.realm.internal.n
    public final f0<?> b() {
        return this.f7862b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || u2.class != obj.getClass()) {
            return false;
        }
        u2 u2Var = (u2) obj;
        io.realm.a aVar = this.f7862b.f7533e;
        io.realm.a aVar2 = u2Var.f7862b.f7533e;
        String str = aVar.f7455c.f7746c;
        String str2 = aVar2.f7455c.f7746c;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        if (aVar.j() != aVar2.j() || !aVar.f7457e.getVersionID().equals(aVar2.f7457e.getVersionID())) {
            return false;
        }
        String strM = this.f7862b.f7531c.q().m();
        String strM2 = u2Var.f7862b.f7531c.q().m();
        if (strM == null ? strM2 == null : strM.equals(strM2)) {
            return this.f7862b.f7531c.Y() == u2Var.f7862b.f7531c.Y();
        }
        return false;
    }

    public final int hashCode() {
        f0<ServiceModelRealm> f0Var = this.f7862b;
        String str = f0Var.f7533e.f7455c.f7746c;
        String strM = f0Var.f7531c.q().m();
        long jY = this.f7862b.f7531c.Y();
        return ((((527 + (str != null ? str.hashCode() : 0)) * 31) + (strM != null ? strM.hashCode() : 0)) * 31) + ((int) ((jY >>> 32) ^ jY));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm, io.realm.v2
    /* renamed from: realmGet$baseUrl */
    public final String getBaseUrl() {
        this.f7862b.f7533e.b();
        return this.f7862b.f7531c.R(this.f7861a.f7870m);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm, io.realm.v2
    /* renamed from: realmGet$baseUrlCode */
    public final Integer getBaseUrlCode() {
        this.f7862b.f7533e.b();
        if (this.f7862b.f7531c.C(this.f7861a.f7871n)) {
            return null;
        }
        return Integer.valueOf((int) this.f7862b.f7531c.y(this.f7861a.f7871n));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm, io.realm.v2
    /* renamed from: realmGet$configPath */
    public final String getConfigPath() {
        this.f7862b.f7533e.b();
        return this.f7862b.f7531c.R(this.f7861a.f7866i);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm, io.realm.v2
    /* renamed from: realmGet$explanation */
    public final String getExplanation() {
        this.f7862b.f7533e.b();
        return this.f7862b.f7531c.R(this.f7861a.f7868k);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm, io.realm.v2
    /* renamed from: realmGet$iconName */
    public final String getIconName() {
        this.f7862b.f7533e.b();
        return this.f7862b.f7531c.R(this.f7861a.f7869l);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm, io.realm.v2
    /* renamed from: realmGet$institutionCode */
    public final Integer getInstitutionCode() {
        this.f7862b.f7533e.b();
        if (this.f7862b.f7531c.C(this.f7861a.f7864g)) {
            return null;
        }
        return Integer.valueOf((int) this.f7862b.f7531c.y(this.f7861a.f7864g));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm, io.realm.v2
    /* renamed from: realmGet$institutionName */
    public final String getInstitutionName() {
        this.f7862b.f7533e.b();
        return this.f7862b.f7531c.R(this.f7861a.f7865h);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm, io.realm.v2
    /* renamed from: realmGet$isFavorite */
    public final boolean getIsFavorite() {
        this.f7862b.f7533e.b();
        return this.f7862b.f7531c.x(this.f7861a.f7872o);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm, io.realm.v2
    /* renamed from: realmGet$link */
    public final String getLink() {
        this.f7862b.f7533e.b();
        return this.f7862b.f7531c.R(this.f7861a.f7867j);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm, io.realm.v2
    /* renamed from: realmGet$serviceCode */
    public final Integer getServiceCode() {
        this.f7862b.f7533e.b();
        if (this.f7862b.f7531c.C(this.f7861a.f7863e)) {
            return null;
        }
        return Integer.valueOf((int) this.f7862b.f7531c.y(this.f7861a.f7863e));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm, io.realm.v2
    /* renamed from: realmGet$serviceName */
    public final String getServiceName() {
        this.f7862b.f7533e.b();
        return this.f7862b.f7531c.R(this.f7861a.f);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm
    public final void realmSet$baseUrl(String str) {
        f0<ServiceModelRealm> f0Var = this.f7862b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7862b.f7531c.M(this.f7861a.f7870m);
                return;
            } else {
                this.f7862b.f7531c.o(this.f7861a.f7870m, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7861a.f7870m, pVar.Y());
            } else {
                pVar.q().x(this.f7861a.f7870m, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm
    public final void realmSet$baseUrlCode(Integer num) {
        f0<ServiceModelRealm> f0Var = this.f7862b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            f0<ServiceModelRealm> f0Var2 = this.f7862b;
            if (num == null) {
                f0Var2.f7531c.M(this.f7861a.f7871n);
                return;
            } else {
                f0Var2.f7531c.A(this.f7861a.f7871n, num.intValue());
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (num == null) {
                pVar.q().w(this.f7861a.f7871n, pVar.Y());
            } else {
                pVar.q().v(this.f7861a.f7871n, pVar.Y(), num.intValue());
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm
    public final void realmSet$configPath(String str) {
        f0<ServiceModelRealm> f0Var = this.f7862b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7862b.f7531c.M(this.f7861a.f7866i);
                return;
            } else {
                this.f7862b.f7531c.o(this.f7861a.f7866i, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7861a.f7866i, pVar.Y());
            } else {
                pVar.q().x(this.f7861a.f7866i, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm
    public final void realmSet$explanation(String str) {
        f0<ServiceModelRealm> f0Var = this.f7862b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7862b.f7531c.M(this.f7861a.f7868k);
                return;
            } else {
                this.f7862b.f7531c.o(this.f7861a.f7868k, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7861a.f7868k, pVar.Y());
            } else {
                pVar.q().x(this.f7861a.f7868k, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm
    public final void realmSet$iconName(String str) {
        f0<ServiceModelRealm> f0Var = this.f7862b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7862b.f7531c.M(this.f7861a.f7869l);
                return;
            } else {
                this.f7862b.f7531c.o(this.f7861a.f7869l, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7861a.f7869l, pVar.Y());
            } else {
                pVar.q().x(this.f7861a.f7869l, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm
    public final void realmSet$institutionCode(Integer num) {
        f0<ServiceModelRealm> f0Var = this.f7862b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            f0<ServiceModelRealm> f0Var2 = this.f7862b;
            if (num == null) {
                f0Var2.f7531c.M(this.f7861a.f7864g);
                return;
            } else {
                f0Var2.f7531c.A(this.f7861a.f7864g, num.intValue());
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (num == null) {
                pVar.q().w(this.f7861a.f7864g, pVar.Y());
            } else {
                pVar.q().v(this.f7861a.f7864g, pVar.Y(), num.intValue());
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm
    public final void realmSet$institutionName(String str) {
        f0<ServiceModelRealm> f0Var = this.f7862b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7862b.f7531c.M(this.f7861a.f7865h);
                return;
            } else {
                this.f7862b.f7531c.o(this.f7861a.f7865h, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7861a.f7865h, pVar.Y());
            } else {
                pVar.q().x(this.f7861a.f7865h, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm
    public final void realmSet$isFavorite(boolean z10) {
        f0<ServiceModelRealm> f0Var = this.f7862b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            this.f7862b.f7531c.t(this.f7861a.f7872o, z10);
        } else if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            pVar.q().s(this.f7861a.f7872o, pVar.Y(), z10);
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm
    public final void realmSet$link(String str) {
        f0<ServiceModelRealm> f0Var = this.f7862b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7862b.f7531c.M(this.f7861a.f7867j);
                return;
            } else {
                this.f7862b.f7531c.o(this.f7861a.f7867j, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7861a.f7867j, pVar.Y());
            } else {
                pVar.q().x(this.f7861a.f7867j, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm
    public final void realmSet$serviceCode(Integer num) {
        f0<ServiceModelRealm> f0Var = this.f7862b;
        if (f0Var.f7530b) {
            return;
        }
        f0Var.f7533e.b();
        throw new RealmException("Primary key field 'serviceCode' cannot be changed after object was created.");
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm
    public final void realmSet$serviceName(String str) {
        f0<ServiceModelRealm> f0Var = this.f7862b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7862b.f7531c.M(this.f7861a.f);
                return;
            } else {
                this.f7862b.f7531c.o(this.f7861a.f, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7861a.f, pVar.Y());
            } else {
                pVar.q().x(this.f7861a.f, pVar.Y(), str);
            }
        }
    }

    public final String toString() {
        if (!v0.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb2 = new StringBuilder("ServiceModelRealm = proxy[{serviceCode:");
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
        sb2.append("},{isFavorite:");
        sb2.append(getIsFavorite());
        sb2.append("}]");
        return sb2.toString();
    }
}
