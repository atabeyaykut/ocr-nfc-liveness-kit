package androidx.camera.camera2.interop;

import a7.a;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import androidx.camera.camera2.interop.CaptureRequestOptions;
import androidx.camera.core.CameraX;
import androidx.camera.core.impl.Config;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import b3.r;
import io.realm.g0;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportLocation;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DescriptionSaveInfo;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.LocationSaveInfo;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport;
import u2.s;

/* loaded from: classes.dex */
public final /* synthetic */ class h implements Config.OptionMatcher, CallbackToFutureAdapter.Resolver, r.a, a.InterfaceC0008a, g0.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f662a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f663b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f664c;

    public /* synthetic */ h(int r12, Object obj, Object obj2) {
        this.f662a = r12;
        this.f663b = obj;
        this.f664c = obj2;
    }

    @Override // a7.a.InterfaceC0008a
    public final void a(a7.b bVar) {
        a.InterfaceC0008a interfaceC0008a = (a.InterfaceC0008a) this.f663b;
        a.InterfaceC0008a interfaceC0008a2 = (a.InterfaceC0008a) this.f664c;
        interfaceC0008a.a(bVar);
        interfaceC0008a2.a(bVar);
    }

    @Override // b3.r.a
    public final Object apply(Object obj) {
        r rVar = (r) this.f663b;
        s sVar = (s) this.f664c;
        r2.b bVar = r.f;
        rVar.getClass();
        Long lE = r.e((SQLiteDatabase) obj, sVar);
        if (lE == null) {
            return Boolean.FALSE;
        }
        Cursor cursorRawQuery = rVar.d().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{lE.toString()});
        try {
            return Boolean.valueOf(cursorRawQuery.moveToNext());
        } finally {
            cursorRawQuery.close();
        }
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return ((CameraX) this.f663b).lambda$initInternal$0((Context) this.f664c, completer);
    }

    @Override // io.realm.g0.a
    public final void d(g0 it) {
        int r02 = this.f662a;
        Object obj = this.f664c;
        Object obj2 = this.f663b;
        switch (r02) {
            case 4:
                DescriptionSaveInfo descriptionSaveInfo = (DescriptionSaveInfo) obj2;
                MKTAccidentReport mKTAccidentReport = (MKTAccidentReport) obj;
                kotlin.jvm.internal.h.e(it, "it");
                MKTAccidentReport mKTAccidentReport2 = (MKTAccidentReport) it.J(MKTAccidentReport.class).e();
                yd.a.f19652a.c("comment " + descriptionSaveInfo.getComment(), new Object[0]);
                if (mKTAccidentReport2 != null) {
                    mKTAccidentReport2.setAccidentComment(descriptionSaveInfo.getComment());
                }
                it.B(mKTAccidentReport);
                break;
            default:
                LocationSaveInfo locationSaveInfo = (LocationSaveInfo) obj2;
                MKTAccidentReport mKTAccidentReport3 = (MKTAccidentReport) obj;
                kotlin.jvm.internal.h.e(it, "it");
                MKTAccidentReport mKTAccidentReport4 = (MKTAccidentReport) it.J(MKTAccidentReport.class).e();
                AccidentReportLocation location = mKTAccidentReport4 != null ? mKTAccidentReport4.getLocation() : null;
                AccidentReportLocation accidentReportLocation = new AccidentReportLocation();
                accidentReportLocation.setId(location != null ? location.getId() : null);
                accidentReportLocation.setDeviceAddress(location != null ? location.getDeviceAddress() : null);
                accidentReportLocation.setDeviceLatitude(location != null ? location.getDeviceLatitude() : null);
                accidentReportLocation.setDeviceLongitude(location != null ? location.getDeviceLongitude() : null);
                accidentReportLocation.setRadius(location != null ? location.getRadius() : null);
                accidentReportLocation.setUpdatedDate(location != null ? location.getUpdatedDate() : null);
                accidentReportLocation.setAccidentLatitude(Double.valueOf(locationSaveInfo.getAccidentPoint().getLocationInfo().getLatitude()));
                accidentReportLocation.setAccidentLongitude(Double.valueOf(locationSaveInfo.getAccidentPoint().getLocationInfo().getLongitude()));
                accidentReportLocation.setAccidentAddress(locationSaveInfo.getAccidentAddress());
                if (mKTAccidentReport4 != null) {
                    mKTAccidentReport4.setLocation(accidentReportLocation);
                }
                it.B(mKTAccidentReport3);
                break;
        }
    }

    @Override // androidx.camera.core.impl.Config.OptionMatcher
    public final boolean onOptionMatched(Config.Option option) {
        return CaptureRequestOptions.Builder.lambda$from$0((CaptureRequestOptions.Builder) this.f663b, (Config) this.f664c, option);
    }
}
