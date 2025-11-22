package gd;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class l implements Parcelable, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f6694a;

    /* renamed from: b, reason: collision with root package name */
    public final String f6695b;

    /* renamed from: c, reason: collision with root package name */
    public final String f6696c;

    /* renamed from: d, reason: collision with root package name */
    public static final Pattern f6693d = Pattern.compile("^[0-9A-Fa-f]{2}\\:[0-9A-Fa-f]{2}\\:[0-9A-Fa-f]{2}\\:[0-9A-Fa-f]{2}\\:[0-9A-Fa-f]{2}\\:[0-9A-Fa-f]{2}$");
    public static final Parcelable.Creator<l> CREATOR = new a();

    public class a implements Parcelable.Creator<l> {
        @Override // android.os.Parcelable.Creator
        public final l createFromParcel(Parcel parcel) {
            return new l(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final l[] newArray(int r12) {
            return new l[r12];
        }
    }

    public l() {
        ArrayList arrayList = new ArrayList(3);
        this.f6694a = arrayList;
        arrayList.add(null);
        arrayList.add(null);
        arrayList.add(null);
        this.f6696c = "all-beacons-region";
        this.f6695b = null;
    }

    public l(Parcel parcel) {
        this.f6696c = parcel.readString();
        this.f6695b = parcel.readString();
        int r02 = parcel.readInt();
        this.f6694a = new ArrayList(r02);
        for (int r12 = 0; r12 < r02; r12++) {
            String string = parcel.readString();
            if (string == null) {
                this.f6694a.add(null);
            } else {
                this.f6694a.add(h.o(string));
            }
        }
    }

    public l(String str, String str2, List list) {
        if (str2 != null && !f6693d.matcher(str2).matches()) {
            throw new IllegalArgumentException(androidx.browser.browseractions.a.a("Invalid mac address: '", str2, "' Must be 6 hex bytes separated by colons."));
        }
        this.f6694a = new ArrayList(list);
        this.f6696c = str;
        this.f6695b = str2;
        if (str == null) {
            throw new NullPointerException("uniqueId may not be null");
        }
    }

    public final h a(int r32) {
        ArrayList arrayList = this.f6694a;
        if (arrayList.size() > r32) {
            return (h) arrayList.get(r32);
        }
        return null;
    }

    public final boolean b(l lVar) {
        if (lVar.f6694a.size() != this.f6694a.size()) {
            return false;
        }
        for (int r02 = 0; r02 < lVar.f6694a.size(); r02++) {
            if (lVar.a(r02) == null && a(r02) != null) {
                return false;
            }
            if (lVar.a(r02) != null && a(r02) == null) {
                return false;
            }
            if ((lVar.a(r02) != null || a(r02) != null) && !lVar.a(r02).equals(a(r02))) {
                return false;
            }
        }
        return true;
    }

    public final boolean c(c cVar) {
        ArrayList arrayList = this.f6694a;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                String str = this.f6695b;
                return str == null || str.equalsIgnoreCase(cVar.f6622g);
            }
            h hVar = (h) arrayList.get(size);
            h hVar2 = size < cVar.f6617a.size() ? (h) cVar.f6617a.get(size) : null;
            if ((hVar2 == null && hVar != null) || (hVar2 != null && hVar != null && !hVar.equals(hVar2))) {
                break;
            }
        }
        return false;
    }

    @Deprecated
    public final Object clone() throws CloneNotSupportedException {
        ArrayList arrayList = this.f6694a;
        return new l(this.f6696c, this.f6695b, arrayList);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof l) {
            return ((l) obj).f6696c.equals(this.f6696c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f6696c.hashCode();
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        Iterator it = this.f6694a.iterator();
        int r32 = 1;
        while (it.hasNext()) {
            h hVar = (h) it.next();
            if (r32 > 1) {
                sb2.append(" ");
            }
            sb2.append("id");
            sb2.append(r32);
            sb2.append(": ");
            sb2.append(hVar == null ? "null" : hVar.toString());
            r32++;
        }
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r32) {
        parcel.writeString(this.f6696c);
        parcel.writeString(this.f6695b);
        ArrayList arrayList = this.f6694a;
        parcel.writeInt(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            h hVar = (h) it.next();
            parcel.writeString(hVar != null ? hVar.toString() : null);
        }
    }
}
