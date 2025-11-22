.class public final Lpc/a$g;
.super Lkotlinx/coroutines/internal/j$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/j$d<",
        "Lpc/x;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/j$d;-><init>(Lkotlinx/coroutines/internal/i;)V

    return-void
.end method


# virtual methods
.method public final c(Lkotlinx/coroutines/internal/j;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Lpc/k;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of p1, p1, Lpc/x;

    if-nez p1, :cond_1

    sget-object p1, Lc5/y;->m:Lkotlinx/coroutines/internal/u;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final h(Lkotlinx/coroutines/internal/j$c;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p1, Lkotlinx/coroutines/internal/j$c;->a:Lkotlinx/coroutines/internal/j;

    check-cast v0, Lpc/x;

    invoke-virtual {v0, p1}, Lpc/x;->M(Lkotlinx/coroutines/internal/j$c;)Lkotlinx/coroutines/internal/u;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/clearcut/d0;->b:Lkotlinx/coroutines/internal/u;

    return-object p1

    :cond_0
    sget-object v0, Lb8/f;->e:Lkotlinx/coroutines/internal/u;

    if-ne p1, v0, :cond_1

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final i(Lkotlinx/coroutines/internal/j;)V
    .locals 0

    check-cast p1, Lpc/x;

    invoke-virtual {p1}, Lpc/x;->N()V

    return-void
.end method
