package ab;

import android.database.Cursor;
import android.util.JsonReader;
import androidx.camera.core.Preview;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.internal.CameraUseCaseAdapter;
import androidx.constraintlayout.core.state.Interpolator;
import androidx.constraintlayout.core.state.Transition;
import androidx.recyclerview.widget.RecyclerView;
import b3.r;
import io.realm.g0;
import j6.b0;
import j6.q;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.ExecutionException;
import k6.a;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import s4.v0;
import tr.gov.turkiye.edevlet.kapisi.data.about.AboutPageModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.city.CityModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionContactModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.service.BarcodeServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.service.EBYSDocumentServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.service.EditorChoiceServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.service.MostUsedServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.service.NewestServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.service.WonderServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.login.LoginActivity;

/* loaded from: classes2.dex */
public final /* synthetic */ class b implements Preview.SurfaceProvider, Interpolator, r.a, a.InterfaceC0162a, g0.a {
    public static /* synthetic */ boolean a(int r32) {
        if (r32 == 1 || r32 == 2 || r32 == 3) {
            return false;
        }
        if (r32 == 4 || r32 == 5) {
            return true;
        }
        throw null;
    }

    public static String c(int r02, StringBuilder sb2) {
        sb2.append(Integer.toHexString(r02));
        return sb2.toString();
    }

    public static String e(RecyclerView recyclerView, StringBuilder sb2) {
        sb2.append(recyclerView.exceptionLabel());
        return sb2.toString();
    }

    public static String f(Object obj, String str) {
        return str.concat(obj.getClass().getName());
    }

    public static String g(CipherParameters cipherParameters, String str) {
        return str.concat(cipherParameters.getClass().getName());
    }

    public static HashMap h(Class cls, v0 v0Var) {
        HashMap map = new HashMap();
        map.put(cls, v0Var);
        return map;
    }

    public static void i(StringBuilder sb2, String str, ConfigurableProvider configurableProvider, String str2) {
        sb2.append(str);
        configurableProvider.addAlgorithm(str2, sb2.toString());
    }

    public static /* synthetic */ String j(int r12) {
        return r12 == 1 ? "INFLEXIBLE" : r12 == 2 ? "FLEXIBLE_UPPER_BOUND" : r12 == 3 ? "FLEXIBLE_LOWER_BOUND" : "null";
    }

    @Override // b3.r.a
    public Object apply(Object obj) {
        Cursor cursor = (Cursor) obj;
        r2.b bVar = r.f;
        return Long.valueOf(cursor.moveToNext() ? cursor.getLong(0) : 0L);
    }

    @Override // k6.a.InterfaceC0162a
    public Object b(JsonReader jsonReader) throws IOException {
        v6.d dVar = k6.a.f8771a;
        jsonReader.beginObject();
        String strNextString = null;
        Integer numValueOf = null;
        b0 b0Var = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            strNextName.hashCode();
            switch (strNextName) {
                case "frames":
                    ArrayList arrayList = new ArrayList();
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        arrayList.add(k6.a.a(jsonReader));
                    }
                    jsonReader.endArray();
                    b0Var = new b0(arrayList);
                    break;
                case "name":
                    strNextString = jsonReader.nextString();
                    if (strNextString == null) {
                        throw new NullPointerException("Null name");
                    }
                    break;
                case "importance":
                    numValueOf = Integer.valueOf(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        String strF = strNextString == null ? " name" : "";
        if (numValueOf == null) {
            strF = strF.concat(" importance");
        }
        if (b0Var == null) {
            strF = android.support.v4.media.a.f(strF, " frames");
        }
        if (strF.isEmpty()) {
            return new q(strNextString, numValueOf.intValue(), b0Var);
        }
        throw new IllegalStateException("Missing required properties:".concat(strF));
    }

    @Override // io.realm.g0.a
    public void d(g0 g0Var) {
        int r02 = LoginActivity.E;
        g0Var.r(InstitutionModelRealm.class);
        g0Var.r(InstitutionContactModelRealm.class);
        g0Var.r(MostUsedServiceModelRealm.class);
        g0Var.r(NewestServiceModelRealm.class);
        g0Var.r(BarcodeServiceModelRealm.class);
        g0Var.r(WonderServiceModelRealm.class);
        g0Var.r(EBYSDocumentServiceModelRealm.class);
        g0Var.r(EditorChoiceServiceModelRealm.class);
        g0Var.r(ServiceModelRealm.class);
        g0Var.r(AboutPageModelRealm.class);
        g0Var.r(CityModelRealm.class);
        g0Var.r(ConceptServiceModelRealm.class);
    }

    @Override // androidx.constraintlayout.core.state.Interpolator
    public float getInterpolation(float f) {
        return Transition.lambda$getInterpolator$7(f);
    }

    @Override // androidx.camera.core.Preview.SurfaceProvider
    public void onSurfaceRequested(SurfaceRequest surfaceRequest) throws ExecutionException, InterruptedException {
        CameraUseCaseAdapter.lambda$createExtraPreview$1(surfaceRequest);
    }
}
