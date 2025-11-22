package androidx.constraintlayout.core.state;

import a7.a;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Base64;
import android.util.JsonReader;
import b3.r;
import e.b;
import j6.f;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import k6.a;
import u2.j;
import u2.s;
import v6.d;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements Interpolator, b.InterfaceC0076b, r.a, a.InterfaceC0008a, a.InterfaceC0162a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f879a;

    public /* synthetic */ b(int r12) {
        this.f879a = r12;
    }

    @Override // a7.a.InterfaceC0008a
    public final void a(a7.b bVar) {
    }

    @Override // b3.r.a
    public final Object apply(Object obj) {
        int r22 = 3;
        switch (this.f879a) {
            case 2:
                r2.b bVar = r.f;
                return (List) r.i(((SQLiteDatabase) obj).rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]), new b(r22));
            case 3:
                Cursor cursor = (Cursor) obj;
                r2.b bVar2 = r.f;
                ArrayList arrayList = new ArrayList();
                while (cursor.moveToNext()) {
                    j.a aVarA = s.a();
                    aVarA.b(cursor.getString(1));
                    aVarA.c(e3.a.b(cursor.getInt(2)));
                    String string = cursor.getString(3);
                    aVarA.f17840b = string == null ? null : Base64.decode(string, 0);
                    arrayList.add(aVarA.a());
                }
                return arrayList;
            default:
                Cursor cursor2 = (Cursor) obj;
                r2.b bVar3 = r.f;
                if (cursor2.moveToNext()) {
                    return Long.valueOf(cursor2.getLong(0));
                }
                return null;
        }
    }

    @Override // k6.a.InterfaceC0162a
    public final Object b(JsonReader jsonReader) throws IOException {
        d dVar = k6.a.f8771a;
        jsonReader.beginObject();
        String strNextString = null;
        byte[] bArrDecode = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            if (strNextName.equals("filename")) {
                strNextString = jsonReader.nextString();
                if (strNextString == null) {
                    throw new NullPointerException("Null filename");
                }
            } else if (strNextName.equals("contents")) {
                bArrDecode = Base64.decode(jsonReader.nextString(), 2);
                if (bArrDecode == null) {
                    throw new NullPointerException("Null contents");
                }
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        String strConcat = strNextString == null ? " filename" : "";
        if (bArrDecode == null) {
            strConcat = strConcat.concat(" contents");
        }
        if (strConcat.isEmpty()) {
            return new f(strNextString, bArrDecode);
        }
        throw new IllegalStateException("Missing required properties:".concat(strConcat));
    }

    @Override // androidx.constraintlayout.core.state.Interpolator
    public final float getInterpolation(float f) {
        return Transition.lambda$getInterpolator$4(f);
    }
}
