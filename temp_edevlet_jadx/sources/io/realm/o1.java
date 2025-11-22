package io.realm;

import io.realm.a;
import io.realm.exceptions.RealmException;
import io.realm.internal.OsList;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.Table;
import io.realm.internal.UncheckedRow;
import io.realm.internal.objectstore.OsObjectBuilder;
import io.realm.m1;
import io.realm.u2;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionContactModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;

/* loaded from: classes2.dex */
public final class o1 extends InstitutionModelRealm implements io.realm.internal.n {

    /* renamed from: e, reason: collision with root package name */
    public static final OsObjectSchemaInfo f7770e;

    /* renamed from: a, reason: collision with root package name */
    public a f7771a;

    /* renamed from: b, reason: collision with root package name */
    public f0<InstitutionModelRealm> f7772b;

    /* renamed from: c, reason: collision with root package name */
    public q0<ServiceModelRealm> f7773c;

    /* renamed from: d, reason: collision with root package name */
    public q0<InstitutionContactModelRealm> f7774d;

    public static final class a extends io.realm.internal.c {

        /* renamed from: e, reason: collision with root package name */
        public long f7775e;
        public long f;

        /* renamed from: g, reason: collision with root package name */
        public long f7776g;

        /* renamed from: h, reason: collision with root package name */
        public long f7777h;

        /* renamed from: i, reason: collision with root package name */
        public long f7778i;

        /* renamed from: j, reason: collision with root package name */
        public long f7779j;

        /* renamed from: k, reason: collision with root package name */
        public long f7780k;

        /* renamed from: l, reason: collision with root package name */
        public long f7781l;

        /* renamed from: m, reason: collision with root package name */
        public long f7782m;

        /* renamed from: n, reason: collision with root package name */
        public long f7783n;

        /* renamed from: o, reason: collision with root package name */
        public long f7784o;

        public a(OsSchemaInfo osSchemaInfo) {
            super(11, true);
            OsObjectSchemaInfo osObjectSchemaInfoA = osSchemaInfo.a("InstitutionModelRealm");
            this.f7775e = a("institutionId", "institutionId", osObjectSchemaInfoA);
            this.f = a("institutionCode", "institutionCode", osObjectSchemaInfoA);
            this.f7776g = a("institutionName", "institutionName", osObjectSchemaInfoA);
            this.f7777h = a("serviceCount", "serviceCount", osObjectSchemaInfoA);
            this.f7778i = a("sectionCode", "sectionCode", osObjectSchemaInfoA);
            this.f7779j = a("cityCode", "cityCode", osObjectSchemaInfoA);
            this.f7780k = a("categoryCode", "categoryCode", osObjectSchemaInfoA);
            this.f7781l = a("serviceList", "serviceList", osObjectSchemaInfoA);
            this.f7782m = a("contactList", "contactList", osObjectSchemaInfoA);
            this.f7783n = a("isOpened", "isOpened", osObjectSchemaInfoA);
            this.f7784o = a("iconName", "iconName", osObjectSchemaInfoA);
        }

        @Override // io.realm.internal.c
        public final void b(io.realm.internal.c cVar, io.realm.internal.c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f7775e = aVar.f7775e;
            aVar2.f = aVar.f;
            aVar2.f7776g = aVar.f7776g;
            aVar2.f7777h = aVar.f7777h;
            aVar2.f7778i = aVar.f7778i;
            aVar2.f7779j = aVar.f7779j;
            aVar2.f7780k = aVar.f7780k;
            aVar2.f7781l = aVar.f7781l;
            aVar2.f7782m = aVar.f7782m;
            aVar2.f7783n = aVar.f7783n;
            aVar2.f7784o = aVar.f7784o;
        }
    }

    static {
        OsObjectSchemaInfo.a aVar = new OsObjectSchemaInfo.a("InstitutionModelRealm", false, 11);
        RealmFieldType realmFieldType = RealmFieldType.INTEGER;
        aVar.b("institutionId", realmFieldType, true, false, true);
        aVar.b("institutionCode", realmFieldType, false, false, true);
        RealmFieldType realmFieldType2 = RealmFieldType.STRING;
        aVar.b("institutionName", realmFieldType2, false, false, true);
        aVar.b("serviceCount", realmFieldType, false, false, true);
        aVar.b("sectionCode", realmFieldType, false, false, true);
        aVar.b("cityCode", realmFieldType, false, false, true);
        aVar.b("categoryCode", realmFieldType, false, false, true);
        RealmFieldType realmFieldType3 = RealmFieldType.LIST;
        aVar.a("serviceList", realmFieldType3, "ServiceModelRealm");
        aVar.a("contactList", realmFieldType3, "InstitutionContactModelRealm");
        aVar.b("isOpened", RealmFieldType.BOOLEAN, false, false, true);
        aVar.b("iconName", realmFieldType2, false, false, true);
        f7770e = aVar.c();
    }

