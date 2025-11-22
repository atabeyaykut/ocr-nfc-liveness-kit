.class public final Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0018\u0008\u0086\u0008\u0018\u00002\u00020\u0001B3\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u0011\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u00c6\u0003J;\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0010\u0008\u0002\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u00c6\u0001J\u0013\u0010\u001e\u001a\u00020\u00032\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010 \u001a\u00020\u0005H\u00d6\u0001J\t\u0010!\u001a\u00020\nH\u00d6\u0001R\u001e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0002\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R \u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\""
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;",
        "",
        "isSuccess",
        "",
        "login",
        "",
        "smsCodeVerifyData",
        "Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;",
        "errorMessage",
        "",
        "",
        "(ZILtr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;Ljava/util/List;)V",
        "getErrorMessage",
        "()Ljava/util/List;",
        "()Z",
        "setSuccess",
        "(Z)V",
        "getLogin",
        "()I",
        "setLogin",
        "(I)V",
        "getSmsCodeVerifyData",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;",
        "setSmsCodeVerifyData",
        "(Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final errorMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll8/k;
        name = "messageArr"
    .end annotation
.end field

.field private isSuccess:Z
    .annotation runtime Ll8/k;
        name = "return"
    .end annotation
.end field

.field private login:I
    .annotation runtime Ll8/k;
        name = "login"
    .end annotation
.end field

.field private smsCodeVerifyData:Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;
    .annotation runtime Ll8/k;
        name = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZILtr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->isSuccess:Z

    iput p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->login:I

    iput-object p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->smsCodeVerifyData:Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;

    iput-object p4, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->errorMessage:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ZILtr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;Ljava/util/List;ILkotlin/jvm/internal/d;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;-><init>(ZILtr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;ZILtr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;Ljava/util/List;ILjava/lang/Object;)Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-boolean p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->isSuccess:Z

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->login:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->smsCodeVerifyData:Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->errorMessage:Ljava/util/List;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->copy(ZILtr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;Ljava/util/List;)Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->isSuccess:Z

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->login:I

    return v0
.end method

.method public final component3()Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->smsCodeVerifyData:Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->errorMessage:Ljava/util/List;

    return-object v0
.end method

.method public final copy(ZILtr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;Ljava/util/List;)Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;"
        }
    .end annotation

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;

    invoke-direct {v0, p1, p2, p3, p4}, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;-><init>(ZILtr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;

    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->isSuccess:Z

    iget-boolean v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->isSuccess:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->login:I

    iget v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->login:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->smsCodeVerifyData:Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->smsCodeVerifyData:Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->errorMessage:Ljava/util/List;

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->errorMessage:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getErrorMessage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->errorMessage:Ljava/util/List;

    return-object v0
.end method

.method public final getLogin()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->login:I

    return v0
.end method

.method public final getSmsCodeVerifyData()Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->smsCodeVerifyData:Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->isSuccess:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->login:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->smsCodeVerifyData:Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->errorMessage:Ljava/util/List;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->isSuccess:Z

    return v0
.end method

.method public final setLogin(I)V
    .locals 0

    iput p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->login:I

    return-void
.end method

.method public final setSmsCodeVerifyData(Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->smsCodeVerifyData:Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;

    return-void
.end method

.method public final setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->isSuccess:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SMSVerificationModel(isSuccess="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->isSuccess:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", login="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->login:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", smsCodeVerifyData="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->smsCodeVerifyData:Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", errorMessage="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;->errorMessage:Ljava/util/List;

    .line 39
    .line 40
    const/16 v2, 0x29

    .line 41
    .line 42
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/a;->j(Ljava/lang/StringBuilder;Ljava/util/List;C)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method
