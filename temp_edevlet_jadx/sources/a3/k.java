package a3;

import androidx.camera.core.ImageProxy;
import c3.b;
import io.realm.g0;
import java.util.Iterator;
import java.util.Map;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportLocation;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.LocationSaveInfo;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport;
import y2.c;

/* loaded from: classes.dex */
public final /* synthetic */ class k implements b.a, h5.f, g0.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f79a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f80b;

    public /* synthetic */ k(Object obj, Object obj2) {
        this.f79a = obj;
        this.f80b = obj2;
    }

    @Override // io.realm.g0.a
    public final void d(g0 it) {
        LocationSaveInfo locationSaveInfo = (LocationSaveInfo) this.f79a;
        MKTAccidentReport mKTAccidentReport = (MKTAccidentReport) this.f80b;
        kotlin.jvm.internal.h.e(it, "it");
        MKTAccidentReport mKTAccidentReport2 = (MKTAccidentReport) it.J(MKTAccidentReport.class).e();
        AccidentReportLocation location = mKTAccidentReport2 != null ? mKTAccidentReport2.getLocation() : null;
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
        if (mKTAccidentReport2 != null) {
            mKTAccidentReport2.setLocation(accidentReportLocation);
        }
        it.B(mKTAccidentReport);
    }

    @Override // h5.f
    public final void e(Exception it) {
        ae.a this$0 = (ae.a) this.f79a;
        ImageProxy imageProxy = (ImageProxy) this.f80b;
        kotlin.jvm.internal.h.f(this$0, "this$0");
        kotlin.jvm.internal.h.f(imageProxy, "$imageProxy");
        kotlin.jvm.internal.h.f(it, "it");
        this$0.f270b = false;
        imageProxy.close();
    }

    @Override // c3.b.a
    public final Object execute() {
        m mVar = (m) this.f79a;
        Map map = (Map) this.f80b;
        mVar.getClass();
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            mVar.f91i.c(((Integer) r2.getValue()).intValue(), c.a.INVALID_PAYLOD, (String) ((Map.Entry) it.next()).getKey());
        }
        return null;
    }
}
