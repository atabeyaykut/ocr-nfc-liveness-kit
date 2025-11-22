.class public final Lpc/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/selects/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/selects/b<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lpc/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpc/u<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpc/u;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpc/u<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpc/t;->a:Lpc/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final z(Lkotlinx/coroutines/selects/c;Lx9/p;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/c<",
            "-TR;>;",
            "Lx9/p<",
            "Ljava/lang/Object;",
            "-",
            "Lp9/d<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpc/t;->a:Lpc/u;

    invoke-interface {v0}, Lpc/u;->k()Lkotlinx/coroutines/selects/b;

    move-result-object v0

    new-instance v1, Lpc/t$a;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lpc/t$a;-><init>(Lx9/p;Lp9/d;)V

    invoke-interface {v0, p1, v1}, Lkotlinx/coroutines/selects/b;->z(Lkotlinx/coroutines/selects/c;Lx9/p;)V

    return-void
.end method