    public o1() {
        this.f7772b.c();
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    public static InstitutionModelRealm c(g0 g0Var, a aVar, InstitutionModelRealm institutionModelRealm, boolean z10, HashMap map, Set set) {
        o1 o1Var;
        boolean z11;
        int r16;
        u uVar;
        o1 o1Var2;
        u uVar2;
        int r162;
        q0 q0Var;
        u uVar3;
        o1 o1Var3;
        Class<ServiceModelRealm> cls;
        if ((institutionModelRealm instanceof io.realm.internal.n) && !v0.isFrozen(institutionModelRealm)) {
            io.realm.internal.n nVar = (io.realm.internal.n) institutionModelRealm;
            if (nVar.b().f7533e != null) {
                io.realm.a aVar2 = nVar.b().f7533e;
                if (aVar2.f7454b != g0Var.f7454b) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                }
                if (aVar2.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                    return institutionModelRealm;
                }
            }
        }
        a.c cVar = io.realm.a.f7452h;
        a.b bVar = cVar.get();
        s0 s0Var = (io.realm.internal.n) map.get(institutionModelRealm);
        if (s0Var != null) {
            return (InstitutionModelRealm) s0Var;
        }
        o1 o1Var4 = null;
        if (z10) {
            Table tableV = g0Var.v(InstitutionModelRealm.class);
            long jC = tableV.c(aVar.f7775e, institutionModelRealm.getInstitutionId());
            if (jC == -1) {
                o1Var = null;
                z11 = false;
            } else {
                try {
                    bVar.b(g0Var, tableV.o(jC), aVar, false, Collections.emptyList());
                    o1Var4 = new o1();
                    map.put(institutionModelRealm, o1Var4);
                    bVar.a();
                    o1Var = o1Var4;
                    z11 = z10;
                } catch (Throwable th2) {
                    bVar.a();
                    throw th2;
                }
            }
        } else {
            o1Var = o1Var4;
            z11 = z10;
        }
        Class<ServiceModelRealm> cls2 = ServiceModelRealm.class;
        if (!z11) {
            s0 s0Var2 = (io.realm.internal.n) map.get(institutionModelRealm);
            if (s0Var2 != null) {
                return (InstitutionModelRealm) s0Var2;
            }
            OsObjectBuilder osObjectBuilder = new OsObjectBuilder(g0Var.v(InstitutionModelRealm.class), set);
            osObjectBuilder.c(aVar.f7775e, Integer.valueOf(institutionModelRealm.getInstitutionId()));
            osObjectBuilder.c(aVar.f, Integer.valueOf(institutionModelRealm.getInstitutionCode()));
            osObjectBuilder.f(aVar.f7776g, institutionModelRealm.getInstitutionName());
            osObjectBuilder.c(aVar.f7777h, Integer.valueOf(institutionModelRealm.getServiceCount()));
            osObjectBuilder.c(aVar.f7778i, Integer.valueOf(institutionModelRealm.getSectionCode()));
            osObjectBuilder.c(aVar.f7779j, Integer.valueOf(institutionModelRealm.getCityCode()));
            osObjectBuilder.c(aVar.f7780k, Integer.valueOf(institutionModelRealm.getCategoryCode()));
            osObjectBuilder.a(aVar.f7783n, Boolean.valueOf(institutionModelRealm.getIsOpened()));
            osObjectBuilder.f(aVar.f7784o, institutionModelRealm.getIconName());
            UncheckedRow uncheckedRowG = osObjectBuilder.g();
            a.b bVar2 = cVar.get();
            u uVar4 = g0Var.f7539j;
            bVar2.b(g0Var, uncheckedRowG, uVar4.a(InstitutionModelRealm.class), false, Collections.emptyList());
            o1 o1Var5 = new o1();
            bVar2.a();
            map.put(institutionModelRealm, o1Var5);
            q0<ServiceModelRealm> serviceList = institutionModelRealm.getServiceList();
            if (serviceList != null) {
                q0<ServiceModelRealm> serviceList2 = o1Var5.getServiceList();
                serviceList2.clear();
                int r6 = 0;
                while (r6 < serviceList.size()) {
                    ServiceModelRealm serviceModelRealm = serviceList.get(r6);
                    ServiceModelRealm serviceModelRealmC = (ServiceModelRealm) map.get(serviceModelRealm);
                    if (serviceModelRealmC != null) {
                        r16 = r6;
                    } else {
                        r16 = r6;
                        serviceModelRealmC = u2.c(g0Var, (u2.a) uVar4.a(cls2), serviceModelRealm, z10, map, set);
                    }
                    serviceList2.add(serviceModelRealmC);
                    r6 = r16 + 1;
                }
            }
            q0<InstitutionContactModelRealm> contactList = institutionModelRealm.getContactList();
            if (contactList != null) {
                q0<InstitutionContactModelRealm> contactList2 = o1Var5.getContactList();
                contactList2.clear();
                for (int r12 = 0; r12 < contactList.size(); r12++) {
                    InstitutionContactModelRealm institutionContactModelRealm = contactList.get(r12);
                    InstitutionContactModelRealm institutionContactModelRealmC = (InstitutionContactModelRealm) map.get(institutionContactModelRealm);
                    if (institutionContactModelRealmC == null) {
                        institutionContactModelRealmC = m1.c(g0Var, (m1.a) uVar4.a(InstitutionContactModelRealm.class), institutionContactModelRealm, z10, map, set);
                    }
                    contactList2.add(institutionContactModelRealmC);
                }
            }
            return o1Var5;
        }
        OsObjectBuilder osObjectBuilder2 = new OsObjectBuilder(g0Var.v(InstitutionModelRealm.class), set);
        osObjectBuilder2.c(aVar.f7775e, Integer.valueOf(institutionModelRealm.getInstitutionId()));
        osObjectBuilder2.c(aVar.f, Integer.valueOf(institutionModelRealm.getInstitutionCode()));
        osObjectBuilder2.f(aVar.f7776g, institutionModelRealm.getInstitutionName());
        osObjectBuilder2.c(aVar.f7777h, Integer.valueOf(institutionModelRealm.getServiceCount()));
        osObjectBuilder2.c(aVar.f7778i, Integer.valueOf(institutionModelRealm.getSectionCode()));
        osObjectBuilder2.c(aVar.f7779j, Integer.valueOf(institutionModelRealm.getCityCode()));
        osObjectBuilder2.c(aVar.f7780k, Integer.valueOf(institutionModelRealm.getCategoryCode()));
        q0<ServiceModelRealm> serviceList3 = institutionModelRealm.getServiceList();
        u uVar5 = g0Var.f7539j;
        if (serviceList3 != null) {
            q0 q0Var2 = new q0();
            int r32 = 0;
            while (r32 < serviceList3.size()) {
                ServiceModelRealm serviceModelRealm2 = serviceList3.get(r32);
                ServiceModelRealm serviceModelRealmC2 = (ServiceModelRealm) map.get(serviceModelRealm2);
                if (serviceModelRealmC2 != null) {
                    r162 = r32;
                    q0Var = q0Var2;
                    uVar3 = uVar5;
                    o1Var3 = o1Var;
                    cls = cls2;
                } else {
                    r162 = r32;
                    q0Var = q0Var2;
                    uVar3 = uVar5;
                    o1Var3 = o1Var;
                    cls = cls2;
                    serviceModelRealmC2 = u2.c(g0Var, (u2.a) uVar5.a(cls2), serviceModelRealm2, true, map, set);
                }
                q0Var.add(serviceModelRealmC2);
                r32 = r162 + 1;
                cls2 = cls;
                q0Var2 = q0Var;
                o1Var = o1Var3;
                uVar5 = uVar3;
            }
            uVar = uVar5;
            o1Var2 = o1Var;
            osObjectBuilder2.e(aVar.f7781l, q0Var2);
        } else {
            uVar = uVar5;
            o1Var2 = o1Var;
            osObjectBuilder2.e(aVar.f7781l, new q0());
        }
        q0<InstitutionContactModelRealm> contactList3 = institutionModelRealm.getContactList();
        if (contactList3 != null) {
            q0 q0Var3 = new q0();
            int r14 = 0;
            while (r14 < contactList3.size()) {
                InstitutionContactModelRealm institutionContactModelRealm2 = contactList3.get(r14);
                InstitutionContactModelRealm institutionContactModelRealmC2 = (InstitutionContactModelRealm) map.get(institutionContactModelRealm2);
                if (institutionContactModelRealmC2 != null) {
                    uVar2 = uVar;
                } else {
                    u uVar6 = uVar;
                    uVar2 = uVar6;
                    institutionContactModelRealmC2 = m1.c(g0Var, (m1.a) uVar6.a(InstitutionContactModelRealm.class), institutionContactModelRealm2, true, map, set);
                }
                q0Var3.add(institutionContactModelRealmC2);
                r14++;
                uVar = uVar2;
            }
            osObjectBuilder2.e(aVar.f7782m, q0Var3);
        } else {
            osObjectBuilder2.e(aVar.f7782m, new q0());
        }
        osObjectBuilder2.a(aVar.f7783n, Boolean.valueOf(institutionModelRealm.getIsOpened()));
        osObjectBuilder2.f(aVar.f7784o, institutionModelRealm.getIconName());
        osObjectBuilder2.j();
        return o1Var2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long d(g0 g0Var, InstitutionModelRealm institutionModelRealm, HashMap map) {
        if ((institutionModelRealm instanceof io.realm.internal.n) && !v0.isFrozen(institutionModelRealm)) {
            io.realm.internal.n nVar = (io.realm.internal.n) institutionModelRealm;
            if (nVar.b().f7533e != null && nVar.b().f7533e.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                return nVar.b().f7531c.Y();
            }
        }
        Table tableV = g0Var.v(InstitutionModelRealm.class);
        long j10 = tableV.f7633a;
        a aVar = (a) g0Var.f7539j.a(InstitutionModelRealm.class);
        long j11 = aVar.f7775e;
        long jNativeFindFirstInt = Integer.valueOf(institutionModelRealm.getInstitutionId()) != null ? Table.nativeFindFirstInt(j10, j11, institutionModelRealm.getInstitutionId()) : -1L;
        if (jNativeFindFirstInt == -1) {
            jNativeFindFirstInt = OsObject.createRowWithPrimaryKey(tableV, j11, Integer.valueOf(institutionModelRealm.getInstitutionId()));
        }
        long j12 = jNativeFindFirstInt;
        map.put(institutionModelRealm, Long.valueOf(j12));
        Table.nativeSetLong(j10, aVar.f, j12, institutionModelRealm.getInstitutionCode(), false);
        String institutionName = institutionModelRealm.getInstitutionName();
        long j13 = aVar.f7776g;
        if (institutionName != null) {
            Table.nativeSetString(j10, j13, j12, institutionName, false);
        } else {
            Table.nativeSetNull(j10, j13, j12, false);
        }
        Table.nativeSetLong(j10, aVar.f7777h, j12, institutionModelRealm.getServiceCount(), false);
        Table.nativeSetLong(j10, aVar.f7778i, j12, institutionModelRealm.getSectionCode(), false);
        Table.nativeSetLong(j10, aVar.f7779j, j12, institutionModelRealm.getCityCode(), false);
        Table.nativeSetLong(j10, aVar.f7780k, j12, institutionModelRealm.getCategoryCode(), false);
        OsList osList = new OsList(tableV.o(j12), aVar.f7781l);
        q0<ServiceModelRealm> serviceList = institutionModelRealm.getServiceList();
        if (serviceList == null || serviceList.size() != osList.W()) {
            osList.I();
            if (serviceList != null) {
                Iterator<ServiceModelRealm> it = serviceList.iterator();
                while (it.hasNext()) {
                    ServiceModelRealm next = it.next();
                    Long lValueOf = (Long) map.get(next);
                    if (lValueOf == null) {
                        lValueOf = Long.valueOf(u2.d(g0Var, next, map));
                    }
                    osList.k(lValueOf.longValue());
                }
            }
        } else {
            int r92 = 0;
            for (int size = serviceList.size(); r92 < size; size = size) {
                ServiceModelRealm serviceModelRealm = serviceList.get(r92);
                Long lValueOf2 = (Long) map.get(serviceModelRealm);
                if (lValueOf2 == null) {
                    lValueOf2 = Long.valueOf(u2.d(g0Var, serviceModelRealm, map));
                }
                osList.T(r92, lValueOf2.longValue());
                r92++;
            }
        }
        OsList osList2 = new OsList(tableV.o(j12), aVar.f7782m);
        q0<InstitutionContactModelRealm> contactList = institutionModelRealm.getContactList();
        if (contactList == null || contactList.size() != osList2.W()) {
            osList2.I();
            if (contactList != null) {
                Iterator<InstitutionContactModelRealm> it2 = contactList.iterator();
                while (it2.hasNext()) {
                    InstitutionContactModelRealm next2 = it2.next();
                    Long lValueOf3 = (Long) map.get(next2);
                    if (lValueOf3 == null) {
                        lValueOf3 = Long.valueOf(m1.d(g0Var, next2, map));
                    }
                    osList2.k(lValueOf3.longValue());
                }
            }
        } else {
            int size2 = contactList.size();
            for (int r72 = 0; r72 < size2; r72++) {
                InstitutionContactModelRealm institutionContactModelRealm = contactList.get(r72);
                Long lValueOf4 = (Long) map.get(institutionContactModelRealm);
                if (lValueOf4 == null) {
                    lValueOf4 = Long.valueOf(m1.d(g0Var, institutionContactModelRealm, map));
                }
                osList2.T(r72, lValueOf4.longValue());
            }
        }
        Table.nativeSetBoolean(j10, aVar.f7783n, j12, institutionModelRealm.getIsOpened(), false);
        String iconName = institutionModelRealm.getIconName();
        long j14 = aVar.f7784o;
        if (iconName != null) {
            Table.nativeSetString(j10, j14, j12, iconName, false);
        } else {
            Table.nativeSetNull(j10, j14, j12, false);
        }
        return j12;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void e(g0 g0Var, Iterator it, HashMap map) {
        long j10;
        Table tableV = g0Var.v(InstitutionModelRealm.class);
        long j11 = tableV.f7633a;
        a aVar = (a) g0Var.f7539j.a(InstitutionModelRealm.class);
        long j12 = aVar.f7775e;
        while (it.hasNext()) {
            InstitutionModelRealm institutionModelRealm = (InstitutionModelRealm) it.next();
            if (!map.containsKey(institutionModelRealm)) {
                if ((institutionModelRealm instanceof io.realm.internal.n) && !v0.isFrozen(institutionModelRealm)) {
                    io.realm.internal.n nVar = (io.realm.internal.n) institutionModelRealm;
                    if (nVar.b().f7533e != null && nVar.b().f7533e.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                        map.put(institutionModelRealm, Long.valueOf(nVar.b().f7531c.Y()));
                    }
                }
                long jNativeFindFirstInt = Integer.valueOf(institutionModelRealm.getInstitutionId()) != null ? Table.nativeFindFirstInt(j11, j12, institutionModelRealm.getInstitutionId()) : -1L;
                if (jNativeFindFirstInt == -1) {
                    jNativeFindFirstInt = OsObject.createRowWithPrimaryKey(tableV, j12, Integer.valueOf(institutionModelRealm.getInstitutionId()));
                }
                long j13 = jNativeFindFirstInt;
                map.put(institutionModelRealm, Long.valueOf(j13));
                long j14 = j12;
                Table.nativeSetLong(j11, aVar.f, j13, institutionModelRealm.getInstitutionCode(), false);
                String institutionName = institutionModelRealm.getInstitutionName();
                long j15 = aVar.f7776g;
                if (institutionName != null) {
                    Table.nativeSetString(j11, j15, j13, institutionName, false);
                } else {
                    Table.nativeSetNull(j11, j15, j13, false);
                }
                Table.nativeSetLong(j11, aVar.f7777h, j13, institutionModelRealm.getServiceCount(), false);
                Table.nativeSetLong(j11, aVar.f7778i, j13, institutionModelRealm.getSectionCode(), false);
                Table.nativeSetLong(j11, aVar.f7779j, j13, institutionModelRealm.getCityCode(), false);
                Table.nativeSetLong(j11, aVar.f7780k, j13, institutionModelRealm.getCategoryCode(), false);
                long j16 = j13;
                OsList osList = new OsList(tableV.o(j16), aVar.f7781l);
                q0<ServiceModelRealm> serviceList = institutionModelRealm.getServiceList();
                if (serviceList == null || serviceList.size() != osList.W()) {
                    osList.I();
                    if (serviceList != null) {
                        Iterator<ServiceModelRealm> it2 = serviceList.iterator();
                        while (it2.hasNext()) {
                            ServiceModelRealm next = it2.next();
                            Long lValueOf = (Long) map.get(next);
                            if (lValueOf == null) {
                                lValueOf = Long.valueOf(u2.d(g0Var, next, map));
                            }
                            osList.k(lValueOf.longValue());
                        }
                    }
                } else {
                    int r82 = 0;
                    for (int size = serviceList.size(); r82 < size; size = size) {
                        ServiceModelRealm serviceModelRealm = serviceList.get(r82);
                        Long lValueOf2 = (Long) map.get(serviceModelRealm);
                        if (lValueOf2 == null) {
                            lValueOf2 = Long.valueOf(u2.d(g0Var, serviceModelRealm, map));
                        }
                        osList.T(r82, lValueOf2.longValue());
                        r82++;
                    }
                }
                OsList osList2 = new OsList(tableV.o(j16), aVar.f7782m);
                q0<InstitutionContactModelRealm> contactList = institutionModelRealm.getContactList();
                if (contactList == null || contactList.size() != osList2.W()) {
                    j10 = j16;
                    osList2.I();
                    if (contactList != null) {
                        Iterator<InstitutionContactModelRealm> it3 = contactList.iterator();
                        while (it3.hasNext()) {
                            InstitutionContactModelRealm next2 = it3.next();
                            Long lValueOf3 = (Long) map.get(next2);
                            if (lValueOf3 == null) {
                                lValueOf3 = Long.valueOf(m1.d(g0Var, next2, map));
                            }
                            osList2.k(lValueOf3.longValue());
                        }
                    }
                } else {
                    int size2 = contactList.size();
                    int r72 = 0;
                    while (r72 < size2) {
                        InstitutionContactModelRealm institutionContactModelRealm = contactList.get(r72);
                        Long lValueOf4 = (Long) map.get(institutionContactModelRealm);
                        if (lValueOf4 == null) {
                            lValueOf4 = Long.valueOf(m1.d(g0Var, institutionContactModelRealm, map));
                        }
                        osList2.T(r72, lValueOf4.longValue());
                        r72++;
                        j16 = j16;
                    }
                    j10 = j16;
                }
                long j17 = j10;
                Table.nativeSetBoolean(j11, aVar.f7783n, j10, institutionModelRealm.getIsOpened(), false);
                String iconName = institutionModelRealm.getIconName();
                long j18 = aVar.f7784o;
                if (iconName != null) {
                    Table.nativeSetString(j11, j18, j17, iconName, false);
                } else {
                    Table.nativeSetNull(j11, j18, j17, false);
                }
                j12 = j14;
            }
        }
    }

    @Override // io.realm.internal.n
    public final void a() {
        if (this.f7772b != null) {
            return;
        }
        a.b bVar = io.realm.a.f7452h.get();
        this.f7771a = (a) bVar.f7461c;
        f0<InstitutionModelRealm> f0Var = new f0<>(this);
        this.f7772b = f0Var;
        f0Var.f7533e = bVar.f7459a;
        f0Var.f7531c = bVar.f7460b;
        f0Var.f = bVar.f7462d;
        f0Var.f7534g = bVar.f7463e;
    }

    @Override // io.realm.internal.n
    public final f0<?> b() {
        return this.f7772b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || o1.class != obj.getClass()) {
            return false;
        }
        o1 o1Var = (o1) obj;
        io.realm.a aVar = this.f7772b.f7533e;
        io.realm.a aVar2 = o1Var.f7772b.f7533e;
        String str = aVar.f7455c.f7746c;
        String str2 = aVar2.f7455c.f7746c;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        if (aVar.j() != aVar2.j() || !aVar.f7457e.getVersionID().equals(aVar2.f7457e.getVersionID())) {
            return false;
        }
        String strM = this.f7772b.f7531c.q().m();
        String strM2 = o1Var.f7772b.f7531c.q().m();
        if (strM == null ? strM2 == null : strM.equals(strM2)) {
            return this.f7772b.f7531c.Y() == o1Var.f7772b.f7531c.Y();
        }
        return false;
    }

    public final int hashCode() {
        f0<InstitutionModelRealm> f0Var = this.f7772b;
        String str = f0Var.f7533e.f7455c.f7746c;
        String strM = f0Var.f7531c.q().m();
        long jY = this.f7772b.f7531c.Y();
        return ((((527 + (str != null ? str.hashCode() : 0)) * 31) + (strM != null ? strM.hashCode() : 0)) * 31) + ((int) ((jY >>> 32) ^ jY));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm, io.realm.p1
    /* renamed from: realmGet$categoryCode */
    public final int getCategoryCode() {
        this.f7772b.f7533e.b();
        return (int) this.f7772b.f7531c.y(this.f7771a.f7780k);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm, io.realm.p1
    /* renamed from: realmGet$cityCode */
    public final int getCityCode() {
        this.f7772b.f7533e.b();
        return (int) this.f7772b.f7531c.y(this.f7771a.f7779j);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm, io.realm.p1
    /* renamed from: realmGet$contactList */
    public final q0<InstitutionContactModelRealm> getContactList() {
        this.f7772b.f7533e.b();
        q0<InstitutionContactModelRealm> q0Var = this.f7774d;
        if (q0Var != null) {
            return q0Var;
        }
        q0<InstitutionContactModelRealm> q0Var2 = new q0<>(this.f7772b.f7533e, this.f7772b.f7531c.z(this.f7771a.f7782m), InstitutionContactModelRealm.class);
        this.f7774d = q0Var2;
        return q0Var2;
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm, io.realm.p1
    /* renamed from: realmGet$iconName */
    public final String getIconName() {
        this.f7772b.f7533e.b();
        return this.f7772b.f7531c.R(this.f7771a.f7784o);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm, io.realm.p1
    /* renamed from: realmGet$institutionCode */
    public final int getInstitutionCode() {
        this.f7772b.f7533e.b();
        return (int) this.f7772b.f7531c.y(this.f7771a.f);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm, io.realm.p1
    /* renamed from: realmGet$institutionId */
    public final int getInstitutionId() {
        this.f7772b.f7533e.b();
        return (int) this.f7772b.f7531c.y(this.f7771a.f7775e);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm, io.realm.p1
    /* renamed from: realmGet$institutionName */
    public final String getInstitutionName() {
        this.f7772b.f7533e.b();
        return this.f7772b.f7531c.R(this.f7771a.f7776g);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm, io.realm.p1
    /* renamed from: realmGet$isOpened */
    public final boolean getIsOpened() {
        this.f7772b.f7533e.b();
        return this.f7772b.f7531c.x(this.f7771a.f7783n);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm, io.realm.p1
    /* renamed from: realmGet$sectionCode */
    public final int getSectionCode() {
        this.f7772b.f7533e.b();
        return (int) this.f7772b.f7531c.y(this.f7771a.f7778i);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm, io.realm.p1
    /* renamed from: realmGet$serviceCount */
    public final int getServiceCount() {
        this.f7772b.f7533e.b();
        return (int) this.f7772b.f7531c.y(this.f7771a.f7777h);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm, io.realm.p1
    /* renamed from: realmGet$serviceList */
    public final q0<ServiceModelRealm> getServiceList() {
        this.f7772b.f7533e.b();
        q0<ServiceModelRealm> q0Var = this.f7773c;
        if (q0Var != null) {
            return q0Var;
        }
        q0<ServiceModelRealm> q0Var2 = new q0<>(this.f7772b.f7533e, this.f7772b.f7531c.z(this.f7771a.f7781l), ServiceModelRealm.class);
        this.f7773c = q0Var2;
        return q0Var2;
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm
    public final void realmSet$categoryCode(int r92) {
        f0<InstitutionModelRealm> f0Var = this.f7772b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            this.f7772b.f7531c.A(this.f7771a.f7780k, r92);
        } else if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            pVar.q().v(this.f7771a.f7780k, pVar.Y(), r92);
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm
    public final void realmSet$cityCode(int r92) {
        f0<InstitutionModelRealm> f0Var = this.f7772b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            this.f7772b.f7531c.A(this.f7771a.f7779j, r92);
        } else if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            pVar.q().v(this.f7771a.f7779j, pVar.Y(), r92);
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm
    public final void realmSet$contactList(q0<InstitutionContactModelRealm> q0Var) {
        f0<InstitutionModelRealm> f0Var = this.f7772b;
        int r22 = 0;
        if (f0Var.f7530b) {
            if (!f0Var.f || f0Var.f7534g.contains("contactList")) {
                return;
            }
            if (q0Var != null && !q0Var.x()) {
                g0 g0Var = (g0) this.f7772b.f7533e;
                q0<InstitutionContactModelRealm> q0Var2 = new q0<>();
                Iterator<InstitutionContactModelRealm> it = q0Var.iterator();
                while (it.hasNext()) {
                    InstitutionContactModelRealm next = it.next();
                    if (next != null && !v0.isManaged(next)) {
                        next = (InstitutionContactModelRealm) g0Var.p(next, new v[0]);
                    }
                    q0Var2.add(next);
                }
                q0Var = q0Var2;
            }
        }
        this.f7772b.f7533e.b();
        OsList osListZ = this.f7772b.f7531c.z(this.f7771a.f7782m);
        if (q0Var != null && q0Var.size() == osListZ.W()) {
            int size = q0Var.size();
            while (r22 < size) {
                s0 s0Var = (InstitutionContactModelRealm) q0Var.get(r22);
                this.f7772b.a(s0Var);
                osListZ.T(r22, ((io.realm.internal.n) s0Var).b().f7531c.Y());
                r22++;
            }
            return;
        }
        osListZ.I();
        if (q0Var == null) {
            return;
        }
        int size2 = q0Var.size();
        while (r22 < size2) {
            s0 s0Var2 = (InstitutionContactModelRealm) q0Var.get(r22);
            this.f7772b.a(s0Var2);
            osListZ.k(((io.realm.internal.n) s0Var2).b().f7531c.Y());
            r22++;
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm
    public final void realmSet$iconName(String str) {
        f0<InstitutionModelRealm> f0Var = this.f7772b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'iconName' to null.");
            }
            this.f7772b.f7531c.o(this.f7771a.f7784o, str);
            return;
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'iconName' to null.");
            }
            pVar.q().x(this.f7771a.f7784o, pVar.Y(), str);
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm
    public final void realmSet$institutionCode(int r92) {
        f0<InstitutionModelRealm> f0Var = this.f7772b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            this.f7772b.f7531c.A(this.f7771a.f, r92);
        } else if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            pVar.q().v(this.f7771a.f, pVar.Y(), r92);
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm
    public final void realmSet$institutionId(int r22) {
        f0<InstitutionModelRealm> f0Var = this.f7772b;
        if (f0Var.f7530b) {
            return;
        }
        f0Var.f7533e.b();
        throw new RealmException("Primary key field 'institutionId' cannot be changed after object was created.");
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm
    public final void realmSet$institutionName(String str) {
        f0<InstitutionModelRealm> f0Var = this.f7772b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'institutionName' to null.");
            }
            this.f7772b.f7531c.o(this.f7771a.f7776g, str);
            return;
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'institutionName' to null.");
            }
            pVar.q().x(this.f7771a.f7776g, pVar.Y(), str);
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm
    public final void realmSet$isOpened(boolean z10) {
        f0<InstitutionModelRealm> f0Var = this.f7772b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            this.f7772b.f7531c.t(this.f7771a.f7783n, z10);
        } else if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            pVar.q().s(this.f7771a.f7783n, pVar.Y(), z10);
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm
    public final void realmSet$sectionCode(int r92) {
        f0<InstitutionModelRealm> f0Var = this.f7772b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            this.f7772b.f7531c.A(this.f7771a.f7778i, r92);
        } else if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            pVar.q().v(this.f7771a.f7778i, pVar.Y(), r92);
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm
    public final void realmSet$serviceCount(int r92) {
        f0<InstitutionModelRealm> f0Var = this.f7772b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            this.f7772b.f7531c.A(this.f7771a.f7777h, r92);
        } else if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            pVar.q().v(this.f7771a.f7777h, pVar.Y(), r92);
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm
    public final void realmSet$serviceList(q0<ServiceModelRealm> q0Var) {
        f0<InstitutionModelRealm> f0Var = this.f7772b;
        int r22 = 0;
        if (f0Var.f7530b) {
            if (!f0Var.f || f0Var.f7534g.contains("serviceList")) {
                return;
            }
            if (q0Var != null && !q0Var.x()) {
                g0 g0Var = (g0) this.f7772b.f7533e;
                q0<ServiceModelRealm> q0Var2 = new q0<>();
                Iterator<ServiceModelRealm> it = q0Var.iterator();
                while (it.hasNext()) {
                    ServiceModelRealm next = it.next();
                    if (next != null && !v0.isManaged(next)) {
                        next = (ServiceModelRealm) g0Var.p(next, new v[0]);
                    }
                    q0Var2.add(next);
                }
                q0Var = q0Var2;
            }
        }
        this.f7772b.f7533e.b();
        OsList osListZ = this.f7772b.f7531c.z(this.f7771a.f7781l);
        if (q0Var != null && q0Var.size() == osListZ.W()) {
            int size = q0Var.size();
            while (r22 < size) {
                s0 s0Var = (ServiceModelRealm) q0Var.get(r22);
                this.f7772b.a(s0Var);
                osListZ.T(r22, ((io.realm.internal.n) s0Var).b().f7531c.Y());
                r22++;
            }
            return;
        }
        osListZ.I();
        if (q0Var == null) {
            return;
        }
        int size2 = q0Var.size();
        while (r22 < size2) {
            s0 s0Var2 = (ServiceModelRealm) q0Var.get(r22);
            this.f7772b.a(s0Var2);
            osListZ.k(((io.realm.internal.n) s0Var2).b().f7531c.Y());
            r22++;
        }
    }

    public final String toString() {
        if (!v0.isValid(this)) {
            return "Invalid object";
        }
        return "InstitutionModelRealm = proxy[{institutionId:" + getInstitutionId() + "},{institutionCode:" + getInstitutionCode() + "},{institutionName:" + getInstitutionName() + "},{serviceCount:" + getServiceCount() + "},{sectionCode:" + getSectionCode() + "},{cityCode:" + getCityCode() + "},{categoryCode:" + getCategoryCode() + "},{serviceList:RealmList<ServiceModelRealm>[" + getServiceList().size() + "]},{contactList:RealmList<InstitutionContactModelRealm>[" + getContactList().size() + "]},{isOpened:" + getIsOpened() + "},{iconName:" + getIconName() + "}]";
    }
}
