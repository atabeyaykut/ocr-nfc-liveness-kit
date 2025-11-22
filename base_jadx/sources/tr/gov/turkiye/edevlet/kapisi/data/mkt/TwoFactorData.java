package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import androidx.browser.browseractions.b;
import kotlin.Metadata;
import kotlin.jvm.internal.d;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0015\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\nHÆ\u0003JA\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\u0013\u0010\u001b\u001a\u00020\n2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001e\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0011¨\u0006\u001f"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;", "", "resultCode", "", "resultText", "", "resultMessage", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;", "twoFactorWarningText", "twoFactorEnabled", "", "(ILjava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;Ljava/lang/String;Z)V", "getResultCode", "()I", "getResultMessage", "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;", "getResultText", "()Ljava/lang/String;", "getTwoFactorEnabled", "()Z", "getTwoFactorWarningText", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class TwoFactorData {

    @k(name = "resultCode")
    private final int resultCode;

    @k(name = "resultMessage")
    private final ResultMessage resultMessage;

    @k(name = "resultText")
    private final String resultText;

    @k(name = "twoFactorEnabled")
    private final boolean twoFactorEnabled;

    @k(name = "twoFactorWarningText")
    private final String twoFactorWarningText;

    public TwoFactorData(int r12, String str, ResultMessage resultMessage, String str2, boolean z10) {
        this.resultCode = r12;
        this.resultText = str;
        this.resultMessage = resultMessage;
        this.twoFactorWarningText = str2;
        this.twoFactorEnabled = z10;
    }

    public /* synthetic */ TwoFactorData(int r72, String str, ResultMessage resultMessage, String str2, boolean z10, int r12, d dVar) {
        this((r12 & 1) != 0 ? 1 : r72, str, resultMessage, str2, z10);
    }

    public static /* synthetic */ TwoFactorData copy$default(TwoFactorData twoFactorData, int r42, String str, ResultMessage resultMessage, String str2, boolean z10, int r92, Object obj) {
        if ((r92 & 1) != 0) {
            r42 = twoFactorData.resultCode;
        }
        if ((r92 & 2) != 0) {
            str = twoFactorData.resultText;
        }
        String str3 = str;
        if ((r92 & 4) != 0) {
            resultMessage = twoFactorData.resultMessage;
        }
        ResultMessage resultMessage2 = resultMessage;
        if ((r92 & 8) != 0) {
            str2 = twoFactorData.twoFactorWarningText;
        }
        String str4 = str2;
        if ((r92 & 16) != 0) {
            z10 = twoFactorData.twoFactorEnabled;
        }
        return twoFactorData.copy(r42, str3, resultMessage2, str4, z10);
    }

    /* renamed from: component1, reason: from getter */
    public final int getResultCode() {
        return this.resultCode;
    }

    /* renamed from: component2, reason: from getter */
    public final String getResultText() {
        return this.resultText;
    }

    /* renamed from: component3, reason: from getter */
    public final ResultMessage getResultMessage() {
        return this.resultMessage;
    }

    /* renamed from: component4, reason: from getter */
    public final String getTwoFactorWarningText() {
        return this.twoFactorWarningText;
    }

    /* renamed from: component5, reason: from getter */
    public final boolean getTwoFactorEnabled() {
        return this.twoFactorEnabled;
    }

    public final TwoFactorData copy(int resultCode, String resultText, ResultMessage resultMessage, String twoFactorWarningText, boolean twoFactorEnabled) {
        return new TwoFactorData(resultCode, resultText, resultMessage, twoFactorWarningText, twoFactorEnabled);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TwoFactorData)) {
            return false;
        }
        TwoFactorData twoFactorData = (TwoFactorData) other;
        return this.resultCode == twoFactorData.resultCode && h.a(this.resultText, twoFactorData.resultText) && h.a(this.resultMessage, twoFactorData.resultMessage) && h.a(this.twoFactorWarningText, twoFactorData.twoFactorWarningText) && this.twoFactorEnabled == twoFactorData.twoFactorEnabled;
    }

    public final int getResultCode() {
        return this.resultCode;
    }

    public final ResultMessage getResultMessage() {
        return this.resultMessage;
    }

    public final String getResultText() {
        return this.resultText;
    }

    public final boolean getTwoFactorEnabled() {
        return this.twoFactorEnabled;
    }

    public final String getTwoFactorWarningText() {
        return this.twoFactorWarningText;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int r02 = this.resultCode * 31;
        String str = this.resultText;
        int r03 = (r02 + (str == null ? 0 : str.hashCode())) * 31;
        ResultMessage resultMessage = this.resultMessage;
        int r04 = (r03 + (resultMessage == null ? 0 : resultMessage.hashCode())) * 31;
        String str2 = this.twoFactorWarningText;
        int r05 = (r04 + (str2 != null ? str2.hashCode() : 0)) * 31;
        boolean z10 = this.twoFactorEnabled;
        int r12 = z10;
        if (z10 != 0) {
            r12 = 1;
        }
        return r05 + r12;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("TwoFactorData(resultCode=");
        sb2.append(this.resultCode);
        sb2.append(", resultText=");
        sb2.append(this.resultText);
        sb2.append(", resultMessage=");
        sb2.append(this.resultMessage);
        sb2.append(", twoFactorWarningText=");
        sb2.append(this.twoFactorWarningText);
        sb2.append(", twoFactorEnabled=");
        return b.f(sb2, this.twoFactorEnabled, ')');
    }
}
