package io.realm;

import androidx.core.app.NotificationCompat;
import io.realm.a;
import io.realm.exceptions.RealmException;
import io.realm.internal.OsList;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.Table;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportDriver;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportLocation;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportMedia;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportVehicle;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport;

/* loaded from: classes2.dex */
public final class e2 extends MKTAccidentReport implements io.realm.internal.n {

    /* renamed from: d, reason: collision with root package name */
    public static final OsObjectSchemaInfo f7509d;

    /* renamed from: a, reason: collision with root package name */
    public a f7510a;

    /* renamed from: b, reason: collision with root package name */
    public f0<MKTAccidentReport> f7511b;

    /* renamed from: c, reason: collision with root package name */
    public q0<AccidentReportMedia> f7512c;

    public static final class a extends io.realm.internal.c {

        /* renamed from: e, reason: collision with root package name */
        public long f7513e;
        public long f;

        /* renamed from: g, reason: collision with root package name */
        public long f7514g;

        /* renamed from: h, reason: collision with root package name */
        public long f7515h;

        /* renamed from: i, reason: collision with root package name */
        public long f7516i;

        /* renamed from: j, reason: collision with root package name */
        public long f7517j;

        /* renamed from: k, reason: collision with root package name */
        public long f7518k;

        /* renamed from: l, reason: collision with root package name */
        public long f7519l;

        /* renamed from: m, reason: collision with root package name */
        public long f7520m;

        /* renamed from: n, reason: collision with root package name */
        public long f7521n;

        /* renamed from: o, reason: collision with root package name */
        public long f7522o;

        /* renamed from: p, reason: collision with root package name */
        public long f7523p;

        /* renamed from: q, reason: collision with root package name */
        public long f7524q;

        /* renamed from: r, reason: collision with root package name */
        public long f7525r;

        /* renamed from: s, reason: collision with root package name */
        public long f7526s;

        /* renamed from: t, reason: collision with root package name */
        public long f7527t;

        /* renamed from: u, reason: collision with root package name */
        public long f7528u;

        public a(OsSchemaInfo osSchemaInfo) {
            super(17, true);
            OsObjectSchemaInfo osObjectSchemaInfoA = osSchemaInfo.a("MKTAccidentReport");
            this.f7513e = a("id", "id", osObjectSchemaInfoA);
            this.f = a("nameSurname", "nameSurname", osObjectSchemaInfoA);
            this.f7514g = a("phoneNumber", "phoneNumber", osObjectSchemaInfoA);
            this.f7515h = a("role", "role", osObjectSchemaInfoA);
            this.f7516i = a("dashPointId", "dashPointId", osObjectSchemaInfoA);
            this.f7517j = a("dashPoint", "dashPoint", osObjectSchemaInfoA);
            this.f7518k = a("scenarioId", "scenarioId", osObjectSchemaInfoA);
            this.f7519l = a("accidentComment", "accidentComment", osObjectSchemaInfoA);
            this.f7520m = a(NotificationCompat.CATEGORY_STATUS, NotificationCompat.CATEGORY_STATUS, osObjectSchemaInfoA);
            this.f7521n = a("consolidatedStatus", "consolidatedStatus", osObjectSchemaInfoA);
            this.f7522o = a("createdDate", "createdDate", osObjectSchemaInfoA);
            this.f7523p = a("expiredDate", "expiredDate", osObjectSchemaInfoA);
            this.f7524q = a("driver", "driver", osObjectSchemaInfoA);
            this.f7525r = a("location", "location", osObjectSchemaInfoA);
            this.f7526s = a("vehicle", "vehicle", osObjectSchemaInfoA);
            this.f7527t = a("report", "report", osObjectSchemaInfoA);
            this.f7528u = a("media", "media", osObjectSchemaInfoA);
        }

        @Override // io.realm.internal.c
        public final void b(io.realm.internal.c cVar, io.realm.internal.c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f7513e = aVar.f7513e;
            aVar2.f = aVar.f;
            aVar2.f7514g = aVar.f7514g;
            aVar2.f7515h = aVar.f7515h;
            aVar2.f7516i = aVar.f7516i;
            aVar2.f7517j = aVar.f7517j;
            aVar2.f7518k = aVar.f7518k;
            aVar2.f7519l = aVar.f7519l;
            aVar2.f7520m = aVar.f7520m;
            aVar2.f7521n = aVar.f7521n;
            aVar2.f7522o = aVar.f7522o;
            aVar2.f7523p = aVar.f7523p;
            aVar2.f7524q = aVar.f7524q;
            aVar2.f7525r = aVar.f7525r;
            aVar2.f7526s = aVar.f7526s;
            aVar2.f7527t = aVar.f7527t;
            aVar2.f7528u = aVar.f7528u;
        }
    }

