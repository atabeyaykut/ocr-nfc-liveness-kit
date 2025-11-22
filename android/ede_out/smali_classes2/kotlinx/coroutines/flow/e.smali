.class public final Lkotlinx/coroutines/flow/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lkotlinx/coroutines/flow/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/f<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lx9/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/p<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/f;)V
    .locals 2

    sget-object v0, Lkotlinx/coroutines/flow/k;->a:Lkotlinx/coroutines/flow/k$b;

    sget-object v1, Lkotlinx/coroutines/flow/k;->b:Lkotlinx/coroutines/flow/k$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/flow/e;->a:Lkotlinx/coroutines/flow/f;

    iput-object v0, p0, Lkotlinx/coroutines/flow/e;->b:Lx9/l;

    iput-object v1, p0, Lkotlinx/coroutines/flow/e;->c:Lx9/p;

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/flow/g;Lp9/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/g<",
            "-TT;>;",
            "Lp9/d<",
            "-",
            "Ll9/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lkotlin/jvm/internal/v;

    invoke-direct {v0}, Lkotlin/jvm/internal/v;-><init>()V

    sget-object v1, La2/b;->k:Lkotlinx/coroutines/internal/u;

    iput-object v1, v0, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    new-instance v1, Lkotlinx/coroutines/flow/e$a;

    invoke-direct {v1, p0, v0, p1}, Lkotlinx/coroutines/flow/e$a;-><init>(Lkotlinx/coroutines/flow/e;Lkotlin/jvm/internal/v;Lkotlinx/coroutines/flow/g;)V

    iget-object p1, p0, Lkotlinx/coroutines/flow/e;->a:Lkotlinx/coroutines/flow/f;

    invoke-interface {p1, v1, p2}, Lkotlinx/coroutines/flow/f;->a(Lkotlinx/coroutines/flow/g;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lq9/a;->a:Lq9/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method
