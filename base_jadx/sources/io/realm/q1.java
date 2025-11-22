package io.realm;

import androidx.core.app.NotificationCompat;
import io.realm.a;
import io.realm.internal.OsList;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.Table;
import io.realm.internal.UncheckedRow;
import io.realm.internal.objectstore.OsObjectBuilder;
import io.realm.y1;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportParticipant;

/* loaded from: classes2.dex */
public final class q1 extends AccidentMergedReport implements io.realm.internal.n {

    /* renamed from: d, reason: collision with root package name */
    public static final OsObjectSchemaInfo f7801d;

    /* renamed from: a, reason: collision with root package name */
    public a f7802a;

    /* renamed from: b, reason: collision with root package name */
    public f0<AccidentMergedReport> f7803b;

    /* renamed from: c, reason: collision with root package name */
    public q0<AccidentReportParticipant> f7804c;

    public static final class a extends io.realm.internal.c {

        /* renamed from: e, reason: collision with root package name */
        public long f7805e;
        public long f;

        /* renamed from: g, reason: collision with root package name */
        public long f7806g;

        /* renamed from: h, reason: collision with root package name */
        public long f7807h;

        /* renamed from: i, reason: collision with root package name */
        public long f7808i;

        /* renamed from: j, reason: collision with root package name */
        public long f7809j;

        /* renamed from: k, reason: collision with root package name */
        public long f7810k;

        /* renamed from: l, reason: collision with root package name */
        public long f7811l;

        /* renamed from: m, reason: collision with root package name */
        public long f7812m;

        /* renamed from: n, reason: collision with root package name */
        public long f7813n;

        /* renamed from: o, reason: collision with root package name */
        public long f7814o;

        /* renamed from: p, reason: collision with root package name */
        public long f7815p;

        /* renamed from: q, reason: collision with root package name */
        public long f7816q;

        /* renamed from: r, reason: collision with root package name */
        public long f7817r;

        /* renamed from: s, reason: collision with root package name */
        public long f7818s;

        /* renamed from: t, reason: collision with root package name */
        public long f7819t;

        /* renamed from: u, reason: collision with root package name */
        public long f7820u;

        /* renamed from: v, reason: collision with root package name */
        public long f7821v;
        public long w;

        /* renamed from: x, reason: collision with root package name */
        public long f7822x;

        public a(OsSchemaInfo osSchemaInfo) {
            super(20, true);
            OsObjectSchemaInfo osObjectSchemaInfoA = osSchemaInfo.a("AccidentMergedReport");
            this.f7805e = a("reportPartyStatus", "reportPartyStatus", osObjectSchemaInfoA);
            this.f = a("accidentDate", "accidentDate", osObjectSchemaInfoA);
            this.f7806g = a("role", "role", osObjectSchemaInfoA);
            this.f7807h = a("reportId", "reportId", osObjectSchemaInfoA);
            this.f7808i = a("city", "city", osObjectSchemaInfoA);
            this.f7809j = a("district", "district", osObjectSchemaInfoA);
            this.f7810k = a("reportStatus", "reportStatus", osObjectSchemaInfoA);
            this.f7811l = a("plate", "plate", osObjectSchemaInfoA);
            this.f7812m = a("expireDate", "expireDate", osObjectSchemaInfoA);
            this.f7813n = a("reportPartyId", "reportPartyId", osObjectSchemaInfoA);
            this.f7814o = a("id", "id", osObjectSchemaInfoA);
            this.f7815p = a("consolidatedStatus", "consolidatedStatus", osObjectSchemaInfoA);
            this.f7816q = a("updateDate", "updateDate", osObjectSchemaInfoA);
            this.f7817r = a("createDate", "createDate", osObjectSchemaInfoA);
            this.f7818s = a(NotificationCompat.CATEGORY_STATUS, NotificationCompat.CATEGORY_STATUS, osObjectSchemaInfoA);
            this.f7819t = a("reportNumber", "reportNumber", osObjectSchemaInfoA);
            this.f7820u = a("vehiclePlateNumber", "vehiclePlateNumber", osObjectSchemaInfoA);
            this.f7821v = a("vehiclePlateCityCode", "vehiclePlateCityCode", osObjectSchemaInfoA);
            this.w = a("hasPdf", "hasPdf", osObjectSchemaInfoA);
            this.f7822x = a("participants", "participants", osObjectSchemaInfoA);
        }

        @Override // io.realm.internal.c
        public final void b(io.realm.internal.c cVar, io.realm.internal.c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f7805e = aVar.f7805e;
            aVar2.f = aVar.f;
            aVar2.f7806g = aVar.f7806g;
            aVar2.f7807h = aVar.f7807h;
            aVar2.f7808i = aVar.f7808i;
            aVar2.f7809j = aVar.f7809j;
            aVar2.f7810k = aVar.f7810k;
            aVar2.f7811l = aVar.f7811l;
            aVar2.f7812m = aVar.f7812m;
            aVar2.f7813n = aVar.f7813n;
            aVar2.f7814o = aVar.f7814o;
            aVar2.f7815p = aVar.f7815p;
            aVar2.f7816q = aVar.f7816q;
            aVar2.f7817r = aVar.f7817r;
            aVar2.f7818s = aVar.f7818s;
            aVar2.f7819t = aVar.f7819t;
            aVar2.f7820u = aVar.f7820u;
            aVar2.f7821v = aVar.f7821v;
            aVar2.w = aVar.w;
            aVar2.f7822x = aVar.f7822x;
        }
    }

