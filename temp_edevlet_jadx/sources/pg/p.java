package pg;

import android.os.CountDownTimer;
import androidx.core.location.LocationCompat;
import org.json.JSONException;
import org.json.JSONObject;
import tr.gov.turkiye.edevlet.kapisi.servicepage.ServicePageActivity;

/* loaded from: classes3.dex */
public final class p extends CountDownTimer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ServicePageActivity f13219a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(ServicePageActivity servicePageActivity) {
        super(7000L, 1000L);
        this.f13219a = servicePageActivity;
    }

    @Override // android.os.CountDownTimer
    public final void onFinish() throws JSONException {
        ServicePageActivity servicePageActivity = this.f13219a;
        int r12 = servicePageActivity.R + 1;
        servicePageActivity.R = r12;
        if (r12 < servicePageActivity.P) {
            p pVar = servicePageActivity.T;
            if (pVar != null) {
                pVar.cancel();
            }
            p pVar2 = new p(servicePageActivity);
            servicePageActivity.T = pVar2;
            pVar2.start();
            return;
        }
        if (servicePageActivity.O != null) {
            p pVar3 = servicePageActivity.T;
            if (pVar3 != null) {
                pVar3.cancel();
                return;
            }
            return;
        }
        gd.e eVar = servicePageActivity.V;
        if (eVar != null) {
            id.b.a("BeaconManager", "API removeAllRangeNotifiers", new Object[0]);
            eVar.f6643d.clear();
        }
        gd.e eVar2 = servicePageActivity.V;
        if (eVar2 != null) {
            id.b.a("BeaconManager", "API removeAllMonitorNotifiers", new Object[0]);
            if (!eVar2.e()) {
                eVar2.f6644e.clear();
            }
        }
        p pVar4 = servicePageActivity.T;
        if (pVar4 != null) {
            pVar4.cancel();
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("result", false);
        jSONObject.put("beacon", (Object) null);
        jSONObject.put("error", "FAIL_EXCEEDS_TRY_COUNT");
        jSONObject.put("errorMessage", "Beacon tarama sonucunda eşleşen bir cihaz bulunamadı.");
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("latitude", servicePageActivity.f16789a0);
        jSONObject2.put("longitude", servicePageActivity.f16796h0);
        jSONObject2.put(LocationCompat.EXTRA_VERTICAL_ACCURACY, Float.valueOf(servicePageActivity.Z));
        jSONObject2.put("horizontalAccuracy", Float.valueOf(servicePageActivity.Y));
        jSONObject.put("location", jSONObject2);
        yd.a.f19652a.c("Result Error " + jSONObject, new Object[0]);
        servicePageActivity.v().f16829g.evaluateJavascript("muzekartBeaconResult(" + jSONObject + ')', null);
    }

    @Override // android.os.CountDownTimer
    public final void onTick(long j10) {
        yd.a.f19652a.c("seconds remaining: " + (j10 / 1000), new Object[0]);
    }
}
