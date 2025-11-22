.class public abstract Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0003J\u000f\u0010\u0004\u001a\u0004\u0018\u00018\u0000H\u0016\u00a2\u0006\u0002\u0010\u0005J\u000b\u0010\u0006\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0005\u0082\u0001\u0002\u0007\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;",
        "T",
        "",
        "()V",
        "get",
        "()Ljava/lang/Object;",
        "getOrThrow",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;",
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

    invoke-direct {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;-><init>()V

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

    instance-of v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :cond_1
    new-instance v0, Lj7/p;

    invoke-direct {v0}, Lj7/p;-><init>()V

    throw v0
.end method
