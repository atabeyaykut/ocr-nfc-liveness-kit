.class public final Lr0/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/f<",
        "Lr0/u<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/flow/f;

.field public final synthetic b:Lda/l;

.field public final synthetic c:Lda/l;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/f;Lkotlin/jvm/internal/r;Lkotlin/jvm/internal/r;)V
    .locals 0

    iput-object p1, p0, Lr0/n0;->a:Lkotlinx/coroutines/flow/f;

    iput-object p2, p0, Lr0/n0;->b:Lda/l;

    iput-object p3, p0, Lr0/n0;->c:Lda/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/flow/g;Lp9/d;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lr0/n0$a;

    invoke-direct {v0, p1, p0}, Lr0/n0$a;-><init>(Lkotlinx/coroutines/flow/g;Lr0/n0;)V

    iget-object p1, p0, Lr0/n0;->a:Lkotlinx/coroutines/flow/f;

    invoke-interface {p1, v0, p2}, Lkotlinx/coroutines/flow/f;->a(Lkotlinx/coroutines/flow/g;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lq9/a;->a:Lq9/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method
