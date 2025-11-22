package tr.gov.turkiye.edevlet.kapisi.data.barcode;

import android.support.v4.media.a;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J#\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldData;", "", "barcode", "", "fields", "", "Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldModel;", "(Ljava/lang/String;Ljava/util/List;)V", "getBarcode", "()Ljava/lang/String;", "getFields", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class BarcodeVerifyFieldData {

    @k(name = "barkod")
    private final String barcode;

    @k(name = "fields")
    private final List<BarcodeVerifyFieldModel> fields;

    public BarcodeVerifyFieldData(String barcode, List<BarcodeVerifyFieldModel> fields) {
        h.f(barcode, "barcode");
        h.f(fields, "fields");
        this.barcode = barcode;
        this.fields = fields;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BarcodeVerifyFieldData copy$default(BarcodeVerifyFieldData barcodeVerifyFieldData, String str, List list, int r32, Object obj) {
        if ((r32 & 1) != 0) {
            str = barcodeVerifyFieldData.barcode;
        }
        if ((r32 & 2) != 0) {
            list = barcodeVerifyFieldData.fields;
        }
        return barcodeVerifyFieldData.copy(str, list);
    }

    /* renamed from: component1, reason: from getter */
    public final String getBarcode() {
        return this.barcode;
    }

    public final List<BarcodeVerifyFieldModel> component2() {
        return this.fields;
    }

    public final BarcodeVerifyFieldData copy(String barcode, List<BarcodeVerifyFieldModel> fields) {
        h.f(barcode, "barcode");
        h.f(fields, "fields");
        return new BarcodeVerifyFieldData(barcode, fields);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BarcodeVerifyFieldData)) {
            return false;
        }
        BarcodeVerifyFieldData barcodeVerifyFieldData = (BarcodeVerifyFieldData) other;
        return h.a(this.barcode, barcodeVerifyFieldData.barcode) && h.a(this.fields, barcodeVerifyFieldData.fields);
    }

    public final String getBarcode() {
        return this.barcode;
    }

    public final List<BarcodeVerifyFieldModel> getFields() {
        return this.fields;
    }

    public int hashCode() {
        return this.fields.hashCode() + (this.barcode.hashCode() * 31);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("BarcodeVerifyFieldData(barcode=");
        sb2.append(this.barcode);
        sb2.append(", fields=");
        return a.j(sb2, this.fields, ')');
    }
}
