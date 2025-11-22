package io.realm;

import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportDriver;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportLocation;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportMedia;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportVehicle;

/* loaded from: classes2.dex */
public interface f2 {
    /* renamed from: realmGet$accidentComment */
    String getAccidentComment();

    /* renamed from: realmGet$consolidatedStatus */
    String getConsolidatedStatus();

    /* renamed from: realmGet$createdDate */
    String getCreatedDate();

    /* renamed from: realmGet$dashPoint */
    String getDashPoint();

    /* renamed from: realmGet$dashPointId */
    String getDashPointId();

    /* renamed from: realmGet$driver */
    AccidentReportDriver getDriver();

    /* renamed from: realmGet$expiredDate */
    String getExpiredDate();

    /* renamed from: realmGet$id */
    String getId();

    /* renamed from: realmGet$location */
    AccidentReportLocation getLocation();

    /* renamed from: realmGet$media */
    q0<AccidentReportMedia> getMedia();

    /* renamed from: realmGet$nameSurname */
    String getNameSurname();

    /* renamed from: realmGet$phoneNumber */
    String getPhoneNumber();

    /* renamed from: realmGet$report */
    AccidentMergedReport getReport();

    /* renamed from: realmGet$role */
    String getRole();

    /* renamed from: realmGet$scenarioId */
    String getScenarioId();

    /* renamed from: realmGet$status */
    String getStatus();

    /* renamed from: realmGet$vehicle */
    AccidentReportVehicle getVehicle();
}
