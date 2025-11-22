package gd;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class c implements Parcelable, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public ArrayList f6617a;

    /* renamed from: b, reason: collision with root package name */
    public ArrayList f6618b;

    /* renamed from: c, reason: collision with root package name */
    public List<Long> f6619c;

    /* renamed from: d, reason: collision with root package name */
    public Double f6620d;

    /* renamed from: e, reason: collision with root package name */
    public int f6621e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public String f6622g;

    /* renamed from: h, reason: collision with root package name */
    public int f6623h;

    /* renamed from: j, reason: collision with root package name */
    public int f6624j;

    /* renamed from: k, reason: collision with root package name */
    public Double f6625k;

    /* renamed from: l, reason: collision with root package name */
    public int f6626l;

    /* renamed from: m, reason: collision with root package name */
    public int f6627m;

    /* renamed from: n, reason: collision with root package name */
    public int f6628n;

    /* renamed from: p, reason: collision with root package name */
    public final byte[] f6629p;

    /* renamed from: q, reason: collision with root package name */
    public String f6630q;

    /* renamed from: r, reason: collision with root package name */
    public String f6631r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f6632s;

    /* renamed from: t, reason: collision with root package name */
    public long f6633t;

    /* renamed from: v, reason: collision with root package name */
    public long f6634v;
    public byte[] w;

    /* renamed from: x, reason: collision with root package name */
    public static final List<Long> f6614x = Collections.unmodifiableList(new ArrayList());

    /* renamed from: y, reason: collision with root package name */
    public static final List<h> f6615y = Collections.unmodifiableList(new ArrayList());

    /* renamed from: z, reason: collision with root package name */
    public static boolean f6616z = false;
    public static hd.c A = null;

    @Deprecated
    public static final Parcelable.Creator<c> CREATOR = new a();

    public class a implements Parcelable.Creator<c> {
        @Override // android.os.Parcelable.Creator
        public final c createFromParcel(Parcel parcel) {
            return new c(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final c[] newArray(int r12) {
            return new c[r12];
        }
    }

    public c() {
        this.f6623h = 0;
        this.f6624j = 0;
        this.f6625k = null;
        this.f6628n = -1;
        this.f6629p = new byte[0];
        this.f6632s = false;
        this.f6633t = 0L;
        this.f6634v = 0L;
        this.w = new byte[0];
        this.f6617a = new ArrayList(1);
        this.f6618b = new ArrayList(1);
        this.f6619c = new ArrayList(1);
    }

    @Deprecated
    public c(Parcel parcel) {
        this.f6623h = 0;
        this.f6624j = 0;
        this.f6625k = null;
        this.f6628n = -1;
        this.f6629p = new byte[0];
        this.f6632s = false;
        this.f6633t = 0L;
        this.f6634v = 0L;
        this.w = new byte[0];
        int r22 = parcel.readInt();
        this.f6617a = new ArrayList(r22);
        for (int r32 = 0; r32 < r22; r32++) {
            this.f6617a.add(h.o(parcel.readString()));
        }
        this.f6620d = Double.valueOf(parcel.readDouble());
        this.f6621e = parcel.readInt();
        this.f = parcel.readInt();
        this.f6622g = parcel.readString();
        this.f6626l = parcel.readInt();
        this.f6628n = parcel.readInt();
        if (parcel.readBoolean()) {
            this.f6629p = new byte[16];
            for (int r33 = 0; r33 < 16; r33++) {
                this.f6629p[r33] = parcel.readByte();
            }
        }
        int r23 = parcel.readInt();
        this.f6618b = new ArrayList(r23);
        for (int r34 = 0; r34 < r23; r34++) {
            this.f6618b.add(Long.valueOf(parcel.readLong()));
        }
        int r24 = parcel.readInt();
        this.f6619c = new ArrayList(r24);
        for (int r35 = 0; r35 < r24; r35++) {
            this.f6619c.add(Long.valueOf(parcel.readLong()));
        }
        this.f6627m = parcel.readInt();
        this.f6630q = parcel.readString();
        this.f6631r = parcel.readString();
        this.f6632s = parcel.readByte() != 0;
        this.f6625k = (Double) parcel.readValue(null);
        this.f6623h = parcel.readInt();
        this.f6624j = parcel.readInt();
        this.f6633t = parcel.readLong();
        this.f6634v = parcel.readLong();
        e eVar = e.f6637x;
        id.b.f7422a = id.d.f7425b;
        id.b.f7423b = true;
        byte[] bArr = new byte[62];
        try {
            parcel.readByteArray(bArr);
        } catch (RuntimeException unused) {
            for (int r02 = 0; r02 < 62; r02++) {
                try {
                    byte b10 = parcel.readByte();
                    bArr[b10] = b10;
                } catch (RuntimeException unused2) {
                }
            }
        }
        this.w = bArr;
    }

    public final double a() {
        double dA;
        if (this.f6620d == null) {
            double dDoubleValue = this.f6621e;
            Double d10 = this.f6625k;
            if (d10 != null) {
                dDoubleValue = d10.doubleValue();
            } else {
                id.b.a("Beacon", "Not using running average RSSI because it is null", new Object[0]);
            }
            int r22 = this.f;
            hd.c cVar = A;
            if (cVar != null) {
                dA = cVar.a(r22, dDoubleValue);
            } else {
                id.b.c("Beacon", "Distance calculator not set.  Distance will bet set to -1", new Object[0]);
                dA = -1.0d;
            }
            this.f6620d = Double.valueOf(dA);
        }
        return this.f6620d.doubleValue();
    }

    public final StringBuilder b() {
        StringBuilder sb2 = new StringBuilder();
        Iterator it = this.f6617a.iterator();
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
        if (this.f6631r != null) {
            sb2.append(" type " + this.f6631r);
        }
        return sb2;
    }

    @Override // android.os.Parcelable
    @Deprecated
    public int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (!this.f6617a.equals(cVar.f6617a)) {
            return false;
        }
        if (f6616z) {
            return this.f6622g.equals(cVar.f6622g);
        }
        return true;
    }

    public final int hashCode() {
        StringBuilder sbB = b();
        if (f6616z) {
            sbB.append(this.f6622g);
        }
        return sbB.toString().hashCode();
    }

    public final String toString() {
        return b().toString();
    }

    @Override // android.os.Parcelable
    @Deprecated
    public void writeToParcel(Parcel parcel, int r6) {
        parcel.writeInt(this.f6617a.size());
        Iterator it = this.f6617a.iterator();
        while (it.hasNext()) {
            h hVar = (h) it.next();
            parcel.writeString(hVar == null ? null : hVar.toString());
        }
        parcel.writeDouble(a());
        parcel.writeInt(this.f6621e);
        parcel.writeInt(this.f);
        parcel.writeString(this.f6622g);
        parcel.writeInt(this.f6626l);
        parcel.writeInt(this.f6628n);
        byte[] bArr = this.f6629p;
        parcel.writeBoolean(bArr.length != 0);
        if (bArr.length != 0) {
            for (int r02 = 0; r02 < 16; r02++) {
                parcel.writeByte(bArr[r02]);
            }
        }
        parcel.writeInt(this.f6618b.size());
        Iterator it2 = this.f6618b.iterator();
        while (it2.hasNext()) {
            parcel.writeLong(((Long) it2.next()).longValue());
        }
        parcel.writeInt(this.f6619c.size());
        Iterator<Long> it3 = this.f6619c.iterator();
        while (it3.hasNext()) {
            parcel.writeLong(it3.next().longValue());
        }
        parcel.writeInt(this.f6627m);
        parcel.writeString(this.f6630q);
        parcel.writeString(this.f6631r);
        parcel.writeByte(this.f6632s ? (byte) 1 : (byte) 0);
        parcel.writeValue(this.f6625k);
        parcel.writeInt(this.f6623h);
        parcel.writeInt(this.f6624j);
        parcel.writeLong(this.f6633t);
        parcel.writeLong(this.f6634v);
        byte[] bArr2 = this.w;
        int length = bArr2.length;
        if (length > 62) {
            length = 62;
        }
        parcel.writeByteArray(bArr2, 0, length);
        while (length < 62) {
            parcel.writeByte((byte) 0);
            length++;
        }
    }
}
