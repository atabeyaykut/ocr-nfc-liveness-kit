.class public final Lqc/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/d;
.implements Lr9/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lp9/d<",
        "TT;>;",
        "Lr9/d;"
    }
.end annotation


# instance fields
.field public final a:Lp9/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp9/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lp9/f;


# direct methods
.method public constructor <init>(Lp9/d;Lp9/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d<",
            "-TT;>;",
            "Lp9/f;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqc/q;->a:Lp9/d;

    iput-object p2, p0, Lqc/q;->b:Lp9/f;

    return-void
.end method


# virtual methods
.method public final getCallerFrame()Lr9/d;
    .locals 2

    iget-object v0, p0, Lqc/q;->a:Lp9/d;

    instance-of v1, v0, Lr9/d;

    if-eqz v1, :cond_0

    check-cast v0, Lr9/d;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getContext()Lp9/f;
    .locals 1

    iget-object v0, p0, Lqc/q;->b:Lp9/f;

    return-object v0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lqc/q;->a:Lp9/d;

    invoke-interface {v0, p1}, Lp9/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
