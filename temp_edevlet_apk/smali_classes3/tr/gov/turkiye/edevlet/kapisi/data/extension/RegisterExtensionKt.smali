.class public final Ltr/gov/turkiye/edevlet/kapisi/data/extension/RegisterExtensionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "completeRequest",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/notification/RegisterModel;",
        "data_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/notification/RegisterModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/data/notification/RegisterModel;",
            ")",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/notification/RegisterModel;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/notification/RegisterModel;->getLogin()I

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    invoke-direct {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/notification/RegisterModel;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;-><init>(Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method