    static {
        OsObjectSchemaInfo.a aVar = new OsObjectSchemaInfo.a("AccidentMergedReport", true, 20);
        RealmFieldType realmFieldType = RealmFieldType.STRING;
        aVar.b("reportPartyStatus", realmFieldType, false, false, false);
        aVar.b("accidentDate", realmFieldType, false, false, false);
        aVar.b("role", realmFieldType, false, false, false);
        aVar.b("reportId", realmFieldType, false, false, false);
        aVar.b("city", realmFieldType, false, false, false);
        aVar.b("district", realmFieldType, false, false, false);
        aVar.b("reportStatus", realmFieldType, false, false, false);
        aVar.b("plate", realmFieldType, false, false, false);
        aVar.b("expireDate", realmFieldType, false, false, false);
        aVar.b("reportPartyId", realmFieldType, false, false, false);
        aVar.b("id", realmFieldType, false, false, false);
        aVar.b("consolidatedStatus", realmFieldType, false, false, false);
        aVar.b("updateDate", realmFieldType, false, false, false);
        aVar.b("createDate", realmFieldType, false, false, false);
        aVar.b(NotificationCompat.CATEGORY_STATUS, realmFieldType, false, false, false);
        aVar.b("reportNumber", RealmFieldType.INTEGER, false, false, false);
        aVar.b("vehiclePlateNumber", realmFieldType, false, false, false);
        aVar.b("vehiclePlateCityCode", realmFieldType, false, false, false);
        aVar.b("hasPdf", RealmFieldType.BOOLEAN, false, false, true);
        aVar.a("participants", RealmFieldType.LIST, "AccidentReportParticipant");
        f7801d = aVar.c();
    }

