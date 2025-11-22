package tr.gov.turkiye.edevlet.kapisi.data.barcode;

import androidx.room.util.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J1\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0018"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldModel;", "", "fieldName", "", "fieldQuery", "fieldRegex", "fieldRegexMessage", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getFieldName", "()Ljava/lang/String;", "getFieldQuery", "getFieldRegex", "getFieldRegexMessage", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class BarcodeVerifyFieldModel {

    @k(name = "fieldName")
    private final String fieldName;

    @k(name = "fieldQuery")
    private final String fieldQuery;

    @k(name = "fieldRegex")
    private final String fieldRegex;

    @k(name = "fieldRegexMessage")
    private final String fieldRegexMessage;

    public BarcodeVerifyFieldModel(String fieldName, String fieldQuery, String fieldRegex, String fieldRegexMessage) {
        h.f(fieldName, "fieldName");
        h.f(fieldQuery, "fieldQuery");
        h.f(fieldRegex, "fieldRegex");
        h.f(fieldRegexMessage, "fieldRegexMessage");
        this.fieldName = fieldName;
        this.fieldQuery = fieldQuery;
        this.fieldRegex = fieldRegex;
        this.fieldRegexMessage = fieldRegexMessage;
    }

    public static /* synthetic */ BarcodeVerifyFieldModel copy$default(BarcodeVerifyFieldModel barcodeVerifyFieldModel, String str, String str2, String str3, String str4, int r52, Object obj) {
        if ((r52 & 1) != 0) {
            str = barcodeVerifyFieldModel.fieldName;
        }
        if ((r52 & 2) != 0) {
            str2 = barcodeVerifyFieldModel.fieldQuery;
        }
        if ((r52 & 4) != 0) {
            str3 = barcodeVerifyFieldModel.fieldRegex;
        }
        if ((r52 & 8) != 0) {
            str4 = barcodeVerifyFieldModel.fieldRegexMessage;
        }
        return barcodeVerifyFieldModel.copy(str, str2, str3, str4);
    }

    /* renamed from: component1, reason: from getter */
    public final String getFieldName() {
        return this.fieldName;
    }

    /* renamed from: component2, reason: from getter */
    public final String getFieldQuery() {
        return this.fieldQuery;
    }

    /* renamed from: component3, reason: from getter */
    public final String getFieldRegex() {
        return this.fieldRegex;
    }

    /* renamed from: component4, reason: from getter */
    public final String getFieldRegexMessage() {
        return this.fieldRegexMessage;
    }

    public final BarcodeVerifyFieldModel copy(String fieldName, String fieldQuery, String fieldRegex, String fieldRegexMessage) {
        h.f(fieldName, "fieldName");
        h.f(fieldQuery, "fieldQuery");
        h.f(fieldRegex, "fieldRegex");
        h.f(fieldRegexMessage, "fieldRegexMessage");
        return new BarcodeVerifyFieldModel(fieldName, fieldQuery, fieldRegex, fieldRegexMessage);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BarcodeVerifyFieldModel)) {
            return false;
        }
        BarcodeVerifyFieldModel barcodeVerifyFieldModel = (BarcodeVerifyFieldModel) other;
        return h.a(this.fieldName, barcodeVerifyFieldModel.fieldName) && h.a(this.fieldQuery, barcodeVerifyFieldModel.fieldQuery) && h.a(this.fieldRegex, barcodeVerifyFieldModel.fieldRegex) && h.a(this.fieldRegexMessage, barcodeVerifyFieldModel.fieldRegexMessage);
    }

    public final String getFieldName() {
        return this.fieldName;
    }

    public final String getFieldQuery() {
        return this.fieldQuery;
    }

    public final String getFieldRegex() {
        return this.fieldRegex;
    }

    public final String getFieldRegexMessage() {
        return this.fieldRegexMessage;
    }

    public int hashCode() {
        return this.fieldRegexMessage.hashCode() + a.a(this.fieldRegex, a.a(this.fieldQuery, this.fieldName.hashCode() * 31, 31), 31);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("BarcodeVerifyFieldModel(fieldName=");
        sb2.append(this.fieldName);
        sb2.append(", fieldQuery=");
        sb2.append(this.fieldQuery);
        sb2.append(", fieldRegex=");
        sb2.append(this.fieldRegex);
        sb2.append(", fieldRegexMessage=");
        return android.support.v4.media.a.h(sb2, this.fieldRegexMessage, ')');
    }
}
