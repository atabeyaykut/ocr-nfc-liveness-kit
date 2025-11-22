.class public final Lkotlinx/coroutines/flow/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/f<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/flow/f;

.field public final synthetic b:Lx9/p;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/m;Lr0/f0;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/q;->a:Lkotlinx/coroutines/flow/f;

    iput-object p2, p0, Lkotlinx/coroutines/flow/q;->b:Lx9/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/flow/g;Lp9/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/g<",
            "Ljava/lang/Object;",
            ">;",
            "Lp9/d<",
            "-",
            "Ll9/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lkotlin/jvm/internal/t;

    invoke-direct {v0}, Lkotlin/jvm/internal/t;-><init>()V

    new-instance v1, Lkotlinx/coroutines/flow/r;

    iget-object v2, p0, Lkotlinx/coroutines/flow/q;->b:Lx9/p;

    invoke-direct {v1, v0, p1, v2}, Lkotlinx/coroutines/flow/r;-><init>(Lkotlin/jvm/internal/t;Lkotlinx/coroutines/flow/g;Lx9/p;)V

    iget-object p1, p0, Lkotlinx/coroutines/flow/q;->a:Lkotlinx/coroutines/flow/f;

    invoke-interface {p1, v1, p2}, Lkotlinx/coroutines/flow/f;->a(Lkotlinx/coroutines/flow/g;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lq9/a;->a:Lq9/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method