    static {
        OsObjectSchemaInfo.a aVar = new OsObjectSchemaInfo.a("MKTAccidentReport", false, 17);
        RealmFieldType realmFieldType = RealmFieldType.STRING;
        aVar.b("id", realmFieldType, true, false, false);
        aVar.b("nameSurname", realmFieldType, false, false, false);
        aVar.b("phoneNumber", realmFieldType, false, false, false);
        aVar.b("role", realmFieldType, false, false, false);
        aVar.b("dashPointId", realmFieldType, false, false, false);
        aVar.b("dashPoint", realmFieldType, false, false, false);
        aVar.b("scenarioId", realmFieldType, false, false, false);
        aVar.b("accidentComment", realmFieldType, false, false, false);
        aVar.b(NotificationCompat.CATEGORY_STATUS, realmFieldType, false, false, false);
        aVar.b("consolidatedStatus", realmFieldType, false, false, false);
        aVar.b("createdDate", realmFieldType, false, false, false);
        aVar.b("expiredDate", realmFieldType, false, false, false);
        RealmFieldType realmFieldType2 = RealmFieldType.OBJECT;
        aVar.a("driver", realmFieldType2, "AccidentReportDriver");
        aVar.a("location", realmFieldType2, "AccidentReportLocation");
        aVar.a("vehicle", realmFieldType2, "AccidentReportVehicle");
        aVar.a("report", realmFieldType2, "AccidentMergedReport");
        aVar.a("media", RealmFieldType.LIST, "AccidentReportMedia");
        f7509d = aVar.c();
    }

