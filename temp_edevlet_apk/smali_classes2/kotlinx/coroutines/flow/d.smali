.class public Lkotlinx/coroutines/flow/d;
.super Lqc/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lqc/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final d:Lx9/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/p<",
            "Lpc/r<",
            "-TT;>;",
            "Lp9/d<",
            "-",
            "Ll9/m;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx9/p;Lp9/f;ILpc/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/p<",
            "-",
            "Lpc/r<",
            "-TT;>;-",
            "Lp9/d<",
            "-",
            "Ll9/m;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lp9/f;",
            "I",
            "Lpc/f;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Lqc/e;-><init>(Lp9/f;ILpc/f;)V

    iput-object p1, p0, Lkotlinx/coroutines/flow/d;->d:Lx9/p;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "block["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlinx/coroutines/flow/d;->d:Lx9/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lqc/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
