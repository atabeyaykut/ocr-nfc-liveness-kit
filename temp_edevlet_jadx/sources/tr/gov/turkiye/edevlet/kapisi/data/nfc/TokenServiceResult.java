package tr.gov.turkiye.edevlet.kapisi.data.nfc;

import androidx.room.util.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J1\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001R\u001e\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001e\u0010\u0005\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR\u001e\u0010\u0006\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\t\"\u0004\b\u000f\u0010\u000bR\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000b¨\u0006\u001d"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/nfc/TokenServiceResult;", "", "token", "", "challenge", "resultCode", "resultMessage", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getChallenge", "()Ljava/lang/String;", "setChallenge", "(Ljava/lang/String;)V", "getResultCode", "setResultCode", "getResultMessage", "setResultMessage", "getToken", "setToken", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class TokenServiceResult {

    @k(name = "challenge")
    private String challenge;

    @k(name = "sonucKodu")
    private String resultCode;

    @k(name = "sonucAciklamasi")
    private String resultMessage;

    @k(name = "token")
    private String token;

    public TokenServiceResult(String token, String challenge, String resultCode, String resultMessage) {
        h.f(token, "token");
        h.f(challenge, "challenge");
        h.f(resultCode, "resultCode");
        h.f(resultMessage, "resultMessage");
        this.token = token;
        this.challenge = challenge;
        this.resultCode = resultCode;
        this.resultMessage = resultMessage;
    }

    public static /* synthetic */ TokenServiceResult copy$default(TokenServiceResult tokenServiceResult, String str, String str2, String str3, String str4, int r52, Object obj) {
        if ((r52 & 1) != 0) {
            str = tokenServiceResult.token;
        }
        if ((r52 & 2) != 0) {
            str2 = tokenServiceResult.challenge;
        }
        if ((r52 & 4) != 0) {
            str3 = tokenServiceResult.resultCode;
        }
        if ((r52 & 8) != 0) {
            str4 = tokenServiceResult.resultMessage;
        }
        return tokenServiceResult.copy(str, str2, str3, str4);
    }

    /* renamed from: component1, reason: from getter */
    public final String getToken() {
        return this.token;
    }

    /* renamed from: component2, reason: from getter */
    public final String getChallenge() {
        return this.challenge;
    }

    /* renamed from: component3, reason: from getter */
    public final String getResultCode() {
        return this.resultCode;
    }

    /* renamed from: component4, reason: from getter */
    public final String getResultMessage() {
        return this.resultMessage;
    }

    public final TokenServiceResult copy(String token, String challenge, String resultCode, String resultMessage) {
        h.f(token, "token");
        h.f(challenge, "challenge");
        h.f(resultCode, "resultCode");
        h.f(resultMessage, "resultMessage");
        return new TokenServiceResult(token, challenge, resultCode, resultMessage);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TokenServiceResult)) {
            return false;
        }
        TokenServiceResult tokenServiceResult = (TokenServiceResult) other;
        return h.a(this.token, tokenServiceResult.token) && h.a(this.challenge, tokenServiceResult.challenge) && h.a(this.resultCode, tokenServiceResult.resultCode) && h.a(this.resultMessage, tokenServiceResult.resultMessage);
    }

    public final String getChallenge() {
        return this.challenge;
    }

    public final String getResultCode() {
        return this.resultCode;
    }

    public final String getResultMessage() {
        return this.resultMessage;
    }

    public final String getToken() {
        return this.token;
    }

    public int hashCode() {
        return this.resultMessage.hashCode() + a.a(this.resultCode, a.a(this.challenge, this.token.hashCode() * 31, 31), 31);
    }

    public final void setChallenge(String str) {
        h.f(str, "<set-?>");
        this.challenge = str;
    }

    public final void setResultCode(String str) {
        h.f(str, "<set-?>");
        this.resultCode = str;
    }

    public final void setResultMessage(String str) {
        h.f(str, "<set-?>");
        this.resultMessage = str;
    }

    public final void setToken(String str) {
        h.f(str, "<set-?>");
        this.token = str;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("TokenServiceResult(token=");
        sb2.append(this.token);
        sb2.append(", challenge=");
        sb2.append(this.challenge);
        sb2.append(", resultCode=");
        sb2.append(this.resultCode);
        sb2.append(", resultMessage=");
        return android.support.v4.media.a.h(sb2, this.resultMessage, ')');
    }
}
