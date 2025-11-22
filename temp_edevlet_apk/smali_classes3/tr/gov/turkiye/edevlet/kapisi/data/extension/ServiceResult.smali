.class public abstract Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0003J\u000f\u0010\u0004\u001a\u0004\u0018\u00018\u0000H\u0016\u00a2\u0006\u0002\u0010\u0005J\u000b\u0010\u0006\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0005\u0082\u0001\u0006\u0007\u0008\t\n\u000b\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;",
        "T",
        "",
        "()V",
        "get",
        "()Ljava/lang/Object;",
        "getOrThrow",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkError;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/QueueResult;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/d;)V
    .locals 0

    invoke-direct {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getOrThrow()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    instance-of v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/QueueResult;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/QueueResult;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/QueueResult;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    instance-of v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    if-nez v0, :cond_5

    instance-of v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;

    if-nez v0, :cond_4

    instance-of v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    if-nez v0, :cond_3

    instance-of v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkError;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkError;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkError;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :cond_2
    new-instance v0, Lj7/p;

    invoke-direct {v0}, Lj7/p;-><init>()V

    throw v0

    :cond_3
    move-object v0, p0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :cond_4
    move-object v0, p0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :cond_5
    move-object v0, p0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method