    public q1() {
        this.f7803b.c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static AccidentMergedReport c(g0 g0Var, a aVar, AccidentMergedReport accidentMergedReport, HashMap map, Set set) {
        if ((accidentMergedReport instanceof io.realm.internal.n) && !v0.isFrozen(accidentMergedReport)) {
            io.realm.internal.n nVar = (io.realm.internal.n) accidentMergedReport;
            if (nVar.b().f7533e != null) {
                io.realm.a aVar2 = nVar.b().f7533e;
                if (aVar2.f7454b != g0Var.f7454b) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                }
                if (aVar2.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                    return accidentMergedReport;
                }
            }
        }
        io.realm.a.f7452h.get();
        s0 s0Var = (io.realm.internal.n) map.get(accidentMergedReport);
        if (s0Var != null) {
            return (AccidentMergedReport) s0Var;
        }
        s0 s0Var2 = (io.realm.internal.n) map.get(accidentMergedReport);
        if (s0Var2 != null) {
            return (AccidentMergedReport) s0Var2;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(g0Var.v(AccidentMergedReport.class), set);
        osObjectBuilder.f(aVar.f7805e, accidentMergedReport.getReportPartyStatus());
        osObjectBuilder.f(aVar.f, accidentMergedReport.getAccidentDate());
        osObjectBuilder.f(aVar.f7806g, accidentMergedReport.getRole());
        osObjectBuilder.f(aVar.f7807h, accidentMergedReport.getReportId());
        osObjectBuilder.f(aVar.f7808i, accidentMergedReport.getCity());
        osObjectBuilder.f(aVar.f7809j, accidentMergedReport.getDistrict());
        osObjectBuilder.f(aVar.f7810k, accidentMergedReport.getReportStatus());
        osObjectBuilder.f(aVar.f7811l, accidentMergedReport.getPlate());
        osObjectBuilder.f(aVar.f7812m, accidentMergedReport.getExpireDate());
        osObjectBuilder.f(aVar.f7813n, accidentMergedReport.getReportPartyId());
        osObjectBuilder.f(aVar.f7814o, accidentMergedReport.getId());
        osObjectBuilder.f(aVar.f7815p, accidentMergedReport.getConsolidatedStatus());
        osObjectBuilder.f(aVar.f7816q, accidentMergedReport.getUpdateDate());
        osObjectBuilder.f(aVar.f7817r, accidentMergedReport.getCreateDate());
        osObjectBuilder.f(aVar.f7818s, accidentMergedReport.getStatus());
        osObjectBuilder.c(aVar.f7819t, accidentMergedReport.getReportNumber());
        osObjectBuilder.f(aVar.f7820u, accidentMergedReport.getVehiclePlateNumber());
        osObjectBuilder.f(aVar.f7821v, accidentMergedReport.getVehiclePlateCityCode());
        osObjectBuilder.a(aVar.w, Boolean.valueOf(accidentMergedReport.getHasPdf()));
        q1 q1VarE = e(g0Var, osObjectBuilder.g());
        map.put(accidentMergedReport, q1VarE);
        q0<AccidentReportParticipant> participants = accidentMergedReport.getParticipants();
        if (participants == null) {
            return q1VarE;
        }
        q0<AccidentReportParticipant> participants2 = q1VarE.getParticipants();
        participants2.clear();
        for (int r10 = 0; r10 < participants.size(); r10++) {
            AccidentReportParticipant accidentReportParticipant = participants.get(r10);
            if (((AccidentReportParticipant) map.get(accidentReportParticipant)) != null) {
                throw new IllegalArgumentException("Embedded objects can only have one parent pointing to them. This object was already copied, so another object is pointing to it: cacheparticipants.toString()");
            }
            y1 y1VarD = y1.d(g0Var, g0Var.v(AccidentReportParticipant.class).o(participants2.f7793b.f7889b.n()));
            map.put(accidentReportParticipant, y1VarD);
            new HashMap();
            y1.e(g0Var, accidentReportParticipant, y1VarD, Collections.EMPTY_SET);
        }
        return q1VarE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void d(g0 g0Var, Table table, long j10, long j11, AccidentMergedReport accidentMergedReport, HashMap map) {
        long j12;
        u uVar;
        long j13;
        if ((accidentMergedReport instanceof io.realm.internal.n) && !v0.isFrozen(accidentMergedReport)) {
            io.realm.internal.n nVar = (io.realm.internal.n) accidentMergedReport;
            if (nVar.b().f7533e != null && nVar.b().f7533e.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                nVar.b().f7531c.Y();
                return;
            }
        }
        Table tableV = g0Var.v(AccidentMergedReport.class);
        long j14 = tableV.f7633a;
        u uVar2 = g0Var.f7539j;
        a aVar = (a) uVar2.a(AccidentMergedReport.class);
        long jCreateEmbeddedObject = OsObject.createEmbeddedObject(table, j11, j10);
        map.put(accidentMergedReport, Long.valueOf(jCreateEmbeddedObject));
        String reportPartyStatus = accidentMergedReport.getReportPartyStatus();
        if (reportPartyStatus != null) {
            j12 = jCreateEmbeddedObject;
            Table.nativeSetString(j14, aVar.f7805e, jCreateEmbeddedObject, reportPartyStatus, false);
        } else {
            j12 = jCreateEmbeddedObject;
            Table.nativeSetNull(j14, aVar.f7805e, j12, false);
        }
        String accidentDate = accidentMergedReport.getAccidentDate();
        long j15 = aVar.f;
        if (accidentDate != null) {
            Table.nativeSetString(j14, j15, j12, accidentDate, false);
        } else {
            Table.nativeSetNull(j14, j15, j12, false);
        }
        String role = accidentMergedReport.getRole();
        long j16 = aVar.f7806g;
        if (role != null) {
            Table.nativeSetString(j14, j16, j12, role, false);
        } else {
            Table.nativeSetNull(j14, j16, j12, false);
        }
        String reportId = accidentMergedReport.getReportId();
        long j17 = aVar.f7807h;
        if (reportId != null) {
            Table.nativeSetString(j14, j17, j12, reportId, false);
        } else {
            Table.nativeSetNull(j14, j17, j12, false);
        }
        String city = accidentMergedReport.getCity();
        long j18 = aVar.f7808i;
        if (city != null) {
            Table.nativeSetString(j14, j18, j12, city, false);
        } else {
            Table.nativeSetNull(j14, j18, j12, false);
        }
        String district = accidentMergedReport.getDistrict();
        long j19 = aVar.f7809j;
        if (district != null) {
            Table.nativeSetString(j14, j19, j12, district, false);
        } else {
            Table.nativeSetNull(j14, j19, j12, false);
        }
        String reportStatus = accidentMergedReport.getReportStatus();
        long j20 = aVar.f7810k;
        if (reportStatus != null) {
            Table.nativeSetString(j14, j20, j12, reportStatus, false);
        } else {
            Table.nativeSetNull(j14, j20, j12, false);
        }
        String plate = accidentMergedReport.getPlate();
        long j21 = aVar.f7811l;
        if (plate != null) {
            Table.nativeSetString(j14, j21, j12, plate, false);
        } else {
            Table.nativeSetNull(j14, j21, j12, false);
        }
        String expireDate = accidentMergedReport.getExpireDate();
        long j22 = aVar.f7812m;
        if (expireDate != null) {
            Table.nativeSetString(j14, j22, j12, expireDate, false);
        } else {
            Table.nativeSetNull(j14, j22, j12, false);
        }
        String reportPartyId = accidentMergedReport.getReportPartyId();
        long j23 = aVar.f7813n;
        if (reportPartyId != null) {
            Table.nativeSetString(j14, j23, j12, reportPartyId, false);
        } else {
            Table.nativeSetNull(j14, j23, j12, false);
        }
        String id2 = accidentMergedReport.getId();
        long j24 = aVar.f7814o;
        if (id2 != null) {
            Table.nativeSetString(j14, j24, j12, id2, false);
        } else {
            Table.nativeSetNull(j14, j24, j12, false);
        }
        String consolidatedStatus = accidentMergedReport.getConsolidatedStatus();
        long j25 = aVar.f7815p;
        if (consolidatedStatus != null) {
            Table.nativeSetString(j14, j25, j12, consolidatedStatus, false);
        } else {
            Table.nativeSetNull(j14, j25, j12, false);
        }
        String updateDate = accidentMergedReport.getUpdateDate();
        long j26 = aVar.f7816q;
        if (updateDate != null) {
            Table.nativeSetString(j14, j26, j12, updateDate, false);
        } else {
            Table.nativeSetNull(j14, j26, j12, false);
        }
        String createDate = accidentMergedReport.getCreateDate();
        long j27 = aVar.f7817r;
        if (createDate != null) {
            Table.nativeSetString(j14, j27, j12, createDate, false);
        } else {
            Table.nativeSetNull(j14, j27, j12, false);
        }
        String status = accidentMergedReport.getStatus();
        long j28 = aVar.f7818s;
        if (status != null) {
            Table.nativeSetString(j14, j28, j12, status, false);
        } else {
            Table.nativeSetNull(j14, j28, j12, false);
        }
        Integer reportNumber = accidentMergedReport.getReportNumber();
        if (reportNumber != null) {
            uVar = uVar2;
            Table.nativeSetLong(j14, aVar.f7819t, j12, reportNumber.longValue(), false);
        } else {
            uVar = uVar2;
            Table.nativeSetNull(j14, aVar.f7819t, j12, false);
        }
        String vehiclePlateNumber = accidentMergedReport.getVehiclePlateNumber();
        long j29 = aVar.f7820u;
        if (vehiclePlateNumber != null) {
            Table.nativeSetString(j14, j29, j12, vehiclePlateNumber, false);
        } else {
            Table.nativeSetNull(j14, j29, j12, false);
        }
        String vehiclePlateCityCode = accidentMergedReport.getVehiclePlateCityCode();
        long j30 = aVar.f7821v;
        if (vehiclePlateCityCode != null) {
            Table.nativeSetString(j14, j30, j12, vehiclePlateCityCode, false);
        } else {
            Table.nativeSetNull(j14, j30, j12, false);
        }
        Table.nativeSetBoolean(j14, aVar.w, j12, accidentMergedReport.getHasPdf(), false);
        long j31 = j12;
        OsList osList = new OsList(tableV.o(j31), aVar.f7822x);
        q0<AccidentReportParticipant> participants = accidentMergedReport.getParticipants();
        osList.I();
        if (participants != null) {
            Iterator<AccidentReportParticipant> it = participants.iterator();
            while (it.hasNext()) {
                AccidentReportParticipant next = it.next();
                Long l5 = (Long) map.get(next);
                if (l5 != null) {
                    throw new IllegalArgumentException("Embedded objects can only have one parent pointing to them. This object was already copied, so another object is pointing to it: " + l5.toString());
                }
                long j32 = aVar.f7822x;
                OsObjectSchemaInfo osObjectSchemaInfo = y1.f7898c;
                if ((next instanceof io.realm.internal.n) && !v0.isFrozen(next)) {
                    io.realm.internal.n nVar2 = (io.realm.internal.n) next;
                    if (nVar2.b().f7533e != null && nVar2.b().f7533e.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                        nVar2.b().f7531c.Y();
                    }
                }
                long j33 = g0Var.v(AccidentReportParticipant.class).f7633a;
                y1.a aVar2 = (y1.a) uVar.a(AccidentReportParticipant.class);
                long jCreateEmbeddedObject2 = OsObject.createEmbeddedObject(tableV, j31, j32);
                map.put(next, Long.valueOf(jCreateEmbeddedObject2));
                String reportPartyId2 = next.getReportPartyId();
                long j34 = aVar2.f7901e;
                if (reportPartyId2 != null) {
                    j13 = j33;
                    Table.nativeSetString(j13, j34, jCreateEmbeddedObject2, reportPartyId2, false);
                } else {
                    j13 = j33;
                    Table.nativeSetNull(j13, j34, jCreateEmbeddedObject2, false);
                }
                String identityType = next.getIdentityType();
                long j35 = aVar2.f;
                if (identityType != null) {
                    Table.nativeSetString(j13, j35, jCreateEmbeddedObject2, identityType, false);
                } else {
                    Table.nativeSetNull(j13, j35, jCreateEmbeddedObject2, false);
                }
                String identityNumber = next.getIdentityNumber();
                long j36 = aVar2.f7902g;
                if (identityNumber != null) {
                    Table.nativeSetString(j13, j36, jCreateEmbeddedObject2, identityNumber, false);
                } else {
                    Table.nativeSetNull(j13, j36, jCreateEmbeddedObject2, false);
                }
                String partyRole = next.getPartyRole();
                long j37 = aVar2.f7903h;
                if (partyRole != null) {
                    Table.nativeSetString(j13, j37, jCreateEmbeddedObject2, partyRole, false);
                } else {
                    Table.nativeSetNull(j13, j37, jCreateEmbeddedObject2, false);
                }
                String name = next.getName();
                long j38 = aVar2.f7904i;
                if (name != null) {
                    Table.nativeSetString(j13, j38, jCreateEmbeddedObject2, name, false);
                } else {
                    Table.nativeSetNull(j13, j38, jCreateEmbeddedObject2, false);
                }
                String plate2 = next.getPlate();
                long j39 = aVar2.f7905j;
                if (plate2 != null) {
                    Table.nativeSetString(j13, j39, jCreateEmbeddedObject2, plate2, false);
                } else {
                    Table.nativeSetNull(j13, j39, jCreateEmbeddedObject2, false);
                }
                String comment = next.getComment();
                long j40 = aVar2.f7906k;
                if (comment != null) {
                    Table.nativeSetString(j13, j40, jCreateEmbeddedObject2, comment, false);
                } else {
                    Table.nativeSetNull(j13, j40, jCreateEmbeddedObject2, false);
                }
                String status2 = next.getStatus();
                long j41 = aVar2.f7907l;
                if (status2 != null) {
                    Table.nativeSetString(j13, j41, jCreateEmbeddedObject2, status2, false);
                } else {
                    Table.nativeSetNull(j13, j41, jCreateEmbeddedObject2, false);
                }
            }
        }
    }

    public static q1 e(io.realm.a aVar, UncheckedRow uncheckedRow) {
        a.b bVar = io.realm.a.f7452h.get();
        bVar.b(aVar, uncheckedRow, aVar.i().a(AccidentMergedReport.class), false, Collections.emptyList());
        q1 q1Var = new q1();
        bVar.a();
        return q1Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void f(g0 g0Var, AccidentMergedReport accidentMergedReport, AccidentMergedReport accidentMergedReport2, HashMap map, Set set) {
        a aVar = (a) g0Var.f7539j.a(AccidentMergedReport.class);
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(g0Var.v(AccidentMergedReport.class), set);
        osObjectBuilder.f(aVar.f7805e, accidentMergedReport.getReportPartyStatus());
        osObjectBuilder.f(aVar.f, accidentMergedReport.getAccidentDate());
        osObjectBuilder.f(aVar.f7806g, accidentMergedReport.getRole());
        osObjectBuilder.f(aVar.f7807h, accidentMergedReport.getReportId());
        osObjectBuilder.f(aVar.f7808i, accidentMergedReport.getCity());
        osObjectBuilder.f(aVar.f7809j, accidentMergedReport.getDistrict());
        osObjectBuilder.f(aVar.f7810k, accidentMergedReport.getReportStatus());
        osObjectBuilder.f(aVar.f7811l, accidentMergedReport.getPlate());
        osObjectBuilder.f(aVar.f7812m, accidentMergedReport.getExpireDate());
        osObjectBuilder.f(aVar.f7813n, accidentMergedReport.getReportPartyId());
        osObjectBuilder.f(aVar.f7814o, accidentMergedReport.getId());
        osObjectBuilder.f(aVar.f7815p, accidentMergedReport.getConsolidatedStatus());
        osObjectBuilder.f(aVar.f7816q, accidentMergedReport.getUpdateDate());
        osObjectBuilder.f(aVar.f7817r, accidentMergedReport.getCreateDate());
        osObjectBuilder.f(aVar.f7818s, accidentMergedReport.getStatus());
        osObjectBuilder.c(aVar.f7819t, accidentMergedReport.getReportNumber());
        osObjectBuilder.f(aVar.f7820u, accidentMergedReport.getVehiclePlateNumber());
        osObjectBuilder.f(aVar.f7821v, accidentMergedReport.getVehiclePlateCityCode());
        osObjectBuilder.a(aVar.w, Boolean.valueOf(accidentMergedReport.getHasPdf()));
        q0<AccidentReportParticipant> participants = accidentMergedReport.getParticipants();
        if (participants != null) {
            q0 q0Var = new q0();
            OsList osList = accidentMergedReport2.getParticipants().f7793b.f7889b;
            osList.q();
            for (int r12 = 0; r12 < participants.size(); r12++) {
                AccidentReportParticipant accidentReportParticipant = participants.get(r12);
                if (((AccidentReportParticipant) map.get(accidentReportParticipant)) != null) {
                    throw new IllegalArgumentException("Embedded objects can only have one parent pointing to them. This object was already copied, so another object is pointing to it: cacheparticipants.toString()");
                }
                y1 y1VarD = y1.d(g0Var, g0Var.v(AccidentReportParticipant.class).o(osList.n()));
                map.put(accidentReportParticipant, y1VarD);
                q0Var.add(y1VarD);
                new HashMap();
                y1.e(g0Var, accidentReportParticipant, y1VarD, Collections.EMPTY_SET);
            }
        } else {
            osObjectBuilder.e(aVar.f7822x, new q0());
        }
        osObjectBuilder.i((io.realm.internal.n) accidentMergedReport2);
    }

    @Override // io.realm.internal.n
    public final void a() {
        if (this.f7803b != null) {
            return;
        }
        a.b bVar = io.realm.a.f7452h.get();
        this.f7802a = (a) bVar.f7461c;
        f0<AccidentMergedReport> f0Var = new f0<>(this);
        this.f7803b = f0Var;
        f0Var.f7533e = bVar.f7459a;
        f0Var.f7531c = bVar.f7460b;
        f0Var.f = bVar.f7462d;
        f0Var.f7534g = bVar.f7463e;
    }

    @Override // io.realm.internal.n
    public final f0<?> b() {
        return this.f7803b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || q1.class != obj.getClass()) {
            return false;
        }
        q1 q1Var = (q1) obj;
        io.realm.a aVar = this.f7803b.f7533e;
        io.realm.a aVar2 = q1Var.f7803b.f7533e;
        String str = aVar.f7455c.f7746c;
        String str2 = aVar2.f7455c.f7746c;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        if (aVar.j() != aVar2.j() || !aVar.f7457e.getVersionID().equals(aVar2.f7457e.getVersionID())) {
            return false;
        }
        String strM = this.f7803b.f7531c.q().m();
        String strM2 = q1Var.f7803b.f7531c.q().m();
        if (strM == null ? strM2 == null : strM.equals(strM2)) {
            return this.f7803b.f7531c.Y() == q1Var.f7803b.f7531c.Y();
        }
        return false;
    }

    public final int hashCode() {
        f0<AccidentMergedReport> f0Var = this.f7803b;
        String str = f0Var.f7533e.f7455c.f7746c;
        String strM = f0Var.f7531c.q().m();
        long jY = this.f7803b.f7531c.Y();
        return ((((527 + (str != null ? str.hashCode() : 0)) * 31) + (strM != null ? strM.hashCode() : 0)) * 31) + ((int) ((jY >>> 32) ^ jY));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport, io.realm.r1
    /* renamed from: realmGet$accidentDate */
    public final String getAccidentDate() {
        this.f7803b.f7533e.b();
        return this.f7803b.f7531c.R(this.f7802a.f);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport, io.realm.r1
    /* renamed from: realmGet$city */
    public final String getCity() {
        this.f7803b.f7533e.b();
        return this.f7803b.f7531c.R(this.f7802a.f7808i);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport, io.realm.r1
    /* renamed from: realmGet$consolidatedStatus */
    public final String getConsolidatedStatus() {
        this.f7803b.f7533e.b();
        return this.f7803b.f7531c.R(this.f7802a.f7815p);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport, io.realm.r1
    /* renamed from: realmGet$createDate */
    public final String getCreateDate() {
        this.f7803b.f7533e.b();
        return this.f7803b.f7531c.R(this.f7802a.f7817r);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport, io.realm.r1
    /* renamed from: realmGet$district */
    public final String getDistrict() {
        this.f7803b.f7533e.b();
        return this.f7803b.f7531c.R(this.f7802a.f7809j);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport, io.realm.r1
    /* renamed from: realmGet$expireDate */
    public final String getExpireDate() {
        this.f7803b.f7533e.b();
        return this.f7803b.f7531c.R(this.f7802a.f7812m);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport, io.realm.r1
    /* renamed from: realmGet$hasPdf */
    public final boolean getHasPdf() {
        this.f7803b.f7533e.b();
        return this.f7803b.f7531c.x(this.f7802a.w);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport, io.realm.r1
    /* renamed from: realmGet$id */
    public final String getId() {
        this.f7803b.f7533e.b();
        return this.f7803b.f7531c.R(this.f7802a.f7814o);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport, io.realm.r1
    /* renamed from: realmGet$participants */
    public final q0<AccidentReportParticipant> getParticipants() {
        this.f7803b.f7533e.b();
        q0<AccidentReportParticipant> q0Var = this.f7804c;
        if (q0Var != null) {
            return q0Var;
        }
        q0<AccidentReportParticipant> q0Var2 = new q0<>(this.f7803b.f7533e, this.f7803b.f7531c.z(this.f7802a.f7822x), AccidentReportParticipant.class);
        this.f7804c = q0Var2;
        return q0Var2;
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport, io.realm.r1
    /* renamed from: realmGet$plate */
    public final String getPlate() {
        this.f7803b.f7533e.b();
        return this.f7803b.f7531c.R(this.f7802a.f7811l);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport, io.realm.r1
    /* renamed from: realmGet$reportId */
    public final String getReportId() {
        this.f7803b.f7533e.b();
        return this.f7803b.f7531c.R(this.f7802a.f7807h);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport, io.realm.r1
    /* renamed from: realmGet$reportNumber */
    public final Integer getReportNumber() {
        this.f7803b.f7533e.b();
        if (this.f7803b.f7531c.C(this.f7802a.f7819t)) {
            return null;
        }
        return Integer.valueOf((int) this.f7803b.f7531c.y(this.f7802a.f7819t));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport, io.realm.r1
    /* renamed from: realmGet$reportPartyId */
    public final String getReportPartyId() {
        this.f7803b.f7533e.b();
        return this.f7803b.f7531c.R(this.f7802a.f7813n);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport, io.realm.r1
    /* renamed from: realmGet$reportPartyStatus */
    public final String getReportPartyStatus() {
        this.f7803b.f7533e.b();
        return this.f7803b.f7531c.R(this.f7802a.f7805e);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport, io.realm.r1
    /* renamed from: realmGet$reportStatus */
    public final String getReportStatus() {
        this.f7803b.f7533e.b();
        return this.f7803b.f7531c.R(this.f7802a.f7810k);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport, io.realm.r1
    /* renamed from: realmGet$role */
    public final String getRole() {
        this.f7803b.f7533e.b();
        return this.f7803b.f7531c.R(this.f7802a.f7806g);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport, io.realm.r1
    /* renamed from: realmGet$status */
    public final String getStatus() {
        this.f7803b.f7533e.b();
        return this.f7803b.f7531c.R(this.f7802a.f7818s);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport, io.realm.r1
    /* renamed from: realmGet$updateDate */
    public final String getUpdateDate() {
        this.f7803b.f7533e.b();
        return this.f7803b.f7531c.R(this.f7802a.f7816q);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport, io.realm.r1
    /* renamed from: realmGet$vehiclePlateCityCode */
    public final String getVehiclePlateCityCode() {
        this.f7803b.f7533e.b();
        return this.f7803b.f7531c.R(this.f7802a.f7821v);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport, io.realm.r1
    /* renamed from: realmGet$vehiclePlateNumber */
    public final String getVehiclePlateNumber() {
        this.f7803b.f7533e.b();
        return this.f7803b.f7531c.R(this.f7802a.f7820u);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport
    public final void realmSet$accidentDate(String str) {
        f0<AccidentMergedReport> f0Var = this.f7803b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7803b.f7531c.M(this.f7802a.f);
                return;
            } else {
                this.f7803b.f7531c.o(this.f7802a.f, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7802a.f, pVar.Y());
            } else {
                pVar.q().x(this.f7802a.f, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport
    public final void realmSet$city(String str) {
        f0<AccidentMergedReport> f0Var = this.f7803b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7803b.f7531c.M(this.f7802a.f7808i);
                return;
            } else {
                this.f7803b.f7531c.o(this.f7802a.f7808i, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7802a.f7808i, pVar.Y());
            } else {
                pVar.q().x(this.f7802a.f7808i, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport
    public final void realmSet$consolidatedStatus(String str) {
        f0<AccidentMergedReport> f0Var = this.f7803b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7803b.f7531c.M(this.f7802a.f7815p);
                return;
            } else {
                this.f7803b.f7531c.o(this.f7802a.f7815p, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7802a.f7815p, pVar.Y());
            } else {
                pVar.q().x(this.f7802a.f7815p, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport
    public final void realmSet$createDate(String str) {
        f0<AccidentMergedReport> f0Var = this.f7803b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7803b.f7531c.M(this.f7802a.f7817r);
                return;
            } else {
                this.f7803b.f7531c.o(this.f7802a.f7817r, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7802a.f7817r, pVar.Y());
            } else {
                pVar.q().x(this.f7802a.f7817r, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport
    public final void realmSet$district(String str) {
        f0<AccidentMergedReport> f0Var = this.f7803b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7803b.f7531c.M(this.f7802a.f7809j);
                return;
            } else {
                this.f7803b.f7531c.o(this.f7802a.f7809j, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7802a.f7809j, pVar.Y());
            } else {
                pVar.q().x(this.f7802a.f7809j, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport
    public final void realmSet$expireDate(String str) {
        f0<AccidentMergedReport> f0Var = this.f7803b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7803b.f7531c.M(this.f7802a.f7812m);
                return;
            } else {
                this.f7803b.f7531c.o(this.f7802a.f7812m, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7802a.f7812m, pVar.Y());
            } else {
                pVar.q().x(this.f7802a.f7812m, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport
    public final void realmSet$hasPdf(boolean z10) {
        f0<AccidentMergedReport> f0Var = this.f7803b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            this.f7803b.f7531c.t(this.f7802a.w, z10);
        } else if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            pVar.q().s(this.f7802a.w, pVar.Y(), z10);
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport
    public final void realmSet$id(String str) {
        f0<AccidentMergedReport> f0Var = this.f7803b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7803b.f7531c.M(this.f7802a.f7814o);
                return;
            } else {
                this.f7803b.f7531c.o(this.f7802a.f7814o, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7802a.f7814o, pVar.Y());
            } else {
                pVar.q().x(this.f7802a.f7814o, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport
    public final void realmSet$participants(q0<AccidentReportParticipant> q0Var) {
        f0<AccidentMergedReport> f0Var = this.f7803b;
        int r22 = 0;
        if (f0Var.f7530b) {
            if (!f0Var.f || f0Var.f7534g.contains("participants")) {
                return;
            }
            if (q0Var != null && !q0Var.x()) {
                g0 g0Var = (g0) this.f7803b.f7533e;
                q0<AccidentReportParticipant> q0Var2 = new q0<>();
                Iterator<AccidentReportParticipant> it = q0Var.iterator();
                while (it.hasNext()) {
                    AccidentReportParticipant next = it.next();
                    if (next != null && !v0.isManaged(next)) {
                        next = (AccidentReportParticipant) g0Var.o(next, new v[0]);
                    }
                    q0Var2.add(next);
                }
                q0Var = q0Var2;
            }
        }
        this.f7803b.f7533e.b();
        OsList osListZ = this.f7803b.f7531c.z(this.f7802a.f7822x);
        if (q0Var != null && q0Var.size() == osListZ.W()) {
            int size = q0Var.size();
            while (r22 < size) {
                s0 s0Var = (AccidentReportParticipant) q0Var.get(r22);
                this.f7803b.a(s0Var);
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
            s0 s0Var2 = (AccidentReportParticipant) q0Var.get(r22);
            this.f7803b.a(s0Var2);
            osListZ.k(((io.realm.internal.n) s0Var2).b().f7531c.Y());
            r22++;
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport
    public final void realmSet$plate(String str) {
        f0<AccidentMergedReport> f0Var = this.f7803b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7803b.f7531c.M(this.f7802a.f7811l);
                return;
            } else {
                this.f7803b.f7531c.o(this.f7802a.f7811l, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7802a.f7811l, pVar.Y());
            } else {
                pVar.q().x(this.f7802a.f7811l, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport
    public final void realmSet$reportId(String str) {
        f0<AccidentMergedReport> f0Var = this.f7803b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7803b.f7531c.M(this.f7802a.f7807h);
                return;
            } else {
                this.f7803b.f7531c.o(this.f7802a.f7807h, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7802a.f7807h, pVar.Y());
            } else {
                pVar.q().x(this.f7802a.f7807h, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport
    public final void realmSet$reportNumber(Integer num) {
        f0<AccidentMergedReport> f0Var = this.f7803b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            f0<AccidentMergedReport> f0Var2 = this.f7803b;
            if (num == null) {
                f0Var2.f7531c.M(this.f7802a.f7819t);
                return;
            } else {
                f0Var2.f7531c.A(this.f7802a.f7819t, num.intValue());
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (num == null) {
                pVar.q().w(this.f7802a.f7819t, pVar.Y());
            } else {
                pVar.q().v(this.f7802a.f7819t, pVar.Y(), num.intValue());
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport
    public final void realmSet$reportPartyId(String str) {
        f0<AccidentMergedReport> f0Var = this.f7803b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7803b.f7531c.M(this.f7802a.f7813n);
                return;
            } else {
                this.f7803b.f7531c.o(this.f7802a.f7813n, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7802a.f7813n, pVar.Y());
            } else {
                pVar.q().x(this.f7802a.f7813n, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport
    public final void realmSet$reportPartyStatus(String str) {
        f0<AccidentMergedReport> f0Var = this.f7803b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7803b.f7531c.M(this.f7802a.f7805e);
                return;
            } else {
                this.f7803b.f7531c.o(this.f7802a.f7805e, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7802a.f7805e, pVar.Y());
            } else {
                pVar.q().x(this.f7802a.f7805e, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport
    public final void realmSet$reportStatus(String str) {
        f0<AccidentMergedReport> f0Var = this.f7803b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7803b.f7531c.M(this.f7802a.f7810k);
                return;
            } else {
                this.f7803b.f7531c.o(this.f7802a.f7810k, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7802a.f7810k, pVar.Y());
            } else {
                pVar.q().x(this.f7802a.f7810k, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport
    public final void realmSet$role(String str) {
        f0<AccidentMergedReport> f0Var = this.f7803b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7803b.f7531c.M(this.f7802a.f7806g);
                return;
            } else {
                this.f7803b.f7531c.o(this.f7802a.f7806g, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7802a.f7806g, pVar.Y());
            } else {
                pVar.q().x(this.f7802a.f7806g, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport
    public final void realmSet$status(String str) {
        f0<AccidentMergedReport> f0Var = this.f7803b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7803b.f7531c.M(this.f7802a.f7818s);
                return;
            } else {
                this.f7803b.f7531c.o(this.f7802a.f7818s, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7802a.f7818s, pVar.Y());
            } else {
                pVar.q().x(this.f7802a.f7818s, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport
    public final void realmSet$updateDate(String str) {
        f0<AccidentMergedReport> f0Var = this.f7803b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7803b.f7531c.M(this.f7802a.f7816q);
                return;
            } else {
                this.f7803b.f7531c.o(this.f7802a.f7816q, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7802a.f7816q, pVar.Y());
            } else {
                pVar.q().x(this.f7802a.f7816q, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport
    public final void realmSet$vehiclePlateCityCode(String str) {
        f0<AccidentMergedReport> f0Var = this.f7803b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7803b.f7531c.M(this.f7802a.f7821v);
                return;
            } else {
                this.f7803b.f7531c.o(this.f7802a.f7821v, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7802a.f7821v, pVar.Y());
            } else {
                pVar.q().x(this.f7802a.f7821v, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport
    public final void realmSet$vehiclePlateNumber(String str) {
        f0<AccidentMergedReport> f0Var = this.f7803b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7803b.f7531c.M(this.f7802a.f7820u);
                return;
            } else {
                this.f7803b.f7531c.o(this.f7802a.f7820u, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7802a.f7820u, pVar.Y());
            } else {
                pVar.q().x(this.f7802a.f7820u, pVar.Y(), str);
            }
        }
    }

    public final String toString() {
        if (!v0.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb2 = new StringBuilder("AccidentMergedReport = proxy[{reportPartyStatus:");
        sb2.append(getReportPartyStatus() != null ? getReportPartyStatus() : "null");
        sb2.append("},{accidentDate:");
        sb2.append(getAccidentDate() != null ? getAccidentDate() : "null");
        sb2.append("},{role:");
        sb2.append(getRole() != null ? getRole() : "null");
        sb2.append("},{reportId:");
        sb2.append(getReportId() != null ? getReportId() : "null");
        sb2.append("},{city:");
        sb2.append(getCity() != null ? getCity() : "null");
        sb2.append("},{district:");
        sb2.append(getDistrict() != null ? getDistrict() : "null");
        sb2.append("},{reportStatus:");
        sb2.append(getReportStatus() != null ? getReportStatus() : "null");
        sb2.append("},{plate:");
        sb2.append(getPlate() != null ? getPlate() : "null");
        sb2.append("},{expireDate:");
        sb2.append(getExpireDate() != null ? getExpireDate() : "null");
        sb2.append("},{reportPartyId:");
        sb2.append(getReportPartyId() != null ? getReportPartyId() : "null");
        sb2.append("},{id:");
        sb2.append(getId() != null ? getId() : "null");
        sb2.append("},{consolidatedStatus:");
        sb2.append(getConsolidatedStatus() != null ? getConsolidatedStatus() : "null");
        sb2.append("},{updateDate:");
        sb2.append(getUpdateDate() != null ? getUpdateDate() : "null");
        sb2.append("},{createDate:");
        sb2.append(getCreateDate() != null ? getCreateDate() : "null");
        sb2.append("},{status:");
        sb2.append(getStatus() != null ? getStatus() : "null");
        sb2.append("},{reportNumber:");
        sb2.append(getReportNumber() != null ? getReportNumber() : "null");
        sb2.append("},{vehiclePlateNumber:");
        sb2.append(getVehiclePlateNumber() != null ? getVehiclePlateNumber() : "null");
        sb2.append("},{vehiclePlateCityCode:");
        sb2.append(getVehiclePlateCityCode() != null ? getVehiclePlateCityCode() : "null");
        sb2.append("},{hasPdf:");
        sb2.append(getHasPdf());
        sb2.append("},{participants:RealmList<AccidentReportParticipant>[");
        sb2.append(getParticipants().size());
        sb2.append("]}]");
        return sb2.toString();
    }
}
