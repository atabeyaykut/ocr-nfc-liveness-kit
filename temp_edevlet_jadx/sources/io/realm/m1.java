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
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionContactModelRealm;

/* loaded from: classes2.dex */
public final class m1 extends InstitutionContactModelRealm implements io.realm.internal.n {

    /* renamed from: c, reason: collision with root package name */
    public static final OsObjectSchemaInfo f7723c;

    /* renamed from: a, reason: collision with root package name */
    public a f7724a;

    /* renamed from: b, reason: collision with root package name */
    public f0<InstitutionContactModelRealm> f7725b;

    public static final class a extends io.realm.internal.c {

        /* renamed from: e, reason: collision with root package name */
        public long f7726e;
        public long f;

        /* renamed from: g, reason: collision with root package name */
        public long f7727g;

        /* renamed from: h, reason: collision with root package name */
        public long f7728h;

        /* renamed from: i, reason: collision with root package name */
        public long f7729i;

        /* renamed from: j, reason: collision with root package name */
        public long f7730j;

        /* renamed from: k, reason: collision with root package name */
        public long f7731k;

        /* renamed from: l, reason: collision with root package name */
        public long f7732l;

        /* renamed from: m, reason: collision with root package name */
        public long f7733m;

        /* renamed from: n, reason: collision with root package name */
        public long f7734n;

        public a(OsSchemaInfo osSchemaInfo) {
            super(10, true);
            OsObjectSchemaInfo osObjectSchemaInfoA = osSchemaInfo.a("InstitutionContactModelRealm");
            this.f7726e = a("contactId", "contactId", osObjectSchemaInfoA);
            this.f = a("institutionCode", "institutionCode", osObjectSchemaInfoA);
            this.f7727g = a("contactAddress", "contactAddress", osObjectSchemaInfoA);
            this.f7728h = a("contactEmail", "contactEmail", osObjectSchemaInfoA);
            this.f7729i = a("contactName", "contactName", osObjectSchemaInfoA);
            this.f7730j = a("contactWebsite", "contactWebsite", osObjectSchemaInfoA);
            this.f7731k = a("contactPhone", "contactPhone", osObjectSchemaInfoA);
            this.f7732l = a("contactLongitude", "contactLongitude", osObjectSchemaInfoA);
            this.f7733m = a("contactLatitude", "contactLatitude", osObjectSchemaInfoA);
            this.f7734n = a("isMainInstitution", "isMainInstitution", osObjectSchemaInfoA);
        }

        @Override // io.realm.internal.c
        public final void b(io.realm.internal.c cVar, io.realm.internal.c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f7726e = aVar.f7726e;
            aVar2.f = aVar.f;
            aVar2.f7727g = aVar.f7727g;
            aVar2.f7728h = aVar.f7728h;
            aVar2.f7729i = aVar.f7729i;
            aVar2.f7730j = aVar.f7730j;
            aVar2.f7731k = aVar.f7731k;
            aVar2.f7732l = aVar.f7732l;
            aVar2.f7733m = aVar.f7733m;
            aVar2.f7734n = aVar.f7734n;
        }
    }

    static {
        OsObjectSchemaInfo.a aVar = new OsObjectSchemaInfo.a("InstitutionContactModelRealm", false, 10);
        RealmFieldType realmFieldType = RealmFieldType.INTEGER;
        aVar.b("contactId", realmFieldType, true, false, true);
        aVar.b("institutionCode", realmFieldType, false, false, true);
        RealmFieldType realmFieldType2 = RealmFieldType.STRING;
        aVar.b("contactAddress", realmFieldType2, false, false, false);
        aVar.b("contactEmail", realmFieldType2, false, false, false);
        aVar.b("contactName", realmFieldType2, false, false, false);
        aVar.b("contactWebsite", realmFieldType2, false, false, false);
        aVar.b("contactPhone", realmFieldType2, false, false, false);
        aVar.b("contactLongitude", realmFieldType2, false, false, false);
        aVar.b("contactLatitude", realmFieldType2, false, false, false);
        aVar.b("isMainInstitution", RealmFieldType.BOOLEAN, false, false, true);
        f7723c = aVar.c();
    }

