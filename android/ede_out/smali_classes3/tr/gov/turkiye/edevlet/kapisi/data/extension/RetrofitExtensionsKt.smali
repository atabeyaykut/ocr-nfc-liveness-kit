.class public final Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u001a\u001d\u0010\u0002\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u0001\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u001a\u0016\u0010\u0005\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u0001\u001a:\u0010\u000b\u001a\u00020\t\"\u0006\u0008\u0000\u0010\u0000\u0018\u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u00062\u001a\u0008\u0004\u0010\n\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u0012\u0004\u0012\u00020\t0\u0007H\u0086\u0008\u00f8\u0001\u0000\u001a!\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\"\u0006\u0008\u0000\u0010\u0000\u0018\u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u0006H\u0086\u0008\u001a)\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u0001H\u0086@\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000e\u001aS\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0008\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u000f*\u0008\u0012\u0004\u0012\u00028\u00000\u00012\"\u0010\u0013\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0010H\u0086@\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\r\u0010\u0014\u0082\u0002\u000b\n\u0005\u0008\u009920\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0015"
    }
    d2 = {
        "T",
        "Lud/c0;",
        "bodyOrThrow",
        "(Lud/c0;)Ljava/lang/Object;",
        "Lud/k;",
        "toException",
        "Lud/b;",
        "Lkotlin/Function1;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;",
        "Ll9/m;",
        "result",
        "enqueue",
        "executeForResult",
        "toResult",
        "(Lud/c0;Lp9/d;)Ljava/lang/Object;",
        "E",
        "Lkotlin/Function2;",
        "Lp9/d;",
        "",
        "mapper",
        "(Lud/c0;Lx9/p;Lp9/d;)Ljava/lang/Object;",
        "data_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method public static final bodyOrThrow(Lud/c0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lud/c0<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lud/c0;->a:Lrc/b0;

    .line 7
    .line 8
    invoke-virtual {v0}, Lrc/b0;->c()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lud/c0;->b:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-static {p0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    new-instance v0, Lud/k;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lud/k;-><init>(Lud/c0;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public static final enqueue(Lud/b;Lx9/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lud/b<",
            "TT;>;",
            "Lx9/l<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "TT;>;",
            "Ll9/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "result"

    .line 7
    .line 8
    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lkotlin/jvm/internal/h;->m()V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    throw p0
.end method

.method public static final synthetic executeForResult(Lud/b;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lud/b<",
            "TT;>;)",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p0}, Lud/b;->execute()Lud/c0;

    move-result-object p0

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    const-string v1, "response"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static final toException(Lud/c0;)Lud/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lud/c0<",
            "TT;>;)",
            "Lud/k;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lud/k;

    invoke-direct {v0, p0}, Lud/k;-><init>(Lud/c0;)V

    return-object v0
.end method

.method public static final toResult(Lud/c0;Lp9/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lud/c0<",
            "TT;>;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt$toResult$2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt$toResult$2;-><init>(Lp9/d;)V

    invoke-static {p0, v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->toResult(Lud/c0;Lx9/p;Lp9/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final toResult(Lud/c0;Lx9/p;Lp9/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lud/c0<",
            "TT;>;",
            "Lx9/p<",
            "-TT;-",
            "Lp9/d<",
            "-TE;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "TE;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt$toResult$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt$toResult$3;

    iget v1, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt$toResult$3;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt$toResult$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt$toResult$3;

    invoke-direct {v0, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt$toResult$3;-><init>(Lp9/d;)V

    :goto_0
    iget-object p2, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt$toResult$3;->result:Ljava/lang/Object;

    sget-object v1, Lq9/a;->a:Lq9/a;

    iget v2, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt$toResult$3;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 1
    :try_start_1
    iget-object p2, p0, Lud/c0;->a:Lrc/b0;

    .line 2
    invoke-virtual {p2}, Lrc/b0;->c()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 3
    invoke-static {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    move-result-object p0

    iput v3, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt$toResult$3;->label:I

    invoke-interface {p1, p0, v0}, Lx9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    new-instance p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-direct {p0, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    invoke-static {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->toException(Lud/c0;)Lud/k;

    move-result-object p0

    invoke-direct {p1, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    invoke-direct {p1, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    move-object p0, p1

    :goto_3
    return-object p0
.end method
