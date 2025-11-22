.class public final Lud/j$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lud/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lud/j$a;->n0(Lud/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lud/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lud/d;

.field public final synthetic b:Lud/j$a;


# direct methods
.method public constructor <init>(Lud/j$a;Lud/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lud/j$a$a;->b:Lud/j$a;

    iput-object p2, p0, Lud/j$a$a;->a:Lud/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lud/b;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lud/b<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lud/j$a$a;->b:Lud/j$a;

    iget-object p1, p1, Lud/j$a;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lud/i;

    iget-object v1, p0, Lud/j$a$a;->a:Lud/d;

    invoke-direct {v0, p0, v1, p2}, Lud/i;-><init>(Lud/j$a$a;Lud/d;Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onResponse(Lud/b;Lud/c0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lud/b<",
            "TT;>;",
            "Lud/c0<",
            "TT;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lud/j$a$a;->b:Lud/j$a;

    iget-object p1, p1, Lud/j$a;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lud/h;

    iget-object v1, p0, Lud/j$a$a;->a:Lud/d;

    invoke-direct {v0, p0, v1, p2}, Lud/h;-><init>(Lud/j$a$a;Lud/d;Lud/c0;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