    public e2() {
        this.f7511b.c();
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x028b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport c(io.realm.g0 r23, io.realm.e2.a r24, tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport r25, boolean r26, java.util.HashMap r27, java.util.Set r28) {
        /*
            Method dump skipped, instructions count: 1161
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.e2.c(io.realm.g0, io.realm.e2$a, tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport, boolean, java.util.HashMap, java.util.Set):tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long d(g0 g0Var, MKTAccidentReport mKTAccidentReport, HashMap map) {
        long j10;
        long j11;
        long j12;
        a aVar;
        if ((mKTAccidentReport instanceof io.realm.internal.n) && !v0.isFrozen(mKTAccidentReport)) {
            io.realm.internal.n nVar = (io.realm.internal.n) mKTAccidentReport;
            if (nVar.b().f7533e != null && nVar.b().f7533e.f7455c.f7746c.equals(g0Var.f7455c.f7746c)) {
                return nVar.b().f7531c.Y();
            }
        }
        Table tableV = g0Var.v(MKTAccidentReport.class);
        long j13 = tableV.f7633a;
        a aVar2 = (a) g0Var.f7539j.a(MKTAccidentReport.class);
        long j14 = aVar2.f7513e;
        String id2 = mKTAccidentReport.getId();
        long jNativeFindFirstNull = id2 == null ? Table.nativeFindFirstNull(j13, j14) : Table.nativeFindFirstString(j13, j14, id2);
        if (jNativeFindFirstNull == -1) {
            jNativeFindFirstNull = OsObject.createRowWithPrimaryKey(tableV, j14, id2);
        }
        long j15 = jNativeFindFirstNull;
        map.put(mKTAccidentReport, Long.valueOf(j15));
        String nameSurname = mKTAccidentReport.getNameSurname();
        if (nameSurname != null) {
            Table.nativeSetString(j13, aVar2.f, j15, nameSurname, false);
            j10 = j15;
            j11 = j13;
        } else {
            j10 = j15;
            j11 = j13;
            Table.nativeSetNull(j13, aVar2.f, j10, false);
        }
        String phoneNumber = mKTAccidentReport.getPhoneNumber();
        if (phoneNumber != null) {
            long j16 = j10;
            Table.nativeSetString(j11, aVar2.f7514g, j16, phoneNumber, false);
            j10 = j16;
        } else {
            Table.nativeSetNull(j11, aVar2.f7514g, j10, false);
        }
        String role = mKTAccidentReport.getRole();
        if (role != null) {
            long j17 = j10;
            Table.nativeSetString(j11, aVar2.f7515h, j17, role, false);
            j10 = j17;
        } else {
            Table.nativeSetNull(j11, aVar2.f7515h, j10, false);
        }
        String dashPointId = mKTAccidentReport.getDashPointId();
        if (dashPointId != null) {
            long j18 = j10;
            Table.nativeSetString(j11, aVar2.f7516i, j18, dashPointId, false);
            j10 = j18;
        } else {
            Table.nativeSetNull(j11, aVar2.f7516i, j10, false);
        }
        String dashPoint = mKTAccidentReport.getDashPoint();
        if (dashPoint != null) {
            long j19 = j10;
            Table.nativeSetString(j11, aVar2.f7517j, j19, dashPoint, false);
            j10 = j19;
        } else {
            Table.nativeSetNull(j11, aVar2.f7517j, j10, false);
        }
        String scenarioId = mKTAccidentReport.getScenarioId();
        if (scenarioId != null) {
            long j20 = j10;
            Table.nativeSetString(j11, aVar2.f7518k, j20, scenarioId, false);
            j10 = j20;
        } else {
            Table.nativeSetNull(j11, aVar2.f7518k, j10, false);
        }
        String accidentComment = mKTAccidentReport.getAccidentComment();
        if (accidentComment != null) {
            long j21 = j10;
            Table.nativeSetString(j11, aVar2.f7519l, j21, accidentComment, false);
            j10 = j21;
        } else {
            Table.nativeSetNull(j11, aVar2.f7519l, j10, false);
        }
        String status = mKTAccidentReport.getStatus();
        if (status != null) {
            long j22 = j10;
            Table.nativeSetString(j11, aVar2.f7520m, j22, status, false);
            j10 = j22;
        } else {
            Table.nativeSetNull(j11, aVar2.f7520m, j10, false);
        }
        String consolidatedStatus = mKTAccidentReport.getConsolidatedStatus();
        if (consolidatedStatus != null) {
            long j23 = j10;
            Table.nativeSetString(j11, aVar2.f7521n, j23, consolidatedStatus, false);
            j10 = j23;
        } else {
            Table.nativeSetNull(j11, aVar2.f7521n, j10, false);
        }
        String createdDate = mKTAccidentReport.getCreatedDate();
        if (createdDate != null) {
            long j24 = j10;
            Table.nativeSetString(j11, aVar2.f7522o, j24, createdDate, false);
            j10 = j24;
        } else {
            Table.nativeSetNull(j11, aVar2.f7522o, j10, false);
        }
        String expiredDate = mKTAccidentReport.getExpiredDate();
        if (expiredDate != null) {
            long j25 = j10;
            Table.nativeSetString(j11, aVar2.f7523p, j25, expiredDate, false);
            j12 = j25;
        } else {
            long j26 = j10;
            j12 = j26;
            Table.nativeSetNull(j11, aVar2.f7523p, j26, false);
        }
        AccidentReportDriver driver = mKTAccidentReport.getDriver();
        if (driver != null) {
            Long l5 = (Long) map.get(driver);
            if (l5 != null) {
                throw new IllegalArgumentException("Embedded objects can only have one parent pointing to them. This object was already copied, so another object is pointing to it: " + l5.toString());
            }
            aVar = aVar2;
            s1.d(g0Var, tableV, aVar2.f7524q, j12, driver, map);
        } else {
            aVar = aVar2;
            Table.nativeNullifyLink(j11, aVar.f7524q, j12);
        }
        AccidentReportLocation location = mKTAccidentReport.getLocation();
        if (location != null) {
            Long l10 = (Long) map.get(location);
            if (l10 != null) {
                throw new IllegalArgumentException("Embedded objects can only have one parent pointing to them. This object was already copied, so another object is pointing to it: " + l10.toString());
            }
            u1.d(g0Var, tableV, aVar.f7525r, j12, location, map);
        } else {
            Table.nativeNullifyLink(j11, aVar.f7525r, j12);
        }
        AccidentReportVehicle vehicle = mKTAccidentReport.getVehicle();
        if (vehicle != null) {
            Long l11 = (Long) map.get(vehicle);
            if (l11 != null) {
                throw new IllegalArgumentException("Embedded objects can only have one parent pointing to them. This object was already copied, so another object is pointing to it: " + l11.toString());
            }
            c2.c(g0Var, tableV, aVar.f7526s, j12, vehicle, map);
        } else {
            Table.nativeNullifyLink(j11, aVar.f7526s, j12);
        }
        AccidentMergedReport report = mKTAccidentReport.getReport();
        if (report != null) {
            Long l12 = (Long) map.get(report);
            if (l12 != null) {
                throw new IllegalArgumentException("Embedded objects can only have one parent pointing to them. This object was already copied, so another object is pointing to it: " + l12.toString());
            }
            q1.d(g0Var, tableV, aVar.f7527t, j12, report, map);
        } else {
            Table.nativeNullifyLink(j11, aVar.f7527t, j12);
        }
        OsList osList = new OsList(tableV.o(j12), aVar.f7528u);
        q0<AccidentReportMedia> media = mKTAccidentReport.getMedia();
        osList.I();
        if (media != null) {
            Iterator<AccidentReportMedia> it = media.iterator();
            while (it.hasNext()) {
                AccidentReportMedia next = it.next();
                Long l13 = (Long) map.get(next);
                if (l13 != null) {
                    throw new IllegalArgumentException("Embedded objects can only have one parent pointing to them. This object was already copied, so another object is pointing to it: " + l13.toString());
                }
                w1.d(g0Var, tableV, aVar.f7528u, j12, next, map);
            }
        }
        return j12;
    }

    @Override // io.realm.internal.n
    public final void a() {
        if (this.f7511b != null) {
            return;
        }
        a.b bVar = io.realm.a.f7452h.get();
        this.f7510a = (a) bVar.f7461c;
        f0<MKTAccidentReport> f0Var = new f0<>(this);
        this.f7511b = f0Var;
        f0Var.f7533e = bVar.f7459a;
        f0Var.f7531c = bVar.f7460b;
        f0Var.f = bVar.f7462d;
        f0Var.f7534g = bVar.f7463e;
    }

    @Override // io.realm.internal.n
    public final f0<?> b() {
        return this.f7511b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e2.class != obj.getClass()) {
            return false;
        }
        e2 e2Var = (e2) obj;
        io.realm.a aVar = this.f7511b.f7533e;
        io.realm.a aVar2 = e2Var.f7511b.f7533e;
        String str = aVar.f7455c.f7746c;
        String str2 = aVar2.f7455c.f7746c;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        if (aVar.j() != aVar2.j() || !aVar.f7457e.getVersionID().equals(aVar2.f7457e.getVersionID())) {
            return false;
        }
        String strM = this.f7511b.f7531c.q().m();
        String strM2 = e2Var.f7511b.f7531c.q().m();
        if (strM == null ? strM2 == null : strM.equals(strM2)) {
            return this.f7511b.f7531c.Y() == e2Var.f7511b.f7531c.Y();
        }
        return false;
    }

    public final int hashCode() {
        f0<MKTAccidentReport> f0Var = this.f7511b;
        String str = f0Var.f7533e.f7455c.f7746c;
        String strM = f0Var.f7531c.q().m();
        long jY = this.f7511b.f7531c.Y();
        return ((((527 + (str != null ? str.hashCode() : 0)) * 31) + (strM != null ? strM.hashCode() : 0)) * 31) + ((int) ((jY >>> 32) ^ jY));
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport, io.realm.f2
    /* renamed from: realmGet$accidentComment */
    public final String getAccidentComment() {
        this.f7511b.f7533e.b();
        return this.f7511b.f7531c.R(this.f7510a.f7519l);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport, io.realm.f2
    /* renamed from: realmGet$consolidatedStatus */
    public final String getConsolidatedStatus() {
        this.f7511b.f7533e.b();
        return this.f7511b.f7531c.R(this.f7510a.f7521n);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport, io.realm.f2
    /* renamed from: realmGet$createdDate */
    public final String getCreatedDate() {
        this.f7511b.f7533e.b();
        return this.f7511b.f7531c.R(this.f7510a.f7522o);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport, io.realm.f2
    /* renamed from: realmGet$dashPoint */
    public final String getDashPoint() {
        this.f7511b.f7533e.b();
        return this.f7511b.f7531c.R(this.f7510a.f7517j);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport, io.realm.f2
    /* renamed from: realmGet$dashPointId */
    public final String getDashPointId() {
        this.f7511b.f7533e.b();
        return this.f7511b.f7531c.R(this.f7510a.f7516i);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport, io.realm.f2
    /* renamed from: realmGet$driver */
    public final AccidentReportDriver getDriver() {
        this.f7511b.f7533e.b();
        if (this.f7511b.f7531c.L(this.f7510a.f7524q)) {
            return null;
        }
        f0<MKTAccidentReport> f0Var = this.f7511b;
        return (AccidentReportDriver) f0Var.f7533e.e(AccidentReportDriver.class, f0Var.f7531c.P(this.f7510a.f7524q), Collections.emptyList());
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport, io.realm.f2
    /* renamed from: realmGet$expiredDate */
    public final String getExpiredDate() {
        this.f7511b.f7533e.b();
        return this.f7511b.f7531c.R(this.f7510a.f7523p);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport, io.realm.f2
    /* renamed from: realmGet$id */
    public final String getId() {
        this.f7511b.f7533e.b();
        return this.f7511b.f7531c.R(this.f7510a.f7513e);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport, io.realm.f2
    /* renamed from: realmGet$location */
    public final AccidentReportLocation getLocation() {
        this.f7511b.f7533e.b();
        if (this.f7511b.f7531c.L(this.f7510a.f7525r)) {
            return null;
        }
        f0<MKTAccidentReport> f0Var = this.f7511b;
        return (AccidentReportLocation) f0Var.f7533e.e(AccidentReportLocation.class, f0Var.f7531c.P(this.f7510a.f7525r), Collections.emptyList());
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport, io.realm.f2
    /* renamed from: realmGet$media */
    public final q0<AccidentReportMedia> getMedia() {
        this.f7511b.f7533e.b();
        q0<AccidentReportMedia> q0Var = this.f7512c;
        if (q0Var != null) {
            return q0Var;
        }
        q0<AccidentReportMedia> q0Var2 = new q0<>(this.f7511b.f7533e, this.f7511b.f7531c.z(this.f7510a.f7528u), AccidentReportMedia.class);
        this.f7512c = q0Var2;
        return q0Var2;
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport, io.realm.f2
    /* renamed from: realmGet$nameSurname */
    public final String getNameSurname() {
        this.f7511b.f7533e.b();
        return this.f7511b.f7531c.R(this.f7510a.f);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport, io.realm.f2
    /* renamed from: realmGet$phoneNumber */
    public final String getPhoneNumber() {
        this.f7511b.f7533e.b();
        return this.f7511b.f7531c.R(this.f7510a.f7514g);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport, io.realm.f2
    /* renamed from: realmGet$report */
    public final AccidentMergedReport getReport() {
        this.f7511b.f7533e.b();
        if (this.f7511b.f7531c.L(this.f7510a.f7527t)) {
            return null;
        }
        f0<MKTAccidentReport> f0Var = this.f7511b;
        return (AccidentMergedReport) f0Var.f7533e.e(AccidentMergedReport.class, f0Var.f7531c.P(this.f7510a.f7527t), Collections.emptyList());
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport, io.realm.f2
    /* renamed from: realmGet$role */
    public final String getRole() {
        this.f7511b.f7533e.b();
        return this.f7511b.f7531c.R(this.f7510a.f7515h);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport, io.realm.f2
    /* renamed from: realmGet$scenarioId */
    public final String getScenarioId() {
        this.f7511b.f7533e.b();
        return this.f7511b.f7531c.R(this.f7510a.f7518k);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport, io.realm.f2
    /* renamed from: realmGet$status */
    public final String getStatus() {
        this.f7511b.f7533e.b();
        return this.f7511b.f7531c.R(this.f7510a.f7520m);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport, io.realm.f2
    /* renamed from: realmGet$vehicle */
    public final AccidentReportVehicle getVehicle() {
        this.f7511b.f7533e.b();
        if (this.f7511b.f7531c.L(this.f7510a.f7526s)) {
            return null;
        }
        f0<MKTAccidentReport> f0Var = this.f7511b;
        return (AccidentReportVehicle) f0Var.f7533e.e(AccidentReportVehicle.class, f0Var.f7531c.P(this.f7510a.f7526s), Collections.emptyList());
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport
    public final void realmSet$accidentComment(String str) {
        f0<MKTAccidentReport> f0Var = this.f7511b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7511b.f7531c.M(this.f7510a.f7519l);
                return;
            } else {
                this.f7511b.f7531c.o(this.f7510a.f7519l, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7510a.f7519l, pVar.Y());
            } else {
                pVar.q().x(this.f7510a.f7519l, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport
    public final void realmSet$consolidatedStatus(String str) {
        f0<MKTAccidentReport> f0Var = this.f7511b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7511b.f7531c.M(this.f7510a.f7521n);
                return;
            } else {
                this.f7511b.f7531c.o(this.f7510a.f7521n, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7510a.f7521n, pVar.Y());
            } else {
                pVar.q().x(this.f7510a.f7521n, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport
    public final void realmSet$createdDate(String str) {
        f0<MKTAccidentReport> f0Var = this.f7511b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7511b.f7531c.M(this.f7510a.f7522o);
                return;
            } else {
                this.f7511b.f7531c.o(this.f7510a.f7522o, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7510a.f7522o, pVar.Y());
            } else {
                pVar.q().x(this.f7510a.f7522o, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport
    public final void realmSet$dashPoint(String str) {
        f0<MKTAccidentReport> f0Var = this.f7511b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7511b.f7531c.M(this.f7510a.f7517j);
                return;
            } else {
                this.f7511b.f7531c.o(this.f7510a.f7517j, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7510a.f7517j, pVar.Y());
            } else {
                pVar.q().x(this.f7510a.f7517j, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport
    public final void realmSet$dashPointId(String str) {
        f0<MKTAccidentReport> f0Var = this.f7511b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7511b.f7531c.M(this.f7510a.f7516i);
                return;
            } else {
                this.f7511b.f7531c.o(this.f7510a.f7516i, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7510a.f7516i, pVar.Y());
            } else {
                pVar.q().x(this.f7510a.f7516i, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport
    public final void realmSet$driver(AccidentReportDriver accidentReportDriver) {
        f0<MKTAccidentReport> f0Var = this.f7511b;
        io.realm.a aVar = f0Var.f7533e;
        g0 g0Var = (g0) aVar;
        if (!f0Var.f7530b) {
            aVar.b();
            if (accidentReportDriver == null) {
                this.f7511b.f7531c.E(this.f7510a.f7524q);
                return;
            }
            if (v0.isManaged(accidentReportDriver)) {
                this.f7511b.a(accidentReportDriver);
            }
            AccidentReportDriver accidentReportDriver2 = (AccidentReportDriver) g0Var.q(AccidentReportDriver.class, this, "driver");
            new HashMap();
            s1.f(g0Var, accidentReportDriver, accidentReportDriver2, Collections.EMPTY_SET);
            return;
        }
        if (f0Var.f) {
            s0 s0Var = accidentReportDriver;
            if (f0Var.f7534g.contains("driver")) {
                return;
            }
            if (accidentReportDriver != null) {
                boolean zIsManaged = v0.isManaged(accidentReportDriver);
                s0Var = accidentReportDriver;
                if (!zIsManaged) {
                    AccidentReportDriver accidentReportDriver3 = (AccidentReportDriver) g0Var.q(AccidentReportDriver.class, this, "driver");
                    new HashMap();
                    s1.f(g0Var, accidentReportDriver, accidentReportDriver3, Collections.EMPTY_SET);
                    s0Var = accidentReportDriver3;
                }
            }
            f0<MKTAccidentReport> f0Var2 = this.f7511b;
            io.realm.internal.p pVar = f0Var2.f7531c;
            if (s0Var == null) {
                pVar.E(this.f7510a.f7524q);
            } else {
                f0Var2.a(s0Var);
                pVar.q().u(this.f7510a.f7524q, pVar.Y(), ((io.realm.internal.n) s0Var).b().f7531c.Y());
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport
    public final void realmSet$expiredDate(String str) {
        f0<MKTAccidentReport> f0Var = this.f7511b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7511b.f7531c.M(this.f7510a.f7523p);
                return;
            } else {
                this.f7511b.f7531c.o(this.f7510a.f7523p, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7510a.f7523p, pVar.Y());
            } else {
                pVar.q().x(this.f7510a.f7523p, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport
    public final void realmSet$id(String str) {
        f0<MKTAccidentReport> f0Var = this.f7511b;
        if (f0Var.f7530b) {
            return;
        }
        f0Var.f7533e.b();
        throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport
    public final void realmSet$location(AccidentReportLocation accidentReportLocation) {
        f0<MKTAccidentReport> f0Var = this.f7511b;
        io.realm.a aVar = f0Var.f7533e;
        g0 g0Var = (g0) aVar;
        if (!f0Var.f7530b) {
            aVar.b();
            if (accidentReportLocation == null) {
                this.f7511b.f7531c.E(this.f7510a.f7525r);
                return;
            }
            if (v0.isManaged(accidentReportLocation)) {
                this.f7511b.a(accidentReportLocation);
            }
            AccidentReportLocation accidentReportLocation2 = (AccidentReportLocation) g0Var.q(AccidentReportLocation.class, this, "location");
            new HashMap();
            u1.f(g0Var, accidentReportLocation, accidentReportLocation2, Collections.EMPTY_SET);
            return;
        }
        if (f0Var.f) {
            s0 s0Var = accidentReportLocation;
            if (f0Var.f7534g.contains("location")) {
                return;
            }
            if (accidentReportLocation != null) {
                boolean zIsManaged = v0.isManaged(accidentReportLocation);
                s0Var = accidentReportLocation;
                if (!zIsManaged) {
                    AccidentReportLocation accidentReportLocation3 = (AccidentReportLocation) g0Var.q(AccidentReportLocation.class, this, "location");
                    new HashMap();
                    u1.f(g0Var, accidentReportLocation, accidentReportLocation3, Collections.EMPTY_SET);
                    s0Var = accidentReportLocation3;
                }
            }
            f0<MKTAccidentReport> f0Var2 = this.f7511b;
            io.realm.internal.p pVar = f0Var2.f7531c;
            if (s0Var == null) {
                pVar.E(this.f7510a.f7525r);
            } else {
                f0Var2.a(s0Var);
                pVar.q().u(this.f7510a.f7525r, pVar.Y(), ((io.realm.internal.n) s0Var).b().f7531c.Y());
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport
    public final void realmSet$media(q0<AccidentReportMedia> q0Var) {
        f0<MKTAccidentReport> f0Var = this.f7511b;
        int r22 = 0;
        if (f0Var.f7530b) {
            if (!f0Var.f || f0Var.f7534g.contains("media")) {
                return;
            }
            if (q0Var != null && !q0Var.x()) {
                g0 g0Var = (g0) this.f7511b.f7533e;
                q0<AccidentReportMedia> q0Var2 = new q0<>();
                Iterator<AccidentReportMedia> it = q0Var.iterator();
                while (it.hasNext()) {
                    AccidentReportMedia next = it.next();
                    if (next != null && !v0.isManaged(next)) {
                        next = (AccidentReportMedia) g0Var.o(next, new v[0]);
                    }
                    q0Var2.add(next);
                }
                q0Var = q0Var2;
            }
        }
        this.f7511b.f7533e.b();
        OsList osListZ = this.f7511b.f7531c.z(this.f7510a.f7528u);
        if (q0Var != null && q0Var.size() == osListZ.W()) {
            int size = q0Var.size();
            while (r22 < size) {
                s0 s0Var = (AccidentReportMedia) q0Var.get(r22);
                this.f7511b.a(s0Var);
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
            s0 s0Var2 = (AccidentReportMedia) q0Var.get(r22);
            this.f7511b.a(s0Var2);
            osListZ.k(((io.realm.internal.n) s0Var2).b().f7531c.Y());
            r22++;
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport
    public final void realmSet$nameSurname(String str) {
        f0<MKTAccidentReport> f0Var = this.f7511b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7511b.f7531c.M(this.f7510a.f);
                return;
            } else {
                this.f7511b.f7531c.o(this.f7510a.f, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7510a.f, pVar.Y());
            } else {
                pVar.q().x(this.f7510a.f, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport
    public final void realmSet$phoneNumber(String str) {
        f0<MKTAccidentReport> f0Var = this.f7511b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7511b.f7531c.M(this.f7510a.f7514g);
                return;
            } else {
                this.f7511b.f7531c.o(this.f7510a.f7514g, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7510a.f7514g, pVar.Y());
            } else {
                pVar.q().x(this.f7510a.f7514g, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport
    public final void realmSet$report(AccidentMergedReport accidentMergedReport) {
        f0<MKTAccidentReport> f0Var = this.f7511b;
        io.realm.a aVar = f0Var.f7533e;
        g0 g0Var = (g0) aVar;
        if (!f0Var.f7530b) {
            aVar.b();
            if (accidentMergedReport == null) {
                this.f7511b.f7531c.E(this.f7510a.f7527t);
                return;
            }
            if (v0.isManaged(accidentMergedReport)) {
                this.f7511b.a(accidentMergedReport);
            }
            q1.f(g0Var, accidentMergedReport, (AccidentMergedReport) g0Var.q(AccidentMergedReport.class, this, "report"), new HashMap(), Collections.EMPTY_SET);
            return;
        }
        if (f0Var.f) {
            s0 s0Var = accidentMergedReport;
            if (f0Var.f7534g.contains("report")) {
                return;
            }
            if (accidentMergedReport != null) {
                boolean zIsManaged = v0.isManaged(accidentMergedReport);
                s0Var = accidentMergedReport;
                if (!zIsManaged) {
                    AccidentMergedReport accidentMergedReport2 = (AccidentMergedReport) g0Var.q(AccidentMergedReport.class, this, "report");
                    q1.f(g0Var, accidentMergedReport, accidentMergedReport2, new HashMap(), Collections.EMPTY_SET);
                    s0Var = accidentMergedReport2;
                }
            }
            f0<MKTAccidentReport> f0Var2 = this.f7511b;
            io.realm.internal.p pVar = f0Var2.f7531c;
            if (s0Var == null) {
                pVar.E(this.f7510a.f7527t);
            } else {
                f0Var2.a(s0Var);
                pVar.q().u(this.f7510a.f7527t, pVar.Y(), ((io.realm.internal.n) s0Var).b().f7531c.Y());
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport
    public final void realmSet$role(String str) {
        f0<MKTAccidentReport> f0Var = this.f7511b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7511b.f7531c.M(this.f7510a.f7515h);
                return;
            } else {
                this.f7511b.f7531c.o(this.f7510a.f7515h, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7510a.f7515h, pVar.Y());
            } else {
                pVar.q().x(this.f7510a.f7515h, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport
    public final void realmSet$scenarioId(String str) {
        f0<MKTAccidentReport> f0Var = this.f7511b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7511b.f7531c.M(this.f7510a.f7518k);
                return;
            } else {
                this.f7511b.f7531c.o(this.f7510a.f7518k, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7510a.f7518k, pVar.Y());
            } else {
                pVar.q().x(this.f7510a.f7518k, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport
    public final void realmSet$status(String str) {
        f0<MKTAccidentReport> f0Var = this.f7511b;
        if (!f0Var.f7530b) {
            f0Var.f7533e.b();
            if (str == null) {
                this.f7511b.f7531c.M(this.f7510a.f7520m);
                return;
            } else {
                this.f7511b.f7531c.o(this.f7510a.f7520m, str);
                return;
            }
        }
        if (f0Var.f) {
            io.realm.internal.p pVar = f0Var.f7531c;
            if (str == null) {
                pVar.q().w(this.f7510a.f7520m, pVar.Y());
            } else {
                pVar.q().x(this.f7510a.f7520m, pVar.Y(), str);
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport
    public final void realmSet$vehicle(AccidentReportVehicle accidentReportVehicle) {
        f0<MKTAccidentReport> f0Var = this.f7511b;
        io.realm.a aVar = f0Var.f7533e;
        g0 g0Var = (g0) aVar;
        if (!f0Var.f7530b) {
            aVar.b();
            if (accidentReportVehicle == null) {
                this.f7511b.f7531c.E(this.f7510a.f7526s);
                return;
            }
            if (v0.isManaged(accidentReportVehicle)) {
                this.f7511b.a(accidentReportVehicle);
            }
            c2.e(g0Var, accidentReportVehicle, (AccidentReportVehicle) g0Var.q(AccidentReportVehicle.class, this, "vehicle"), new HashMap(), Collections.EMPTY_SET);
            return;
        }
        if (f0Var.f) {
            s0 s0Var = accidentReportVehicle;
            if (f0Var.f7534g.contains("vehicle")) {
                return;
            }
            if (accidentReportVehicle != null) {
                boolean zIsManaged = v0.isManaged(accidentReportVehicle);
                s0Var = accidentReportVehicle;
                if (!zIsManaged) {
                    AccidentReportVehicle accidentReportVehicle2 = (AccidentReportVehicle) g0Var.q(AccidentReportVehicle.class, this, "vehicle");
                    c2.e(g0Var, accidentReportVehicle, accidentReportVehicle2, new HashMap(), Collections.EMPTY_SET);
                    s0Var = accidentReportVehicle2;
                }
            }
            f0<MKTAccidentReport> f0Var2 = this.f7511b;
            io.realm.internal.p pVar = f0Var2.f7531c;
            if (s0Var == null) {
                pVar.E(this.f7510a.f7526s);
            } else {
                f0Var2.a(s0Var);
                pVar.q().u(this.f7510a.f7526s, pVar.Y(), ((io.realm.internal.n) s0Var).b().f7531c.Y());
            }
        }
    }

    public final String toString() {
        if (!v0.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb2 = new StringBuilder("MKTAccidentReport = proxy[{id:");
        sb2.append(getId() != null ? getId() : "null");
        sb2.append("},{nameSurname:");
        sb2.append(getNameSurname() != null ? getNameSurname() : "null");
        sb2.append("},{phoneNumber:");
        sb2.append(getPhoneNumber() != null ? getPhoneNumber() : "null");
        sb2.append("},{role:");
        sb2.append(getRole() != null ? getRole() : "null");
        sb2.append("},{dashPointId:");
        sb2.append(getDashPointId() != null ? getDashPointId() : "null");
        sb2.append("},{dashPoint:");
        sb2.append(getDashPoint() != null ? getDashPoint() : "null");
        sb2.append("},{scenarioId:");
        sb2.append(getScenarioId() != null ? getScenarioId() : "null");
        sb2.append("},{accidentComment:");
        sb2.append(getAccidentComment() != null ? getAccidentComment() : "null");
        sb2.append("},{status:");
        sb2.append(getStatus() != null ? getStatus() : "null");
        sb2.append("},{consolidatedStatus:");
        sb2.append(getConsolidatedStatus() != null ? getConsolidatedStatus() : "null");
        sb2.append("},{createdDate:");
        sb2.append(getCreatedDate() != null ? getCreatedDate() : "null");
        sb2.append("},{expiredDate:");
        sb2.append(getExpiredDate() != null ? getExpiredDate() : "null");
        sb2.append("},{driver:");
        sb2.append(getDriver() != null ? "AccidentReportDriver" : "null");
        sb2.append("},{location:");
        sb2.append(getLocation() != null ? "AccidentReportLocation" : "null");
        sb2.append("},{vehicle:");
        sb2.append(getVehicle() != null ? "AccidentReportVehicle" : "null");
        sb2.append("},{report:");
        sb2.append(getReport() != null ? "AccidentMergedReport" : "null");
        sb2.append("},{media:RealmList<AccidentReportMedia>[");
        sb2.append(getMedia().size());
        sb2.append("]}]");
        return sb2.toString();
    }
}
