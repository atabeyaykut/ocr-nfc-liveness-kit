package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0019\b\u0086\b\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u000eJ\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\u0011\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0005HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0007HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\rHÆ\u0003JS\u0010!\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\rHÆ\u0001J\u0013\u0010\"\u001a\u00020\u00032\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020\u0007HÖ\u0001J\t\u0010%\u001a\u00020\tHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0018\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001a¨\u0006&"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRData;", "", "asyncFinished", "", "disclaimerMessages", "", "resultCode", "", "resultText", "", "resultMessage", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;", "generateQrObject", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRObject;", "(ZLjava/util/List;ILjava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRObject;)V", "getAsyncFinished", "()Z", "getDisclaimerMessages", "()Ljava/util/List;", "getGenerateQrObject", "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRObject;", "getResultCode", "()I", "getResultMessage", "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;", "getResultText", "()Ljava/lang/String;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class GenerateQRData {

    @k(name = "asyncFinished")
    private final boolean asyncFinished;

    @k(name = "disclaimerMessages")
    private final List<Object> disclaimerMessages;

    @k(name = "generateQrObject")
    private final GenerateQRObject generateQrObject;

    @k(name = "resultCode")
    private final int resultCode;

    @k(name = "resultMessage")
    private final ResultMessage resultMessage;

    @k(name = "resultText")
    private final String resultText;

    public GenerateQRData(boolean z10, List<? extends Object> list, int r32, String str, ResultMessage resultMessage, GenerateQRObject generateQRObject) {
        this.asyncFinished = z10;
        this.disclaimerMessages = list;
        this.resultCode = r32;
        this.resultText = str;
        this.resultMessage = resultMessage;
        this.generateQrObject = generateQRObject;
    }

    public static /* synthetic */ GenerateQRData copy$default(GenerateQRData generateQRData, boolean z10, List list, int r72, String str, ResultMessage resultMessage, GenerateQRObject generateQRObject, int r11, Object obj) {
        if ((r11 & 1) != 0) {
            z10 = generateQRData.asyncFinished;
        }
        if ((r11 & 2) != 0) {
            list = generateQRData.disclaimerMessages;
        }
        List list2 = list;
        if ((r11 & 4) != 0) {
            r72 = generateQRData.resultCode;
        }
        int r02 = r72;
        if ((r11 & 8) != 0) {
            str = generateQRData.resultText;
        }
        String str2 = str;
        if ((r11 & 16) != 0) {
            resultMessage = generateQRData.resultMessage;
        }
        ResultMessage resultMessage2 = resultMessage;
        if ((r11 & 32) != 0) {
            generateQRObject = generateQRData.generateQrObject;
        }
        return generateQRData.copy(z10, list2, r02, str2, resultMessage2, generateQRObject);
    }

    /* renamed from: component1, reason: from getter */
    public final boolean getAsyncFinished() {
        return this.asyncFinished;
    }

    public final List<Object> component2() {
        return this.disclaimerMessages;
    }

    /* renamed from: component3, reason: from getter */
    public final int getResultCode() {
        return this.resultCode;
    }

    /* renamed from: component4, reason: from getter */
    public final String getResultText() {
        return this.resultText;
    }

    /* renamed from: component5, reason: from getter */
    public final ResultMessage getResultMessage() {
        return this.resultMessage;
    }

    /* renamed from: component6, reason: from getter */
    public final GenerateQRObject getGenerateQrObject() {
        return this.generateQrObject;
    }

    public final GenerateQRData copy(boolean asyncFinished, List<? extends Object> disclaimerMessages, int resultCode, String resultText, ResultMessage resultMessage, GenerateQRObject generateQrObject) {
        return new GenerateQRData(asyncFinished, disclaimerMessages, resultCode, resultText, resultMessage, generateQrObject);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GenerateQRData)) {
            return false;
        }
        GenerateQRData generateQRData = (GenerateQRData) other;
        return this.asyncFinished == generateQRData.asyncFinished && h.a(this.disclaimerMessages, generateQRData.disclaimerMessages) && this.resultCode == generateQRData.resultCode && h.a(this.resultText, generateQRData.resultText) && h.a(this.resultMessage, generateQRData.resultMessage) && h.a(this.generateQrObject, generateQRData.generateQrObject);
    }

    public final boolean getAsyncFinished() {
        return this.asyncFinished;
    }

    public final List<Object> getDisclaimerMessages() {
        return this.disclaimerMessages;
    }

    public final GenerateQRObject getGenerateQrObject() {
        return this.generateQrObject;
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    public int hashCode() {
        boolean z10 = this.asyncFinished;
        ?? r02 = z10;
        if (z10) {
            r02 = 1;
        }
        int r03 = r02 * 31;
        List<Object> list = this.disclaimerMessages;
        int r04 = (((r03 + (list == null ? 0 : list.hashCode())) * 31) + this.resultCode) * 31;
        String str = this.resultText;
        int r05 = (r04 + (str == null ? 0 : str.hashCode())) * 31;
        ResultMessage resultMessage = this.resultMessage;
        int r06 = (r05 + (resultMessage == null ? 0 : resultMessage.hashCode())) * 31;
        GenerateQRObject generateQRObject = this.generateQrObject;
        return r06 + (generateQRObject != null ? generateQRObject.hashCode() : 0);
    }

    public String toString() {
        return "GenerateQRData(asyncFinished=" + this.asyncFinished + ", disclaimerMessages=" + this.disclaimerMessages + ", resultCode=" + this.resultCode + ", resultText=" + this.resultText + ", resultMessage=" + this.resultMessage + ", generateQrObject=" + this.generateQrObject + ')';
    }
}