    public m1() {
        this.f7725b.c();
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    public static InstitutionContactModelRealm c(g0 g0Var, a aVar, InstitutionContactModelRealm institutionContactModelRealm, boolean z10, HashMap map, Set set) {
        boolean z11;
        if ((institutionContactModelRealm instanceof io.realm.internal.n) && !v0.isFrozen(institutionContactModelRealm)) {
            io.realm.internal.n nVar = (io.realm.internal.n) institutionContactModelRealm;
            if (nVar.b().f7533e != null) {
                io.realm.a aVar2 = nVar.b().f7533e;
                if (aVar2.f7454b != g0Var.f7454b) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                }
                if (aVar2.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                    return institutionContactModelRealm;
                }
            }
        }
        a.c cVar = io.realm.a.f7452h;
        a.b bVar = cVar.get();
        s0 s0Var = (io.realm.internal.n) map.get(institutionContactModelRealm);
        if (s0Var != null) {
            return (InstitutionContactModelRealm) s0Var;
        }
        m1 m1Var = null;
        if (z10) {
            Table tableV = g0Var.v(InstitutionContactModelRealm.class);
            long jC = tableV.c(aVar.f7726e, institutionContactModelRealm.getContactId());
            if (jC == -1) {
                z11 = false;
            } else {
                try {
                    bVar.b(g0Var, tableV.o(jC), aVar, false, Collections.emptyList());
                    m1Var = new m1();
                    map.put(institutionContactModelRealm, m1Var);
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
            OsObjectBuilder osObjectBuilder = new OsObjectBuilder(g0Var.v(InstitutionContactModelRealm.class), set);
            osObjectBuilder.c(aVar.f7726e, Integer.valueOf(institutionContactModelRealm.getContactId()));
            osObjectBuilder.c(aVar.f, Integer.valueOf(institutionContactModelRealm.getInstitutionCode()));
            osObjectBuilder.f(aVar.f7727g, institutionContactModelRealm.getContactAddress());
            osObjectBuilder.f(aVar.f7728h, institutionContactModelRealm.getContactEmail());
            osObjectBuilder.f(aVar.f7729i, institutionContactModelRealm.getContactName());
            osObjectBuilder.f(aVar.f7730j, institutionContactModelRealm.getContactWebsite());
            osObjectBuilder.f(aVar.f7731k, institutionContactModelRealm.getContactPhone());
            osObjectBuilder.f(aVar.f7732l, institutionContactModelRealm.getContactLongitude());
            osObjectBuilder.f(aVar.f7733m, institutionContactModelRealm.getContactLatitude());
            osObjectBuilder.a(aVar.f7734n, Boolean.valueOf(institutionContactModelRealm.getIsMainInstitution()));
            osObjectBuilder.j();
            return m1Var;
        }
        s0 s0Var2 = (io.realm.internal.n) map.get(institutionContactModelRealm);
        if (s0Var2 != null) {
            return (InstitutionContactModelRealm) s0Var2;
        }
        OsObjectBuilder osObjectBuilder2 = new OsObjectBuilder(g0Var.v(InstitutionContactModelRealm.class), set);
        osObjectBuilder2.c(aVar.f7726e, Integer.valueOf(institutionContactModelRealm.getContactId()));
        osObjectBuilder2.c(aVar.f, Integer.valueOf(institutionContactModelRealm.getInstitutionCode()));
        osObjectBuilder2.f(aVar.f7727g, institutionContactModelRealm.getContactAddress());
        osObjectBuilder2.f(aVar.f7728h, institutionContactModelRealm.getContactEmail());
        osObjectBuilder2.f(aVar.f7729i, institutionContactModelRealm.getContactName());
        osObjectBuilder2.f(aVar.f7730j, institutionContactModelRealm.getContactWebsite());
        osObjectBuilder2.f(aVar.f7731k, institutionContactModelRealm.getContactPhone());
        osObjectBuilder2.f(aVar.f7732l, institutionContactModelRealm.getContactLongitude());
        osObjectBuilder2.f(aVar.f7733m, institutionContactModelRealm.getContactLatitude());
        osObjectBuilder2.a(aVar.f7734n, Boolean.valueOf(institutionContactModelRealm.getIsMainInstitution()));
        UncheckedRow uncheckedRowG = osObjectBuilder2.g();
        a.b bVar2 = cVar.get();
        bVar2.b(g0Var, uncheckedRowG, g0Var.f7539j.a(InstitutionContactModelRealm.class), false, Collections.emptyList());
        m1 m1Var2 = new m1();
        bVar2.a();
        map.put(institutionContactModelRealm, m1Var2);
        return m1Var2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long d(g0 g0Var, InstitutionContactModelRealm institutionContactModelRealm, HashMap map) {
        if ((institutionContactModelRealm instanceof io.realm.internal.n) && !v0.isFrozen(institutionContactModelRealm)) {
            io.realm.internal.n nVar = (io.realm.internal.n) institutionContactModelRealm;
            if (nVar.b().f7533e != null && nVar.b().f7533e.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                return nVar.b().f7531c.Y();
            }
        }
        Table tableV = g0Var.v(InstitutionContactModelRealm.class);
        long j10 = tableV.f7633a;
        a aVar = (a) g0Var.f7539j.a(InstitutionContactModelRealm.class);
        long j11 = aVar.f7726e;
        long jNativeFindFirstInt = Integer.valueOf(institutionContactModelRealm.getContactId()) != null ? Table.nativeFindFirstInt(j10, j11, institutionContactModelRealm.getContactId()) : -1L;
        if (jNativeFindFirstInt == -1) {
            jNativeFindFirstInt = OsObject.createRowWithPrimaryKey(tableV, j11, Integer.valueOf(institutionContactModelRealm.getContactId()));
        }
        long j12 = jNativeFindFirstInt;
        map.put(institutionContactModelRealm, Long.valueOf(j12));
        Table.nativeSetLong(j10, aVar.f, j12, institutionContactModelRealm.getInstitutionCode(), false);
        String contactAddress = institutionContactModelRealm.getContactAddress();
        long j13 = aVar.f7727g;
        if (contactAddress != null) {
            Table.nativeSetString(j10, j13, j12, contactAddress, false);
        } else {
            Table.nativeSetNull(j10, j13, j12, false);
        }
        String contactEmail = institutionContactModelRealm.getContactEmail();
        long j14 = aVar.f7728h;
        if (contactEmail != null) {
            Table.nativeSetString(j10, j14, j12, contactEmail, false);
        } else {
            Table.nativeSetNull(j10, j14, j12, false);
        }
        String contactName = institutionContactModelRealm.getContactName();
        long j15 = aVar.f7729i;
        if (contactName != null) {
            Table.nativeSetString(j10, j15, j12, contactName, false);
        } else {
            Table.nativeSetNull(j10, j15, j12, false);
        }
        String contactWebsite = institutionContactModelRealm.getContactWebsite();
        long j16 = aVar.f7730j;
        if (contactWebsite != null) {
            Table.nativeSetString(j10, j16, j12, contactWebsite, false);
        } else {
            Table.nativeSetNull(j10, j16, j12, false);
        }
        String contactPhone = institutionContactModelRealm.getContactPhone();
        long j17 = aVar.f7731k;
        if (contactPhone != null) {
            Table.nativeSetString(j10, j17, j12, contactPhone, false);
        } else {
            Table.nativeSetNull(j10, j17, j12, false);
        }
        String contactLongitude = institutionContactModelRealm.getContactLongitude();
        long j18 = aVar.f7732l;
        if (contactLongitude != null) {
            Table.nativeSetString(j10, j18, j12, contactLongitude, false);
        } else {
            Table.nativeSetNull(j10, j18, j12, false);
        }
        String contactLatitude = institutionContactModelRealm.getContactLatitude();
        long j19 = aVar.f7733m;
        if (contactLatitude != null) {
            Table.nativeSetString(j10, j19, j12, contactLatitude, false);
        } else {
            Table.nativeSetNull(j10, j19, j12, false);
        }
        Table.nativeSetBoolean(j10, aVar.f7734n, j12, institutionContactModelRealm.getIsMainInstitution(), false);
        return j12;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void e(g0 g0Var, Iterator it, HashMap map) {
        long jCreateRowWithPrimaryKey;
        Table tableV = g0Var.v(InstitutionContactModelRealm.class);
        long j10 = tableV.f7633a;
        a aVar = (a) g0Var.f7539j.a(InstitutionContactModelRealm.class);
        long j11 = aVar.f7726e;
        while (it.hasNext()) {
            InstitutionContactModelRealm institutionContactModelRealm = (InstitutionContactModelRealm) it.next();
            if (!map.containsKey(institutionContactModelRealm)) {
                if ((institutionContactModelRealm instanceof io.realm.internal.n) && !v0.isFrozen(institutionContactModelRealm)) {
                    io.realm.internal.n nVar = (io.realm.internal.n) institutionContactModelRealm;
                    if (nVar.b().f7533e != null && nVar.b().f7533e.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                        map.put(institutionContactModelRealm, Long.valueOf(nVar.b().f7531c.Y()));
                    }
                }
                if (Integer.valueOf(institutionContactModelRealm.getContactId()) != null) {
                    jCreateRowWithPrimaryKey = Table.nativeFindFirstInt(j10, j11, institutionContactModelRealm.getContactId());
                } else {
                    jCreateRowWithPrimaryKey = -1;
                }
                if (jCreateRowWithPrimaryKey == -1) {
                    jCreateRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(tableV, j11, Integer.valueOf(institutionContactModelRealm.getContactId()));
                }
                long j12 = jCreateRowWithPrimaryKey;
                map.put(institutionContactModelRealm, Long.valueOf(j12));
                long j13 = j11;
                Table.nativeSetLong(j10, aVar.f, j12, institutionContactModelRealm.getInstitutionCode(), false);
                String contactAddress = institutionContactModelRealm.getContactAddress();
                long j14 = aVar.f7727g;
                if (contactAddress != null) {
                    Table.nativeSetString(j10, j14, j12, contactAddress, false);
                } else {
                    Table.nativeSetNull(j10, j14, j12, false);
                }
                String contactEmail = institutionContactModelRealm.getContactEmail();
                long j15 = aVar.f7728h;
                if (contactEmail != null) {
                    Table.nativeSetString(j10, j15, j12, contactEmail, false);
                } else {
                    Table.nativeSetNull(j10, j15, j12, false);
                }
                String contactName = institutionContactModelRealm.getContactName();
                long j16 = aVar.f7729i;
                if (contactName != null) {
                    Table.nativeSetString(j10, j16, j12, contactName, false);
                } else {
                    Table.nativeSetNull(j10, j16, j12, false);
                }
                String contactWebsite = institutionContactModelRealm.getContactWebsite();
                long j17 = aVar.f7730j;
                if (contactWebsite != null) {
                    Table.nativeSetString(j10, j17, j12, contactWebsite, false);
                } else {
                    Table.nativeSetNull(j10, j17, j12, false);
                }
                String contactPhone = institutionContactModelRealm.getContactPhone();
                long j18 = aVar.f7731k;
                if (contactPhone != null) {
                    Table.nativeSetString(j10, j18, j12, contactPhone, false);
                } else {
                    Table.nativeSetNull(j10, j18, j12, false);
                }
                String contactLongitude = institutionContactModelRealm.getContactLongitude();
                long j19 = aVar.f7732l;
                if (contactLongitude != null) {
                    Table.nativeSetString(j10, j19, j12, contactLongitude, false);
                } else {
                    Table.nativeSetNull(j10, j19, j12, false);
                }
                String contactLatitude = institutionContactModelRealm.getContactLatitude();
                long j20 = aVar.f7733m;
                if (contactLatitude != null) {
                    Table.nativeSetString(j10, j20, j12, contactLatitude, false);
                } else {
                    Table.nativeSetNull(j10, j20, j12, false);
                }
                Table.nativeSetBoolean(j10, aVar.f7734n, j12, institutionContactModelRealm.getIsMainInstitution(), false);
                j11 = j13;
            }
        }
    }

    @Override // io.realm.internal.n
    public final void a() {
        if (this.f7725b != null) {
            return;
        }
        a.b bVar = io.realm.a.f7452h.get();
        this.f7724a = (a) bVar.f7461c;
        f0<InstitutionContactModelRealm> f0Var = new f0<>(this);
        this.f7725b = f0Var;
        f0Var.f7533e = bVar.f7459a;
        f0Var.f7531c = bVar.f7460b;
        f0Var.f = bVar.f7462d;
        f0Var.f7534g = bVar.f7463e;
    }

    @Override // io.realm.internal.n
    public final f0<?> b() {
        return this.f7725b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || m1.class != obj.getClass()) {
            return false;
        }
        m1 m1Var = (m1) obj;
        io.realm.a aVar = this.f7725b.f7533e;
        io.realm.a aVar2 = m1Var.f7725b.f7533e;
        String str = aVar.f7455c.f7746c;
        String str2 = aVar2.f7455c.f7746c;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        if (aVar.j() != aVar2.j() || !aVar.f7457e.getVersionID().equals(aVar2.f7457e.getVersionID())) {
            return false;
        }
        String strM = this.f7725b.f7531c.q().m();
        String strM2 = m1Var.f7725b.f7531c.q().m();
        if (strM == null ? strM2 == null : strM.equals(strM2)) {
            return this.f7725b.f7531c.Y() == m1Var.f7725b.f7531c.Y();
        }
        return false;
    }

    public final int hashCode() {
        f0<InstitutionContactModelRealm> f0Var = this.f7725b;
        String str = f0Var.f7533e.f7455c.f7746c;
        String strM = f0Var.f7531c.q().m();
        long jY = this.f7725b.f7531c.Y();
        return ((((527 + (str != null ? str.hashCode() : 0)) * 31) + (strM != null ? strM.hashCode() : 0)) * 31) + ((int) ((jY >>> 32) ^ jY));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionContactModelRealm, io.realm.n1
    /* renamed from: realmGet$contactAddress */
    public final String getContactAddress() {
        this.f7725b.f7533e.b();
        return this.f7725b.f7531c.R(this.f7724a.f7727g);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionContactModelRealm, io.realm.n1
    /* renamed from: realmGet$contactEmail */
    public final String getContactEmail() {
        this.f7725b.f7533e.b();
        return this.f7725b.f7531c.R(this.f7724a.f7728h);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionContactModelRealm, io.realm.n1
    /* renamed from: realmGet$contactId */
    public final int getContactId() {
        this.f7725b.f7533e.b();
        return (int) this.f7725b.f7531c.y(this.f7724a.f7726e);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionContactModelRealm, io.realm.n1
    /* renamed from: realmGet$contactLatitude */
    public final String getContactLatitude() {
        this.f7725b.f7533e.b();
        return this.f7725b.f7531c.R(this.f7724a.f7733m);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionContactModelRealm, io.realm.n1
    /* renamed from: realmGet$contactLongitude */
    public final String getContactLongitude() {
        this.f7725b.f7533e.b();
        return this.f7725b.f7531c.R(this.f7724a.f7732l);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionContactModelRealm, io.realm.n1
    /* renamed from: realmGet$contactName */
    public final String getContactName() {
        this.f7725b.f7533e.b();
        return this.f7725b.f7531c.R(this.f7724a.f7729i);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionContactModelRealm, io.realm.n1
    /* renamed from: realmGet$contactPhone */
    public final String getContactPhone() {
        this.f7725b.f7533e.b();
        return this.f7725b.f7531c.R(this.f7724a.f7731k);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionContactModelRealm, io.realm.n1
    /* renamed from: realmGet$contactWebsite */
    public final String getContactWebsite() {
        this.f7725b.f7533e.b();
        return this.f7725b.f7531c.R(this.f7724a.f7730j);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionContactModelRealm, io.realm.n1
    /* renamed from: realmGet$institutionCode */
    public final int getInstitutionCode() {
        this.f7725b.f7533e.b();
        return (int) this.f7725b.f7531c.y(this.f7724a.f);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionContactModelRealm, io.realm.n1
    /* renamed from: realmGet$isMainInstitution */
    public final boolean getIsMainInstitution() {
        this.f7725b.f7533e.b();
        return this.f7725b.f7531c.x(this.f7724a.f7734n);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionContactModelRealm
    public final void realmSet$contactAddress(String str) {
        f0<InstitutionContactModelRealm> f0Var = this.f7725b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7725b.f7531c.M(this.f7724a.f7727g);
                return;
            } else {
                this.f7725b.f7531c.o(this.f7724a.f7727g, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7724a.f7727g, pVar.Y());
            } else {
                pVar.q().x(this.f7724a.f7727g, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionContactModelRealm
    public final void realmSet$contactEmail(String str) {
        f0<InstitutionContactModelRealm> f0Var = this.f7725b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7725b.f7531c.M(this.f7724a.f7728h);
                return;
            } else {
                this.f7725b.f7531c.o(this.f7724a.f7728h, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7724a.f7728h, pVar.Y());
            } else {
                pVar.q().x(this.f7724a.f7728h, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionContactModelRealm
    public final void realmSet$contactId(int r22) {
        f0<InstitutionContactModelRealm> f0Var = this.f7725b;
        if (f0Var.f7530b) {
            return;
        }
        f0Var.f7533e.b();
        throw new RealmException("Primary key field 'contactId' cannot be changed after object was created.");
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionContactModelRealm
    public final void realmSet$contactLatitude(String str) {
        f0<InstitutionContactModelRealm> f0Var = this.f7725b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7725b.f7531c.M(this.f7724a.f7733m);
                return;
            } else {
                this.f7725b.f7531c.o(this.f7724a.f7733m, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7724a.f7733m, pVar.Y());
            } else {
                pVar.q().x(this.f7724a.f7733m, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionContactModelRealm
    public final void realmSet$contactLongitude(String str) {
        f0<InstitutionContactModelRealm> f0Var = this.f7725b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7725b.f7531c.M(this.f7724a.f7732l);
                return;
            } else {
                this.f7725b.f7531c.o(this.f7724a.f7732l, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7724a.f7732l, pVar.Y());
            } else {
                pVar.q().x(this.f7724a.f7732l, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionContactModelRealm
    public final void realmSet$contactName(String str) {
        f0<InstitutionContactModelRealm> f0Var = this.f7725b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7725b.f7531c.M(this.f7724a.f7729i);
                return;
            } else {
                this.f7725b.f7531c.o(this.f7724a.f7729i, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7724a.f7729i, pVar.Y());
            } else {
                pVar.q().x(this.f7724a.f7729i, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionContactModelRealm
    public final void realmSet$contactPhone(String str) {
        f0<InstitutionContactModelRealm> f0Var = this.f7725b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7725b.f7531c.M(this.f7724a.f7731k);
                return;
            } else {
                this.f7725b.f7531c.o(this.f7724a.f7731k, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7724a.f7731k, pVar.Y());
            } else {
                pVar.q().x(this.f7724a.f7731k, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionContactModelRealm
    public final void realmSet$contactWebsite(String str) {
        f0<InstitutionContactModelRealm> f0Var = this.f7725b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7725b.f7531c.M(this.f7724a.f7730j);
                return;
            } else {
                this.f7725b.f7531c.o(this.f7724a.f7730j, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7724a.f7730j, pVar.Y());
            } else {
                pVar.q().x(this.f7724a.f7730j, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionContactModelRealm
    public final void realmSet$institutionCode(int r92) {
        f0<InstitutionContactModelRealm> f0Var = this.f7725b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            this.f7725b.f7531c.A(this.f7724a.f, r92);
        } else if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            pVar.q().v(this.f7724a.f, pVar.Y(), r92);
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionContactModelRealm
    public final void realmSet$isMainInstitution(boolean z10) {
        f0<InstitutionContactModelRealm> f0Var = this.f7725b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            this.f7725b.f7531c.t(this.f7724a.f7734n, z10);
        } else if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            pVar.q().s(this.f7724a.f7734n, pVar.Y(), z10);
        }
    }

    public final String toString() {
        if (!v0.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb2 = new StringBuilder("InstitutionContactModelRealm = proxy[{contactId:");
        sb2.append(getContactId());
        sb2.append("},{institutionCode:");
        sb2.append(getInstitutionCode());
        sb2.append("},{contactAddress:");
        sb2.append(getContactAddress() != null ? getContactAddress() : "null");
        sb2.append("},{contactEmail:");
        sb2.append(getContactEmail() != null ? getContactEmail() : "null");
        sb2.append("},{contactName:");
        sb2.append(getContactName() != null ? getContactName() : "null");
        sb2.append("},{contactWebsite:");
        sb2.append(getContactWebsite() != null ? getContactWebsite() : "null");
        sb2.append("},{contactPhone:");
        sb2.append(getContactPhone() != null ? getContactPhone() : "null");
        sb2.append("},{contactLongitude:");
        sb2.append(getContactLongitude() != null ? getContactLongitude() : "null");
        sb2.append("},{contactLatitude:");
        sb2.append(getContactLatitude() != null ? getContactLatitude() : "null");
        sb2.append("},{isMainInstitution:");
        sb2.append(getIsMainInstitution());
        sb2.append("}]");
        return sb2.toString();
    }
}
