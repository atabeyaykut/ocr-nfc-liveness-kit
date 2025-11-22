package androidx.camera.core.impl.utils;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.database.Cursor;
import android.util.Base64;
import android.util.JsonReader;
import b3.r;
import c6.h;
import c6.y;
import i7.f;
import j6.a0;
import j6.n;
import java.io.IOException;
import k6.a;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;

/* loaded from: classes.dex */
public final /* synthetic */ class f implements r.a, f.a, a.InterfaceC0162a, h {
    public static final boolean c(int r12) {
        return r12 == 6 || r12 == 4;
    }

    public static /* synthetic */ boolean d(int r22) {
        if (r22 == 1 || r22 == 2) {
            return true;
        }
        if (r22 == 3 || r22 == 4) {
            return false;
        }
        throw null;
    }

    public static /* synthetic */ boolean e(int r32) {
        if (r32 == 1) {
            return true;
        }
        if (r32 == 2) {
            return false;
        }
        if (r32 == 3) {
            return true;
        }
        if (r32 == 4) {
            return false;
        }
        throw null;
    }

    public static int f(ASN1Sequence aSN1Sequence, int r12) {
        return ASN1Integer.getInstance(aSN1Sequence.getObjectAt(r12)).intValueExact();
    }

    public static String g(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static StringBuilder h(String str, String str2, ConfigurableProvider configurableProvider, String str3, String str4) {
        configurableProvider.addAlgorithm(str3, str + str2);
        return new StringBuilder(str4);
    }

    public static /* synthetic */ void j(int r02, String str) {
        if (r02 != 0) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException(kotlin.jvm.internal.h.i(str));
        kotlin.jvm.internal.h.j(kotlin.jvm.internal.h.class.getName(), nullPointerException);
        throw nullPointerException;
    }

    public static /* synthetic */ String k(int r12) {
        if (r12 == 1) {
            return "SINGLE";
        }
        if (r12 == 2) {
            return "MULTIPLE";
        }
        throw null;
    }

    public static /* synthetic */ int l(String str) {
        if (str == null) {
            throw new NullPointerException("Name is null");
        }
        if (str.equals("SINGLE")) {
            return 1;
        }
        if (str.equals("MULTIPLE")) {
            return 2;
        }
        throw new IllegalArgumentException("No enum constant com.esafirm.imagepicker.features.ImagePickerMode.".concat(str));
    }

    @Override // i7.f.a
    public String a(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return applicationInfo != null ? String.valueOf(applicationInfo.targetSdkVersion) : "";
    }

    @Override // b3.r.a
    public Object apply(Object obj) {
        r2.b bVar = r.f;
        return Boolean.valueOf(((Cursor) obj).getCount() > 0);
    }

    @Override // k6.a.InterfaceC0162a
    public Object b(JsonReader jsonReader) throws IOException {
        v6.d dVar = k6.a.f8771a;
        n.a aVar = new n.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "name":
                    String strNextString = jsonReader.nextString();
                    if (strNextString == null) {
                        throw new NullPointerException("Null name");
                    }
                    aVar.f8224c = strNextString;
                    break;
                case "size":
                    aVar.f8223b = Long.valueOf(jsonReader.nextLong());
                    break;
                case "uuid":
                    aVar.f8225d = new String(Base64.decode(jsonReader.nextString(), 2), a0.f8115a);
                    break;
                case "baseAddress":
                    aVar.f8222a = Long.valueOf(jsonReader.nextLong());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return aVar.a();
    }

    @Override // c6.h
    public Object i(y yVar) {
        Context context = (Context) yVar.a(Context.class);
        yVar.h(y6.d.class);
        return new y6.c(context);
    }
}
